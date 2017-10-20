$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@5.4.5f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/68943b6c8c42/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.4.5f1.exe'
$checksum64     = '9950510cfeb90b00bb1c8fe9cf0b241a065aef9699c34a07659c3196fad790f3'

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
