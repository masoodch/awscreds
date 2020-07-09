$AccessKey = Read-Host -Prompt "Please Enter your Access Key"
$SecretKey = Read-Host -Prompt "Please Enter your Secret Key"
$ProfileName = Read-Host -Prompt "Specify a profile name"
$Region = Read-Host -Prompt "Please Enter your desired region"

Write-Host "Setting up new AWS Credentials"

Set-AWSCredential -AccessKey $AccessKey -SecretKey $SecretKey -StoreAs $ProfileName

Write-Host "Listing Credential Profiles"
Get-AWSCredential -ListProfileDetail

Write-Host "Initializing the profile. . ."
Initialize-AWSDefaultConfiguration -ProfileName $ProfileName -Region $Region