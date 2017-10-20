$ErrorActionPreference = 'Stop';

$packageName        = 'unity.2017.1.1f1'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://netstorage.unity3d.com/unity/5d30cf096e79/Windows64EditorInstaller/UnitySetup64-2017.1.1f1.exe'
$checksum64         = '346eabd936a25e09e43b96f1e515de64c75198a47a32c802b5e788abb5932f85'

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
