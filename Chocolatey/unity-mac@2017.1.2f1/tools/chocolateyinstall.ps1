$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.2017.1.2f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/cc85bf6a8a04/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-2017.1.2f1.exe'
$checksum64     = '0833eaab0bc8ad2866a65f210c470b1c217ad4cc55a862e4d06b4acaade6fe1d'

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
