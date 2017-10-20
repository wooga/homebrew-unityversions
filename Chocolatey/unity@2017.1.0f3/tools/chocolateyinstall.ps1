$ErrorActionPreference = 'Stop';

$packageName        = 'unity.2017.1.0f3'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://netstorage.unity3d.com/unity/472613c02cf7/Windows64EditorInstaller/UnitySetup64-2017.1.0f3.exe'
$checksum64         = 'f5b61edb7b1f434d52726b4a0601a883a601db500aff9b5a56b28068be1f7bbc'

$args = '/S'

$pp = Get-PackageParameters
if ($pp.InstallationPath) {
    $args += " /D=$($pp.InstallationPath)"
    Write-Host "Param: Installing to $($pp.InstallationPath)"
}

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  softwareName   = 'Unity'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = $args
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
