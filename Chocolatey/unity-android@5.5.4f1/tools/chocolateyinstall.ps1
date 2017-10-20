$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.5.5.4f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/8ffd0efd98b1/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.5.4f1.exe'
$checksum64     = '5aaaa2f9c5c1580bd66cf5ba9bdbdc1d321f6b694b2bbfe22e0426b1a956bf46'

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
