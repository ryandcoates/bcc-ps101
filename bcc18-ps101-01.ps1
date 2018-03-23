<# PowerShell: 101 @ Boise Code Camp 2018
.FILE bcc18-ps101-01.ps1
.AUTHOR Ryan Coates
.LINK https://github.com/ryandcoates/bcc18-ps101

#>


#region Cmdlets

Get-Service

Get-Process -Name "Explorer"

Get-Command -Module "AzureRM.Compute"

#endregion

#region Scripts

ise ./bcc18-ps101-script.ps1

./bcc18-ps101-script.ps1

#endregion

#region Functions

function Do-Something {

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

}

#endregion