$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux.5.5.0f3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/38b4efef76f0/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-5.5.0f3.exe'
$checksum64     = '1e3b732162edb42ae45db702e9833d67a58ae5132f2541e78028a1425c3c83df'

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
