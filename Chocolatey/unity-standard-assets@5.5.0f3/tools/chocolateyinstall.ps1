$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@5.5.0f3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/38b4efef76f0/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.5.0f3.exe'
$checksum64     = 'c77681ae9612f956351ebd19a9cdac3990e02b0b6be566b3d8ec69c5f714fe15'

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
