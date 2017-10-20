$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android@5.6.3f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/d3101c3b8468/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.6.3f1.exe'
$checksum64     = 'c2b37534f8e283fbbab8506fa2f410b104e910c316fa71fc4d9b8441abab0f5d'

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
