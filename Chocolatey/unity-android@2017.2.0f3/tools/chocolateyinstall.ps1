$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android@2017.2.0f3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/46dda1414e51/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2017.2.0f3.exe'
$checksum64     = 'ae406384a16dd6612e68460b263218ddc54b3e392900deef49e25e28ce1f96d5'

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
