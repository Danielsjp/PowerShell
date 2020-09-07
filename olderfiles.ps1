# Define la antiguedad mayor de 7 días.

$age = (get-date).AddDays(-7)
# Get all the files in the folder and subfolders | foreach file
Get-ChildItem Z:\Exportacions -Recurse -Directory | foreach{
    # if creationtime is 'lt' (less) than 7 days
    if ($_.LastWriteTime -lt $age){
        Write-Output "Older than 7 days - $($_.name)"
        # remove the item
        Remove-Item $_.fullname -Force -Verbose
        $strData = "File to delete: " + $_.Name + " " + $_.LastWriteTime 
        $strData | out-file -Append Z:\VideosEsborrats.log
    }else{
        # $strData2 = "Less than 7 days old - $($_.name)"
        # $strData2 | out-file -Append Z:\VideosEsborrats.log
        # Do stuff
    }
}
