Powershell - Transfering Files from Unix to Windows, Vice Versa
---------------------------------------------------
# Since downloading files directly on the servers proved problematic, use pscp.exe (Putty application) to transfer file(s) from machine to machine.

# Windows to Unix

$ .\pscp .\file_to_send.file user@host:/target/directory

# Unix to Windows (you're still on Windows machine)

$ .\pscp user@host:/source/directory/file_to_send.file "C:\Users\target\directory"



Powershell - List IP Addresses for Each Hostname
---------------------------------------------------
# If the command doesn't work the first time, worry not! This is normal behavior.
# In order to prevent malicious scripts from running on your system, Powershell enforces an execution policy.
# There are 4 execution policies you can use:
#
# Restricted – Scripts won’t run. Period. (Default setting)
# RemoteSigned – Locally-created scripts will run. Scripts that were created on another machine will not run unless they are signed by a trusted publisher.
# AllSigned – Scripts will only run if signed by a trusted publisher (including locally-created scripts).
# Unrestricted – All scripts will run regardless of who created them and whether or not they are signed.
#
# Recommend copy pasting this script and making your own so you can use RemoteSigned.
# To do this, open Powershell as administrator and run the command:

$ Set-ExecutionPolicy RemoteSigned

# Running a script on Windows that checks and prints IP addresses for a bunch of hostnames.

$ & "C:\Users\some\Desktop\directory\testscript.ps1"

# Actual script

"Here are the IP addresses!"

$servers = get-content C:\Users\some\directory\IP.txt
foreach ($server in $servers) {
[System.Net.Dns]::GetHostAddresses($server) | select IPAddressToString
}




