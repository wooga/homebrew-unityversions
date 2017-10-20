$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@5.6.1f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/2860b30f0b54/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.6.1f1.exe'
$checksum64     = '405fa2cc28499f00774352a5ceb8cad7984598538addcd1a1ba39bd71f0a27e8'

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
