# ServerAutoBackup
Powershell script to auto backup your FiveM Server. 


Create a folder in your main server root (where the FX Server Starter Is) called backup.
Edit the powershell script and change the source path to the folder you are backing up, for example:
$sourcePath = "C:\MyServer\resources"

Change the destination path to where the backup should be stored:
$destinationPath = "C:\Backups\ServerBackup_$backupDate"

The _$backupDate appends the backup time to the file.

Open Windows Task Scheduler> Right Click > Create Basic Task >  Name It > Trigger how often you want the backup to run > Action > Start a Program, type powershell.exe
In the Add arguments box type -File "path to script", for example: -File "C:\Backups\ServerBackupScript.ps1", then for the "start In" box, put the path where the script runs from.

![image](https://user-images.githubusercontent.com/84641832/230433293-91c25ab9-8b2b-459b-812a-42f617292f9a.png)


Click ok, then you can right click the new scheduled event and click run, then check your backup output file path and make sure it populates.
