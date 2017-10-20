$ErrorActionPreference = 'Stop';

$packageName        = 'unity.2017.1.2f1'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://netstorage.unity3d.com/unity/cc85bf6a8a04/Windows64EditorInstaller/UnitySetup64-2017.1.2f1.exe'
$checksum64         = '8a53ae21d989c59c195ac048d8b3ca1944428aabe7b4d648e232759754853da7'

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
