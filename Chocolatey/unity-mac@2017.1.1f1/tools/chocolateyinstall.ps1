$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.2017.1.1f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/5d30cf096e79/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-2017.1.1f1.exe'
$checksum64     = 'd015ff6681608c93efda8a7bebc24716c9253fe50df9a4028292337f51e9358c'

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
