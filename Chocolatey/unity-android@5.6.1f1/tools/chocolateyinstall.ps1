$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android@5.6.1f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/2860b30f0b54/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.6.1f1.exe'
$checksum64     = '5f804242b614e7567f6776a6bd34df070284c12d8b0d835c8638b356b4fa31ea'

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
