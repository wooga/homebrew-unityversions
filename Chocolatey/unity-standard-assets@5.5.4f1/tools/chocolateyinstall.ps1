$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@5.5.4f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/8ffd0efd98b1/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.5.4f1.exe'
$checksum64     = 'd64ca4529b92f8b77af16044b7e607215a0b875c92a73399b7d13c0a4df8370a'

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
