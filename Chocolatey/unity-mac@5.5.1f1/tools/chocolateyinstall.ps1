$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.5.5.1f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.5.1f1.exe'
$checksum64     = '11cac3cebe3c10a3ed037296709587065b202f0403b980892192228b65ce3ad0'

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
