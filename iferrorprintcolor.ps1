$a = "<style>BODY{background-color:green;}</style>"
$skull = Get-Service | Select-Object Status, Name, DisplayName | ConvertTo-HTML -head $a | Out-File C:\Scripts\Test.htm
if ( $? = True) { $skull }
Invoke-Expression C:\Scripts\Test.htm
