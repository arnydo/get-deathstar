Foreach ($i in $(Get-Content script.conf)){
    Set-Variable -Name $i.split("=")[0] -Value $i.split("=",2)[1]
}

$Headers = @{
    'APIKey' = $APIKEY
    'User-Agent' = $USERAGENT
    'Content-Type' = 'application/json'
}

$Url = 'https://swapi.co/api/starships/9/'

Invoke-WebRequest -Method GET -Uri $Url -Headers $Headers -Verbose
