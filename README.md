## PowerShell Script Description

This PowerShell script imports user data from a CSV file located at "C:\data\AddUsers.csv", and adds them to an Active Directory (AD) group using the `Add-ADGroupMember` cmdlet. The script also handles errors by catching exceptions and storing the error message in the `$result` variable. 

The script then selects the 'AD Group', 'SamAccountName', and 'Result' properties using the `Select-Object` cmdlet, and exports the result to a new CSV file located at "C:\Data\AddUsers_Results.csv" using the `Export-Csv` cmdlet.

The CSV file being imported should have a column named 'AD Group' containing the name of the AD group to which the user should be added, and a column named 'SamAccountName' containing the username of the user to be added to the AD group.

To run the script, copy and paste the code into a PowerShell editor or run it in a PowerShell console.
