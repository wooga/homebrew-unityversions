$ErrorActionPreference = 'Stop';

$packageName        = 'unity.5.6.2f1'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://netstorage.unity3d.com/unity/a2913c821e27/Windows64EditorInstaller/UnitySetup64-5.6.2f1.exe'
$checksum64         = '7090fa9d8b7ecb1dc5eade2e514ffb64cc8e5c732c28ae7140602b39ea7f3ade'

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
