$port = Read-Host "Port"
$proto = Read-Host "Proto"

New-NetFirewallRule -DisplayName "Block IN" -Direction Inbound -Action Block -Profile Any
New-NetFirewallRule -DisplayName "Block OUT" -Direction Outbound -Action Block -Profile Any

New-NetFirewallRule -DisplayName $port -Direction Inbound -Protocol $proto -LocalPort $port -Action Allow -Profile Any
New-NetFirewallRule -DisplayName $port -Direction Outbound -Protocol $proto -LocalPort $port -Action Allow -Profile Any
