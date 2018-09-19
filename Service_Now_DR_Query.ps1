
################
 
#// Set Instance 
$InstanceName = "https://baincapital.service-now.com/" 
 
 

 
#// Create SN REST API credentials 
$SNowUser = "***USERNAME***" 
$SNowPass = "***PASSWORD***" | ConvertTo-SecureString -asPlainText -Force 
$SNowCreds = New-Object –TypeName System.Management.Automation.PSCredential –ArgumentList $SNowUser, $SNowPass 
 
#// Get all incidents Assigned To 
$URI = $InstanceName+"api/now/table/cmdb_ci_server?sysparm_fields=name&u_disaster_recovery_replicated=true&install_status=1"



$CMDBServersList = Invoke-RestMethod -Uri $URI -Credential $SNowCreds -Method GET -ContentType "application/json" 
 
$CMDBServers = $CMDBServersList.result



foreach ($CMDBServer in $CMDBServers.result) { 
    $Incident 
} 

