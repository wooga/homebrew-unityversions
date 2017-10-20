$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android@5.5.5f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/d875e6967482/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.5.5f1.exe'
$checksum64     = 'e70525e6114f7777c44e3365181d0b077d98947f762995bee4e7e9ff688ae623'

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
