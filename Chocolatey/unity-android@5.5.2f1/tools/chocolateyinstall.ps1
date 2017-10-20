$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android@5.5.2f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/3829d7f588f3/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.5.2f1.exe'
$checksum64     = '0132e06986d37c60009591f394c4b79eb4414e17a31a1105ee8939a9fa0165d8'

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
