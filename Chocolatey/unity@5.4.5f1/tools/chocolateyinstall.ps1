$ErrorActionPreference = 'Stop';

$packageName        = 'unity.5.4.5f1'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://netstorage.unity3d.com/unity/68943b6c8c42/Windows64EditorInstaller/UnitySetup64-5.4.5f1.exe'
$checksum64         = '77011be9cdccfe493b3b7aec90a338c2a910a4fa51516dc6fedb600e332489ba'

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
