function Get-Excuse
{
  <#
    .SYNOPSIS
    Get BOFH Excuse
    .DESCRIPTION
    Self explanitory
    .EXAMPLE
    Get-Excuse
    .Notes
    Author: CalvinB
    Credit: chuckwagoncomputing for hosting a list of excuses, think his was meant for bash.
    Change: 12.03.2023
  #>
$excuses = "https://gist.githubusercontent.com/chuckwagoncomputing/ff980f81482b5894c824/raw/c54c87a325454a5ae91b6254fa4c30121e0891f5/excuses.txt"
$list = iwr -Uri $excuses -Method Get | select -ExpandProperty Content
$list > $env:TEMP\excuses.txt
$payload = gc "$env:TEMP\excuses.txt" | sort Length
get-random -InputObject $payload
}
