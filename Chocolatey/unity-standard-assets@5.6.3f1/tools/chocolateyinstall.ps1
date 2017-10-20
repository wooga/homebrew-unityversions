$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets.5.6.3f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/d3101c3b8468/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.6.3f1.exe'
$checksum64     = 'bf5c617726d9207d7c356ab355beab347c0be0ebd110dfb64074fcfb730dc2f8'

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
