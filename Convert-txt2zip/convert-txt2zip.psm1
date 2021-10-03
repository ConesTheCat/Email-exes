function convert-txt2zip{

    $filebrowser=$null

Write-host "Select the text file that you would like to convert back" -ForegroundColor Green

Add-Type -AssemblyName system.windows.forms
$filebrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{
    initialdirectory = [environment]::GetFolderPath('Desktop')
    Filter = "Txt File (*.txt)|*.txt"
    }
[void]$filebrowser.ShowDialog()


$Filename2 = ($filebrowser.FileName).TrimEnd(".txt")

[IO.File]::WriteAllBytes($FileName2, [Convert]::FromBase64String((get-content $filebrowser.filename)))


if (!(Test-Path $filename2)){
write-host "Convert failed" -ForegroundColor Red}
else {
write-host "convert Ok" -ForegroundColor Green
start ($filebrowser.FileName).TrimEnd($filebrowser.SafeFileName)
} 

}