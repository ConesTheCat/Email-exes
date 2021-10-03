# Email exes
 Script I use to email blocked attachments via email to different networks which are locked down.  If you can copy paste between sessions/networks, you can skip the email part and just put the results into the clipboard, or update the scripts to put the output into clip and import again through clip.
 
 
 These are modules (PS1M) and I have added them to run with powershell, but they can be renamed back to .ps1 and ran manually
 
 These scripts do NOT work in VS Code,  you need to run them via terminal or ISE (The box to select file does not open)
 
 Runsteps
 Archive the files you want to send if multiple (with password for security)

Run Convert-zip2txt and select the file or archive

email the output txt file

Run Convert-txt2zip to convert the file back on the destination machine.

un-compress if needed
