# Powershell Cleanup Indices Script
Sometimes you just need a little automated script to handle the recurring daily removal of old indices within Elastic. That's what this project is nothing to crazy or fancy about it. This script was inspired by anhlqn https://github.com/anhlqn/esalert

# How's it work? 
The script will remove indices based on the index name and date pattern this can be customized by changing the $ESIndexName variable.  


### Components
1. Windows Task Scheduler
2. Powershell v4 or later
3. Sense/Developer Tool in Kibana or anything you prefer to create query.
