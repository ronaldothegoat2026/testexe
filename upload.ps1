# Define the bot token and chat ID
$botToken = "6595575260:AAEc_5Eojz0Gu7dfAWDo-LTcO7fQtiZ2Ido"
$chatId = "-1002387709459"
$filePath = "C:\path\to\your\file.txt"

# Define the API URL
$apiUrl = "https://api.telegram.org/bot$botToken/sendDocument"

# Create a form data object
$formData = @{
    chat_id = $chatId
    document = Get-Item -Path $filePath
}

# Send the file
$response = Invoke-RestMethod -Uri $apiUrl -Method Post -Form $formData

# Output the response
$response
