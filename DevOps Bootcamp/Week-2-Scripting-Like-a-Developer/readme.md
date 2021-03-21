# Week 2 Scripting like a Developer

The code foun din this repository is to help you learn how to script like a developer

## WIP

The code found in 'Week-2-Scripting-Like-a-Developer' is currently a Work in Progress (WIP) and the readme will be updated when ready

## PowerShell Code

The PowerShell code found in 'Week-2-Scripting-Like-a-Developer' is for anyone that want to create a Resource Group in Azure

## How to Use The PowerShell Code

The 'New-ResourceGroup' function is found under the 'PowerShell; directory and can be used as a reusable function. A user has the ability to pass in parameters at runtime to ensure they can re-use the scrupt at any point for any environment.

## Python

The Python code found in 'Week-2-Scripting-Like-a-Developer' is for anyone that wants to create an S3 bucket in AWS

## How to Use The Python Code

The 's3bucket.py' script is designed to be re-used at any point for any environment. There are no hard-coded values.

## Examples

```Pwsh
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

New-ResourceGroup -rganme 'cloudskills' -location 'eastus2'
```

```Python
import sys
import boto3

try:
def main():
create_s3bucket(bucket_name)

except Exception as e:
print(e)

def create_s3bucket(bucket_name):
s3_bucket=boto3.client(
's3',
)

    bucket = s3_bucket.create_bucket(
        Bucket = bucket_name,
        ACL='private',
    )

    print(bucket)

bucket_name = sys.argv[1]

if **name** == '**main**':
main()

python s3bucket.py 'cloudskills'
```

## Testing

Both the PowerShell and Python code have unit test avaialable to ensure that the desired outcomes, including values and types, are accurate.

Then tests can be found int he 'PowerShell' and 'Python' directories.

## Contributors

1. Matt Wiese
