$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac@2017.2.0f3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/46dda1414e51/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-2017.2.0f3.exe'
$checksum64     = 'a62c7848a462e12f36750c1b1a37fe241a5e5a6e58b274fef7d3e081d9669b86'

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
