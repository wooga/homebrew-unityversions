$ErrorActionPreference = 'Stop';

$packageName    = 'unity-standard-assets@2017.1.0f3'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'http://netstorage.unity3d.com/unity/472613c02cf7/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-2017.1.0f3.exe'
$checksum64     = '22c2b8589ce6903666a8e07c8fbfee83074d3428433fcf0786993dba08fec3e8'

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
