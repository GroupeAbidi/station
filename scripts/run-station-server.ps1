$ErrorActionPreference = 'Stop'

Set-Location (Split-Path -Parent $PSScriptRoot)
$logDirectory = Join-Path (Get-Location) 'logs'
$logFile = Join-Path $logDirectory 'station-server.log'
$node = Join-Path $env:ProgramFiles 'nodejs\node.exe'

if (-not (Test-Path $node)) {
  throw "Node.js was not found at $node. Install the Node.js LTS runtime first."
}

New-Item -ItemType Directory -Force -Path $logDirectory | Out-Null

# Task Scheduler keeps this process alive. Restart Node after an unexpected exit.
while ($true) {
  "[$(Get-Date -Format s)] Starting Station server." | Add-Content -Path $logFile
  & $node 'server/index.js' *>> $logFile
  "[$(Get-Date -Format s)] Station server stopped; retrying in 5 seconds." | Add-Content -Path $logFile
  Start-Sleep -Seconds 5
}
