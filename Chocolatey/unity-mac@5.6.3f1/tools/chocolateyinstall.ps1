$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac@5.6.3f1'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/d3101c3b8468/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.6.3f1.exe'
$checksum64     = '4d542ceca5b5da53c87d08229098ee5f43acf79360ea3fbdc657a61c8c0000fc'

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
