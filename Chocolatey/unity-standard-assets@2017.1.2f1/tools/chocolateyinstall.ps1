$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets.2017.1.2f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/cc85bf6a8a04/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-2017.1.2f1.exe'
$checksum64     = '59bcba954dc45e9e9d2e38860787396ddb0ce8bfc0c729da13552857857a7643'

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
