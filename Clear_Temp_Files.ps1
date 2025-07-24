##### Windows CleanUp Script By wuddy #####

$ObjShell = New-Object -ComObject Shell.Application
$ObjFolder = $ObjShell.NameSpace(0xA)
$WinTemp = "C:\Windows\Temp\*"

Set-Location "C:\Windows\Temp"
Remove-Item * -Recurse -Force -ErrorAction SilentlyContinue

Set-Location "C:\Windows\Prefetch"
Remove-Item * -Recurse -Force -ErrorAction SilentlyContinue

Set-Location "C:\Documents and Settings"
Remove-Item ".\*\Local Settings\temp\*" -Recurse -Force -ErrorAction SilentlyContinue

Set-Location "C:\Users"
Remove-Item ".\*\AppData\Local\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
