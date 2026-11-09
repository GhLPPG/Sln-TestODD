
param(
    [Parameter(Mandatory = $true)]
    [string]$FilePath,

    [Parameter(Mandatory = $false)]
    [string]$CommitMessage = "docs: update FURDS documentation"
)

$ErrorActionPreference = "Stop"

# 1. Verificar que estamos dentro de un repositorio Git
$RepoRoot = git rev-parse --show-toplevel

if ($LASTEXITCODE -ne 0 -or !$RepoRoot) {
    throw "No se encontró un repositorio Git."
}

Set-Location $RepoRoot

# 2. Verificar que no existan cambios previamente staged
git diff --cached --quiet

if ($LASTEXITCODE -ne 0) {
    throw "Existen cambios staged previamente. No se realizará el commit."
}

# 3. Validar el documento
$FullPath = [System.IO.Path]::GetFullPath(
    (Join-Path $RepoRoot $FilePath)
)

if (!(Test-Path -LiteralPath $FullPath -PathType Leaf)) {
    throw "El documento no existe: $FilePath"
}

$RelativePath = [System.IO.Path]::GetRelativePath(
    $RepoRoot,
    $FullPath
).Replace("\", "/")

if ($RelativePath.StartsWith("../") -or
    [System.IO.Path]::IsPathRooted($RelativePath)) {
    throw "El documento debe estar dentro del repositorio."
}

# 4. Verificar rama actual
$Branch = git branch --show-current

if ($LASTEXITCODE -ne 0 -or !$Branch) {
    throw "No existe una rama activa. No se publicará."
}

# 5. Agregar exclusivamente el documento modificado
git add -- $RelativePath

if ($LASTEXITCODE -ne 0) {
    throw "Error al ejecutar git add."
}

# 6. Verificar si realmente hay cambios
git diff --cached --quiet

if ($LASTEXITCODE -eq 0) {
    Write-Host "No hay cambios para publicar."
    exit 0
}

# 7. Crear commit
git commit -m $CommitMessage

if ($LASTEXITCODE -ne 0) {
    throw "Error al crear el commit."
}

# 8. Publicar en GitHub
git push -u origin $Branch

if ($LASTEXITCODE -ne 0) {
    throw "Error al publicar en GitHub. El commit permanece local."
}

Write-Host "Documento publicado correctamente: $RelativePath"
Write-Host "Rama: $Branch"
