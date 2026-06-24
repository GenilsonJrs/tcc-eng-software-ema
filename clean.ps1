# Remove os arquivos gerados pela compilacao do LaTeX.
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $root
docker compose run --rm latex make clean
Write-Host "Artefatos removidos." -ForegroundColor Green
