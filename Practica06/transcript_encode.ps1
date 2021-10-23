$archivo = Get-Content .\transcript.txt

$ste = [System.Text.Encoding]::UTF8.GetBytes($archivo)
[System.Convert]::ToBase64String($ste) > .\transcript_encode.txt