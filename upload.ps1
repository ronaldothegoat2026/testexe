$botToken = "6595575260:AAEc_5Eojz0Gu7dfAWDo-LTcO7fQtiZ2Ido"
$chatId = "-1002387709459"
$filePath = "C:\path\to\your\file.txt"

$apiUrl = "https://api.telegram.org/bot$botToken/sendDocument"

$formData = @{
    chat_id = $chatId
    document = Get-Item -Path $filePath
}

$response = Invoke-RestMethod -Uri $apiUrl -Method Post -Form $formData

$response
