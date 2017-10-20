$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.5.4.5f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/68943b6c8c42/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.4.5f1.exe'
$checksum64     = '9b5a79ead96eb28c7bcc1ca304a26758eb01569cd085444dc0f8f4b882d89d90'

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
