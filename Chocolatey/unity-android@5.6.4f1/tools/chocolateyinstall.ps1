$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android@5.6.4f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/ac7086b8d112/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.6.4f1.exe'
$checksum64     = '814e2eed4ebbedc19bc86543c4c5d16f6a5fdc477fb3e9f3fc7a9a3d0b719cc3'

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
