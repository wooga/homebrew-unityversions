$ErrorActionPreference = 'Stop';

$packageName        = 'unity.5.6.1f1'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://netstorage.unity3d.com/unity/2860b30f0b54/Windows64EditorInstaller/UnitySetup64-5.6.1f1.exe'
$checksum64         = '293a73a76b7a776d3a2b668bacaff47f24cfdbb3ff527e80ef5caaaa3f517737'

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
