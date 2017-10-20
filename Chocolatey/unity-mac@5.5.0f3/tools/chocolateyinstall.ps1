$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.5.5.0f3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/38b4efef76f0/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.5.0f3.exe'
$checksum64     = '12b64a9bb4b637e9df682704e763844aa426c22151e38a41c5c3ac0e102df382'

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
