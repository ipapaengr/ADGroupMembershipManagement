Import-Csv "C:\PS\AddUsers.csv" | ForEach-Object {
	Try {
		Add-ADPrincipalGroupMembership -Identity $_.SamAccountName -MemberOf $_.'AD Group'.Split(';').Trim() -ErrorAction Stop
		$result = 'Added to groups'
	} Catch {
		$result = $_.Exception.Message
	}
	$_ | Select-Object -Property 'AD Group', SamAccountName, @{n='Result'; e={$result}}
} | Export-Csv -NoTypeInformation -Path "C:\PS\\AddUsers_Results.csv"
