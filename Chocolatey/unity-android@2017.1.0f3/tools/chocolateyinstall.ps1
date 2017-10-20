$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.2017.1.0f3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/472613c02cf7/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2017.1.0f3.exe'
$checksum64     = 'b55997ac591ecd340bab647cefc3949e747b38853c27035742abdf66a83534d1'

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
