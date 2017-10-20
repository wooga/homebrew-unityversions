$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac.5.6.0f3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/497a0f351392/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.6.0f3.exe'
$checksum64     = '41e94abf0fe6332a23793066261d37e3fb58beb19f9e882697421177cfeb1e98'

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
