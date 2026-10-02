# ---------------------------------------------------------------
# Recompila el libro (MyST) y lo publica en GitHub Pages.
#
#   Uso:   .\publicar.ps1            (solo recompila y publica)
#          .\publicar.ps1 -Ejecutar  (ademas re-ejecuta el notebook)
#
# No requiere activar conda.
# ---------------------------------------------------------------
param([switch]$Ejecutar, [string]$Mensaje = "")

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

$ENV_DIR = "$env:USERPROFILE\miniconda3\envs\ml_venv"
$SCRIPTS = "$ENV_DIR\Scripts"
if (-not (Test-Path "$ENV_DIR\python.exe")) {
    Write-Host "ERROR: no se encuentra el entorno ml_venv" -ForegroundColor Red; exit 1
}
$env:PATH = "$ENV_DIR;$SCRIPTS;$env:PATH"
$env:MPLBACKEND = "Agg"
# prefijo del repositorio en GitHub Pages (imprescindible para las imagenes)
$env:BASE_URL = "/Proyecto_Magdalena_ML"

if ($Ejecutar) {
    Write-Host "`n[1/4] Re-ejecutando el notebook (unos minutos)..." -ForegroundColor Cyan
    & "$SCRIPTS\jupyter.exe" nbconvert --to notebook --execute --inplace `
        --ExecutePreprocessor.kernel_name=ml_venv `
        --ExecutePreprocessor.timeout=1800 proyecto.ipynb
} else {
    Write-Host "`n[1/4] Sin re-ejecutar (usa -Ejecutar si cambiaste codigo)" -ForegroundColor DarkGray
}

Write-Host "[2/4] Compilando el libro con MyST..." -ForegroundColor Cyan
if (Test-Path "$PSScriptRoot\_build\html") {
    Remove-Item -LiteralPath "$PSScriptRoot\_build\html" -Recurse -Force
}
& "$SCRIPTS\myst.exe" build --html

# el informe es la pagina raiz del libro
$informe = "$PSScriptRoot\_build\html\index.html"
if (-not (Test-Path $informe)) {
    $informe = "$PSScriptRoot\_build\html\proyecto\index.html"
}
if (-not (Test-Path $informe)) {
    Write-Host "ERROR: la compilacion no genero el informe." -ForegroundColor Red; exit 1
}
# verificacion: las imagenes deben llevar el prefijo del repositorio
$html = Get-Content $informe -Raw
$ok  = ([regex]::Matches($html, 'src="/Proyecto_Magdalena_ML/build/')).Count
$mal = ([regex]::Matches($html, 'Program Files')).Count
Write-Host "      imagenes con ruta correcta: $ok   rutas rotas: $mal" -ForegroundColor DarkGray
if ($mal -gt 0 -or $ok -eq 0) {
    Write-Host "ERROR: las rutas de las imagenes quedaron mal. No se publica." -ForegroundColor Red; exit 1
}

Write-Host "[3/4] Guardando cambios en el repositorio..." -ForegroundColor Cyan
git add -A
if (git status --porcelain) {
    if ($Mensaje) {
        $msg = $Mensaje
    } elseif ([Environment]::UserInteractive -and -not $env:CI) {
        try { $msg = Read-Host "    Describe el cambio (Enter = mensaje generico)" }
        catch { $msg = "" }
    } else { $msg = "" }
    if (-not $msg) { $msg = "Actualiza el informe" }
    git commit -m $msg
    git push origin main
} else {
    Write-Host "    (sin cambios que guardar)" -ForegroundColor DarkGray
}

Write-Host "[4/4] Publicando el sitio..." -ForegroundColor Cyan
& "$SCRIPTS\ghp-import.exe" -n -p -f _build/html

Write-Host "`nListo. En 1-2 minutos estara actualizado en:" -ForegroundColor Green
Write-Host "  https://qclemente.github.io/Proyecto_Magdalena_ML/`n" -ForegroundColor Green
