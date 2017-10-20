$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.2017.1.0f3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/472613c02cf7/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-2017.1.0f3.exe'
$checksum64     = '5eee294d04685e6fb0b81b28750a6c70784e5ea06d3dd40395dccfbc2acbc336'

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
