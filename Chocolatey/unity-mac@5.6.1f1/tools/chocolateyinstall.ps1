$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac@5.6.1f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/2860b30f0b54/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.6.1f1.exe'
$checksum64     = 'b6c2fc4bfcb6f7e6463c20f61f68ea7957c4d472d7990e35a0791e557697d9e3'

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
