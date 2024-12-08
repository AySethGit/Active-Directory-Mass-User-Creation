param (
	[Parameter(Mandatory=$true)]
	[String]$InputFile, 
	[string]$TargetOU = "OU=Groups,DC=Krueger,DC=local"
)

$GroupNames = Get-Content -Path $InputFile

foreach ($GroupName in $GroupNames) {
try {
New-ADGroup -Name $GroupName -GroupScope DomainLocal -GroupCategory Security -Path $TargetOU
Write-Host "Group '$GroupName' created successfully." -ForegroundColor Green
} catch {
	Write-Host "Failed to create group '$GroupName'. Error: $_" -ForegroundColor Red
	}
}
