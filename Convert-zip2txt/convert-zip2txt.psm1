function convert-zip2txt {
    $convert = $null
Add-Type -AssemblyName System.Windows.Forms
$FileBrowser = New-Object System.Windows.Forms.OpenFileDialog -Property @{
    InitialDirectory = [Environment]::GetFolderPath('Desktop')
}
[void]$FileBrowser.ShowDialog()
$FileBrowser.FileName
$convert = [System.Convert]::ToBase64String([System.IO.File]::ReadAllBytes($FileBrowser.filename))
$outputlocation = $FileBrowser | Select-Object -ExpandProperty filename
$convert | Out-File ($outputlocation + ".txt")
if ($convert -eq $null){
write-host "Convert failed" -ForegroundColor Red}
else {
write-host "convert Ok" -ForegroundColor Green
start ($outputlocation).TrimEnd($FileBrowser.SafeFileName)}

}