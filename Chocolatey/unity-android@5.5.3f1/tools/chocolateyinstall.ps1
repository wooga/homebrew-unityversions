$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.5.5.3f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/4d2f809fd6f3/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.5.3f1.exe'
$checksum64     = 'e11ca964c86fd08741c32b9beb45e32f0a0726911cbea136731ef49508e1c000'

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
