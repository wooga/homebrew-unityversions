$ErrorActionPreference = 'Stop';

$packageName        = 'unity.5.5.3f1'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://netstorage.unity3d.com/unity/4d2f809fd6f3/Windows64EditorInstaller/UnitySetup64-5.5.3f1.exe'
$checksum64         = '713d18d9dd44d82042a6a902dbe93d0aa01c507f429955e1d6b41a4f5416b231'

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
