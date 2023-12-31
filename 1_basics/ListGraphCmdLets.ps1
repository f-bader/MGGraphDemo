$CompleteList = Get-Command | Where-Object Module -Match "^Microsoft.Graph"
$RegularCommands = $CompleteList | Where-Object Module -NotMatch "^Microsoft.Graph.Beta"
$BetaCommands = $CompleteList | Where-Object Module -Match "^Microsoft.Graph.Beta"
$RegularCommands | Measure-Object
$BetaCommands | Measure-Object
