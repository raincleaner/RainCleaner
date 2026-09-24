$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'msi'
  url64bit       = 'https://raincleaner.eu/download/2.8.0/RainCleaner-Setup-2.8.0.msi'
  checksum64     = 'D4136DB346CF06E51A1FE946293E55E9401E2FA1DCAE5274E624ACAECD3805EE'
  checksumType64 = 'sha256'
  softwareName   = 'Rain Cleaner*'
  silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($env:ChocolateyPackageName).$($env:ChocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
