function New-ResourceGroup {
    [cmdletbinding(SupportsShouldProcess)]

    param (
        [parameter(Mandatory)]
        [string]$rgname,

        [parameter(Mandatory)]
        [string]$location
    )

    $params = @{
        'Name' = $rgname
        'Location' = $location
    }

    if($PSCmdlet.ShouldProcess('location')) {
    New-AzResourceGroup @params
    }
}