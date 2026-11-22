$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'msi'
  url64bit       = 'https://raincleaner.eu/download/2.23.0/RainCleaner-Setup-2.23.0.msi'
  checksum64     = 'A5929E0453FEC8C1F8D09D436D2ACFDBF91ACF9B300C22D35D675D16101C4A6B'
  checksumType64 = 'sha256'
  softwareName   = 'Rain Cleaner*'
  silentArgs     = "/qn /norestart /l*v `"$($env:TEMP)\$($env:ChocolateyPackageName).$($env:ChocolateyPackageVersion).MsiInstall.log`""
  validExitCodes = @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
