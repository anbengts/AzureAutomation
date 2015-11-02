workflow WebHookTests
{

	    param ( 
        [object]$WebhookData
    )


        # Collect properties of WebhookData
        $WebhookName    =   $WebhookData.WebhookName
        $WebhookHeaders =   $WebhookData.RequestHeader
        $WebhookBody    =   $WebhookData.RequestBody

        # Collect individual headers.
        $From = $WebhookHeaders.From
    	$Users = (ConvertFrom-Json -InputObject $WebhookBody)
        Write-Output "Runbook started from webhook $WebhookName by $From."
			
			
			        # Obtain the AlertContext     
        $AlertContext = [object]$WebhookBody.context

        # Some selected AlertContext information 
         
        Write-Output $AlertContext.name 
        Write-Output $AlertContext.subscriptionId 
        Write-Output $AlertContext.resourceGroupName 
        Write-Output $AlertContext.resourceName 
        Write-Output $AlertContext.resourceType 
        Write-Output $AlertContext.resourceId 
        Write-Output $AlertContext.timestamp 
	
}