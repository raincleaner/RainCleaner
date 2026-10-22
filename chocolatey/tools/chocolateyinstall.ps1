$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'msi'
  url64bit       = 'https://raincleaner.eu/download/2.16.0/RainCleaner-Setup-2.16.0.msi'
  checksum64     = '763351F3919DED02224DCD69FF01EBA88E0580F4DAD2513D0310AFB34C893126'
  checksumType64 = 'sha256'
  softwareName   = 'Rain Cleaner*'
  silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($env:ChocolateyPackageName).$($env:ChocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
