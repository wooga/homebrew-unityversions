$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets.5.6.4f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/ac7086b8d112/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.6.4f1.exe'
$checksum64     = '11838033660e71bf4747c3b351f0cf61eb56826990ed2556f1da06a3293cbc0e'

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
