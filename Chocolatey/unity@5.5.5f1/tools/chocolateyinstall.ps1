$ErrorActionPreference = 'Stop';

$packageName        = 'unity.5.5.5f1'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://netstorage.unity3d.com/unity/d875e6967482/Windows64EditorInstaller/UnitySetup64-5.5.5f1.exe'
$checksum64         = '11118339e1d266a3d9db9e446b541a9feb91f17646fe2315a5bbea54f796e099'

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
