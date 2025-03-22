$opt = Read-Host "1 to block all, 2 to open port"
$port = Read-Host "Port"
$proto = Read-Host "Proto"

if($opt -eq "1"){
  New-NetFirewallRule -DisplayName "Block IN" -Direction Inbound -Action Block -Profile Any
  New-NetFirewallRule -DisplayName "Block OUT" -Direction Outbound -Action Block -Profile Any
}
elseif($opt -eq "2"){
  New-NetFirewallRule -DisplayName $port -Direction Inbound -Protocol $proto -LocalPort $port -Action Allow -Profile Any
  New-NetFirewallRule -DisplayName $port -Direction Outbound -Protocol $proto -LocalPort $port -Action Allow -Profile Any
}
