Script Description
This script is designed to add users to Active Directory (AD) groups based on a CSV file with a unique format. The CSV file must have two columns with the following column names: "AD Group" and "Samaccountname".

The "AD Group" column lists the AD groups that the user should be added to in a semicolon-separated format. For example, if the user should be added to three AD groups, the "AD Group" column for that row would look like this: "adgroup1;adgroup2;adgroup3".

The "Samaccountname" column lists the username (SamAccountName) of the user that should be added to the AD groups listed in the "AD Group" column.

Here's a sample format for the CSV file:

sql
Copy code
AD Group,Samaccountname
adgroup1;adgroup2;adgroup3,Samaccount1
adgroup4;adgroup5;adgroup6,Samaccount2
adgroup11;adgroup22;adgroup33,Samaccount3
The script uses the Import-Csv cmdlet to read the CSV file and then loops through each row using the ForEach-Object cmdlet.

For each row, the script uses the Add-ADPrincipalGroupMembership cmdlet to add the user to the AD groups listed in the "AD Group" column.

If there is an error adding the user to any of the AD groups, the script catches the error using the Try-Catch block and records the error message in the "Result" column of the output. If the user is successfully added to all the AD groups, the "Result" column indicates that they were added successfully.

Finally, the script exports the results to a new CSV file using the Export-Csv cmdlet. The new CSV file contains the original "AD Group" and SamAccountName columns, as well as the "Result" column indicating whether the user was successfully added to all AD groups or if there was an error.

Required CSV Format
To use this script, the CSV file must be in the following format:

sql
Copy code
AD Group,Samaccountname
adgroup1;adgroup2;adgroup3,Samaccount1
adgroup4;adgroup5;adgroup6,Samaccount2
adgroup11;adgroup22;adgroup33,Samaccount3
The first row must contain the column headers "AD Group" and "Samaccountname". The "AD Group" column should contain a semicolon-separated list of AD group names, and the "Samaccountname" column should contain the username (SamAccountName) of the user that should be added to those AD groups.

Note that the column headers are case-sensitive and must match exactly.
