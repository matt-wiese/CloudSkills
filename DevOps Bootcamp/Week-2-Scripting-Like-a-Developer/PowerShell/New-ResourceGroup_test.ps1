# To run the test:
# Invoke-Pester .\New-ResourceGroup.ps1

Describe "New-ResourceGroup" {
    $location = 'eastus2'
    $name = 'cloudskills-mw-20210228'

    It "name should be cloudskills-mw-20210228" {
        $name | Should Be 'cloudskills-mw-20210228'
    }

    It "location should be eastus2" {
        $location | Should Be 'eastus2'
    }
}
