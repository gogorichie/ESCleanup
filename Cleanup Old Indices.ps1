# This is where i should explain how all the variables work i guess.

$DateToRemove = (get-date).AddDays(-7).ToString("yyy.MM.dd")
$ESAddress = "http://localhost"
$ESPort = "9200"
$ESIndexName = "*"

# Where the magic happen the invoke-restmethod call actually executes the cleanup query.
$ESURL = $ESAddress+':'+$ESPort+'/'
$Cleanupurl = $ESURL+$ESIndexName+$DateToRemove
Invoke-RestMethod -Uri $Cleanupurl -Method Delete