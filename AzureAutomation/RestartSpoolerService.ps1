

$ServiceStatus = get-service Spooler
if ($ServiceStatus.Status -eq "Stopped") {
    Restart-Service Spooler
    } 

    