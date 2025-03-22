$pw = Read-Host "Password"
$secpw = ConvertTo-SecureString $pw -AsPlainText -Force

$names = @("johncyberstrike", "joecyberstrike", "janecyberstrike", "janicecyberstrike", "strikesavior", "planetliberator", "haunterhunter", "vanguardprime", "roguestrike", "falconpunch", "specter", "antiterminite")

foreach($name in $names){
  Set-ADAccountPassword -Identity $name -NewPassword $secpw -Reset
}
