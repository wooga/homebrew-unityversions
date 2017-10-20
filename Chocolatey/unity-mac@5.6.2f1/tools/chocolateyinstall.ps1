$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.5.6.2f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/a2913c821e27/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.6.2f1.exe'
$checksum64     = 'ba769ba4f5bfdb6b1ad38b5ef5a5724869fd064a2c65a62c623c9e24adf05abb'

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
