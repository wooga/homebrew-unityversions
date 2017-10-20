$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@5.5.1f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/88d00a7498cd/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.5.1f1.exe'
$checksum64     = '4840a961dc62f8c7aced1753049a2e12e56c82f6d6e850413743710f10e66a52'

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
