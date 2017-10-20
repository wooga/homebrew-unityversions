$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.5.6.0f3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/497a0f351392/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.6.0f3.exe'
$checksum64     = '245f13ef76767809174105434972278bf261344ba6aa86d08e33c1c8dd2c0659'

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
