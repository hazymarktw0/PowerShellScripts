# create folder named "ENC"
$folderpath = "C:\Users\HazyMkII\Documents\Cyber Security\command line"
New-Item -ItemType directory -Path $folderpath
write-output "$folderpath was created successfully"
# create a test document 
$FileName ="testbed.txt"
$testfilepath = "$folderpath\$filename"
New-Item -ItemType file -path $testfilepath -force
write-output "$FileName was created successfully"
# Prompt the user for what content to add to the file we are creating 
$content = read-host "Enter the content you would like to add to the document" 
set-content $testfilepath -Value $content
Write-Output "Content has been added to the document"
