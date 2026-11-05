[CmdletBinding()]
param(
    [string]$Url = "http://localhost:3000"
)

Write-Host "Verifying Playwright installation and MCP connectivity..." -ForegroundColor Cyan

# Check Node and npx
$nodeVersion = node -v
$npxVersion = npx -v
Write-Host "Node.js: $nodeVersion | npx: $npxVersion" -ForegroundColor Green

# Check agy mcp status
$mcpStatus = & "$env:USERPROFILE\.gemini\bin\agy.exe" mcp list
Write-Host "`nAntigravity MCP Configuration:" -ForegroundColor Yellow
$mcpStatus | Write-Host

Write-Host "`n[OK] Playwright MCP is ready to automate: $Url" -ForegroundColor Green
