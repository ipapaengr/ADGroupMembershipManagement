PowerShell Script Description
This PowerShell script is designed to add users to Active Directory groups based on the information provided in a CSV file. The CSV file should have two columns with the following headers: "AD Group" and "Samaccountname". <u>Multiple AD groups can be separated by semicolons in the CSV file if multiple groups need to be added for the same user.</u> Not the usual format but was needed to accomodate and applicaton request.

Here is an example CSV file format:
| AD Group               | Samaccountname |
|------------------------|------------------|
| adgroup1;adgroup2;adgroup3 | Samaccount1         |


The script imports the CSV file using the Import-Csv cmdlet and pipes the output to a ForEach-Object loop. For each row in the CSV file, the script attempts to add the user specified in the "Samaccountname" column to the group(s) specified in the "AD Group" column using the Add-ADGroupMember cmdlet.

If the user is successfully added to the group(s), the script sets the $result variable to 'Added to group'. If an error occurs during the group membership addition, the script sets the $result variable to the error message associated with the caught exception. The Select-Object cmdlet is then used to select and format the "AD Group", "Samaccountname", and "Result" columns for output.

Finally, the output is piped to Export-Csv cmdlet which exports the results of the script as a new CSV file to the specified location on the local machine.
