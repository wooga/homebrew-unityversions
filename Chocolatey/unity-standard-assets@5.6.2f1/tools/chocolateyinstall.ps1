$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets.5.6.2f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/a2913c821e27/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.6.2f1.exe'
$checksum64     = 'c66f528919418f4d56261599b4d005ca90bdbf34ff1122546608c5c424b56f63'

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
