$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.5.5.1f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.5.1f1.exe'
$checksum64     = 'e5d5e5748c5ecf07c619cdd671f25da5798fbb9717611bd3f925e6f6cd71e65d'

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
