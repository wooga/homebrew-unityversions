$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.5.5.4f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/8ffd0efd98b1/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.5.4f1.exe'
$checksum64     = 'd543619468544ec30e92a1e84c5888f97182f71b07285dc9cbc4bc9a04b23421'

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
