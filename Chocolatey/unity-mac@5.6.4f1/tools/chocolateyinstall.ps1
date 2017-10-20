$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.5.6.4f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/ac7086b8d112/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.6.4f1.exe'
$checksum64     = '51a2cad66fa65abf8e6df427cc3cb8f479257f52f1efcbfcc53453c65c7d2d60'

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
