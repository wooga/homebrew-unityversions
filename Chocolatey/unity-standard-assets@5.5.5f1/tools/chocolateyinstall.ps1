$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets.5.5.5f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/d875e6967482/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.5.5f1.exe'
$checksum64     = '120169a314821ea33d87e9d28fb1465bd7f90d7c9dabaaf145754bc7027948af'

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
