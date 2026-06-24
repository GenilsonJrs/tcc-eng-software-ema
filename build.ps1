# Gera o PDF do TCC usando o container Docker (latexmk + pdflatex).
# Saida: latex/tcc.pdf
#
# Uso:
#   ./build.ps1            # compila
#   ./build.ps1 -Open      # compila e abre o PDF
#   ./build.ps1 -Clean     # limpa artefatos antes de compilar
param(
    [switch]$Open,
    [switch]$Clean
)
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $root

if ($Clean) {
    Write-Host "Limpando artefatos..." -ForegroundColor Cyan
    docker compose run --rm latex make clean
}

Write-Host "Compilando o TCC..." -ForegroundColor Cyan
docker compose run --rm latex make
if ($LASTEXITCODE -ne 0) {
    Write-Host "Falha na compilacao. Veja latex/tcc.log para detalhes." -ForegroundColor Red
    exit $LASTEXITCODE
}

$pdf = Join-Path $root 'latex\tcc.pdf'
if (Test-Path $pdf) {
    Write-Host "PDF gerado: $pdf" -ForegroundColor Green
    if ($Open) { Start-Process $pdf }
} else {
    Write-Host "PDF nao encontrado apos a compilacao." -ForegroundColor Red
    exit 1
}
