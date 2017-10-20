$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.5.6.2f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/a2913c821e27/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.6.2f1.exe'
$checksum64     = 'cfc9d0f44b21d5ec15667fba226820997b249e1be6bcf4f38d2fe211a83c398c'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
