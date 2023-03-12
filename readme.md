You can run the script directly or with spicy 1-liner below.  
  
```powershell
$explanation = "https://raw.githubusercontent.com/Calvindd2f/Get-Excuse/main/Get-Excuse.ps1" ; irm -Uri $explanation | % {iex $_} | Get-Excuse
```
