$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@5.5.2f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/3829d7f588f3/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.5.2f1.exe'
$checksum64     = '9c9e36fa52f3d7534cabdb13905d814ffbd8827a3c5e92454d20d88efa6859c0'

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
