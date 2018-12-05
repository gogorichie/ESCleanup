# Powershell Cleanup Indices Script
Sometimes you just need a little automated script to handle the recurring daily removal of old indices within Elastic. That's what this project is nothing to crazy or fancy about it. This script was inspired by anhlqn https://github.com/anhlqn/esalert

# How's It Work? 
The script will remove indices based on the index name and date pattern using a call from the Invoke-RestMethod powershell method to call the elasticsearch delete index API. This can be customized by changing the $ESIndexName variable. The wildcard expression is used to match indexes in additon to the logstash default date pattern of YYYY.MM.DD, so the call to the API looks something like http://localhost:9200/*2018.12.05.

### Components
1. Windows Task Scheduler
2. Powershell v4 or later
3. Sense/Developer Tool in Kibana or anything you prefer to create query.