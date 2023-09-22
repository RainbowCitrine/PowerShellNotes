$vsCodePath = "C:\Users\gossk\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk";

if(Test-Path "C:\Users\gossk\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk")
{
    Start-Process -FilePath $vsCodePath; 
}
else 
{
    Write-Host "Visual Studio code is not installed on this computer"; 
}