$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac@5.5.5f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/d875e6967482/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.5.5f1.exe'
$checksum64     = 'b34d5bf37e6b3aa090db40198e62c81891951593a60bea338d00f274580cdd5b'

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
