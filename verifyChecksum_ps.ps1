#path to file & hash
$FILE = Read-Host -Prompt 'File Path';
$HASH = Read-Host -Prompt 'Enter checksum';
$FILEHASHED = Get-FileHash $FILE
if ($FILEHASHED -match $HASH){
write-host "Hash matched"
}
else{
write-host "Hash currupt"
}
write-host $FILEHASHED
write-host $HASH
Read-Host -prompt 'Press enter to close'

