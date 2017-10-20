$ErrorActionPreference = 'Stop';

$packageName        = 'unity@5.5.2f1'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64              = 'http://netstorage.unity3d.com/unity/3829d7f588f3/Windows64EditorInstaller/UnitySetup64-5.5.2f1.exe'
$checksum64         = '742a30bbd55439d61616dafb7a80f30e7eee7b284ffc03d9f88fd38ac799ef2b'

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
