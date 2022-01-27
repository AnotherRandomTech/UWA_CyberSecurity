# Get items in user profile directory, instead of using current directory, using an enviromental varable to be more roaming profile friendly.
$sourcedirectory = Get-ChildItem .\

## foreach loop - from source directory
foreach ($_ in $sourcedirectory)
{
    # goes through each folder from source directory, and gets ACLs for each folder.
    Get-Acl $_.Name
}
