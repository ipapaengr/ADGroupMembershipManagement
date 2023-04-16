## Script Description

This script is designed to add users to Active Directory (AD) groups based on a CSV file with a unique format. The CSV file must have two columns with the following column names: "AD Group" and "Samaccountname".

The "AD Group" column lists the AD groups that the user should be added to in a semicolon-separated format. For example, if the user should be added to three AD groups, the "AD Group" column for that row would look like this: "adgroup1;adgroup2;adgroup3".

The "Samaccountname" column lists the username (SamAccountName) of the user that should be added to the AD groups listed in the "AD Group" column.

Here's a sample format for the CSV file:

AD Group,Samaccountname
adgroup1;adgroup2;adgroup3,Samaccount1
adgroup4;adgroup5;adgroup6,Samaccount2
adgroup11;adgroup22;adgroup33,Samaccount3
