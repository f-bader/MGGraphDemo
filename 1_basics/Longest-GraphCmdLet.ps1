# https://devblogs.microsoft.com/scripting/weekend-scripter-use-powershell-to-find-longest-cmdlet-name/
# https://twitter.com/NathanMcNulty/status/1646402073456685056
Get-Command | Select-Object @{label = 'name'; expression = { $_.name } }, @{label = 'length'; expression = { ($_.name |  Measure-Object -Character).Characters } } | Sort-Object length -Descending | Select-Object -First 1