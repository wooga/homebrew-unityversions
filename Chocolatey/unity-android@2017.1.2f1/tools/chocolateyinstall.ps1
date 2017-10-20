$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android.2017.1.2f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/cc85bf6a8a04/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2017.1.2f1.exe'
$checksum64     = 'c8bee6ffda64092899ade6e115841b923661c0632fab3da27796ff928f6924a7'

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
