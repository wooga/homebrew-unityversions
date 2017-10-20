$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@5.5.3f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/4d2f809fd6f3/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.5.3f1.exe'
$checksum64     = '22e42ee52f3798219464053d36d2d04740c663910617190c5e3228a15eb654c7'

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
