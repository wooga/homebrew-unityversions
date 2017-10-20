$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets.2017.1.1f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/5d30cf096e79/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-2017.1.1f1.exe'
$checksum64     = '11be0f5f13442270b7c687a16e568bee13bfc29ba34041c6ec482ba81cf613d9'

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
