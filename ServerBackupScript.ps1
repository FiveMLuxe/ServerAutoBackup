# Get the current date and time
$backupDate = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"

# Set the source and destination paths - Source is the file you want to backup, destination is where its going. 
$sourcePath = "C:\MyServer"
$destinationPath = "C:\Backups\MyServer_$backupDate"

# Copy the entire folder with subdirectories and files
Copy-Item -Path $sourcePath -Destination $destinationPath -Recurse

# Output the backup path
Write-Output "Backup created at: $destinationPath"