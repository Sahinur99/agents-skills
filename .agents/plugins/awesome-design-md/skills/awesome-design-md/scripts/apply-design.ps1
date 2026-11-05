[CmdletBinding()]
param(
    [Parameter(Position=0)]
    [string]$Brand,
    [string]$TargetDir = (Get-Location).Path,
    [switch]$List
)

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$SkillRoot = Split-Path -Parent $ScriptDir
$DesignMdDir = Join-Path $SkillRoot "references\design-md"

if (-not (Test-Path $DesignMdDir)) {
    $DesignMdDir = Join-Path $SkillRoot "design-md"
}

if ($List -or [string]::IsNullOrWhiteSpace($Brand)) {
    Write-Host "`nAvailable Design Systems in awesome-design-md (84 total):`n" -ForegroundColor Cyan
    $brands = Get-ChildItem -Path $DesignMdDir -Directory | Select-Object -ExpandProperty Name
    $brands | Format-Wide -Column 4 | Out-String | Write-Host
    Write-Host "Usage: .\apply-design.ps1 -Brand <brand-name> [-TargetDir <path>]`n" -ForegroundColor Yellow
    if ([string]::IsNullOrWhiteSpace($Brand)) {
        return
    }
}

$MatchedDir = Join-Path $DesignMdDir $Brand
if (-not (Test-Path $MatchedDir)) {
    $candidates = Get-ChildItem -Path $DesignMdDir -Directory | Where-Object { $_.Name -like "*$Brand*" }
    if ($candidates.Count -eq 1) {
        $MatchedDir = $candidates[0].FullName
        $Brand = $candidates[0].Name
    } elseif ($candidates.Count -gt 1) {
        Write-Warning "Multiple matches found for '$Brand': $(($candidates.Name) -join ', '). Please specify exactly."
        return
    } else {
        Write-Error "Brand '$Brand' not found. Run with -List to inspect all available brands."
        return
    }
}

$SourceFile = Join-Path $MatchedDir "DESIGN.md"
if (-not (Test-Path $SourceFile)) {
    Write-Error "DESIGN.md not found in $MatchedDir"
    return
}

$Destination = Join-Path $TargetDir "DESIGN.md"
Copy-Item -Path $SourceFile -Destination $Destination -Force
Write-Host "[OK] Successfully applied '$Brand' DESIGN.md to: $Destination" -ForegroundColor Green
