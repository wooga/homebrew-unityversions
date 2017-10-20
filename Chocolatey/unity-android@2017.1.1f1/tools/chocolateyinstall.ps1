$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android@2017.1.1f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/5d30cf096e79/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2017.1.1f1.exe'
$checksum64     = '77e06b1ad6dd437fd1755d1be5053d2f57e871dd7991bd470986f4f053c06fcb'

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
