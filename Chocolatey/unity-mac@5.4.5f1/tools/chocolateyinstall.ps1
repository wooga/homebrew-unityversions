$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac@5.4.5f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/68943b6c8c42/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.4.5f1.exe'
$checksum64     = '44a83baf13b0b270c5272fc5446ad2971190fae355b85e84444d817cdf723a45'

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
