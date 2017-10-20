$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android@5.5.0f3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/38b4efef76f0/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.5.0f3.exe'
$checksum64     = 'e919a3cf0b3866a2f1b80918acd1d8b0a016aba847ec830cfba3be4f41666701'

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
