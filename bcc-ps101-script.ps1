# Demo Script
# By Ryan Coates
# Does absolutley nothing of use
# But the comments up the top explain that


param(
    [String]$Name,
    [Switch]$SortMe
)

if (!($name))
    {
    Write-Output "Finding all the Processes because you didn't give a `$name"
    
    $processes = Get-Process

        If ($SortMe){
            $processes | Sort-Object -Property CPU -Descending
        } else {
            $processes
        }
    }

else {
    Write-Output "Finding process: `"$name`" because you gave a `$name"
    Get-Process -Name $Name
}