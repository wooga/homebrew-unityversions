$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac@5.5.3f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/4d2f809fd6f3/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.5.3f1.exe'
$checksum64     = '7cc3f9983c0de89b459c2e4f920bc2f5f74c62a0e05196fe54e6bd819f41b432'

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
