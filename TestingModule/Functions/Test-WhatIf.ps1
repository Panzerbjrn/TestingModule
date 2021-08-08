Function Test-WhatIf {
<#
	.SYNOPSIS
		This will test what if by creating a new file.

	.DESCRIPTION
		This will test what if by creating a new file.

	.PARAMETER FilePath
		This is the path of the file that will be created

	.INPUTS
		Command line

	.OUTPUTS
		Creates a file

	.NOTES
		Just a basic test of how WhatIf works

	.EXAMPLE
		Test-WhatIf -FilePath C:\Temp\TestWhatIf.txt
		
		This will create a new file if the impact is confirmed.

	.EXAMPLE
		Test-WhatIf -FilePath C:\Temp\TestWhatIf.txt -WhatIf
		
		This will show the What If output.

	.LINK
		https://github.com/Panzerbjrn/TestingModule
#>
	[CmdletBinding(SupportsShouldProcess=$true,ConfirmImpact='High')]
	param(
		[Parameter(Mandatory)]
		[ValidateNotNullOrEmpty()]
		[string]$FilePath
	)
	
	BEGIN{
		Write-Verbose "#################################################################"
		Write-Verbose "Beginning $($MyInvocation.MyCommand.Name) on $($ENV:ComputerName) @ $(Get-Date -Format "yyyy.MM.dd HH:mm:ss")"
		Write-Verbose "#################################################################"

		Write-Verbose "Checking to see if the file provided already exists"
		$FileExists = Test-Path -Path $FilePath
	}
		
	PROCESS{
		TRY{
			IF($FileExists){
				Write-Warning "$FilePath already exists and will be overwritten"
				IF($PSCmdlet.ShouldProcess(
						("Overwritting existing file {0}" -f $FilePath),
						("Would you like to overwrite {0}?" -f $FilePath),
						"Create File Prompt"
					)){
					$File = New-Item -Path $FilePath -ItemType File -Force -ErrorAction Stop
				}
			}
			ELSE{
				Write-Verbose "Creating $FilePath"
				IF($PSCmdlet.ShouldProcess($FilePath,"Create File")){
					$File = New-Item -Path $FilePath -ItemType File -Force -ErrorAction Stop
				}
			}
		}
		CATCH{
			Throw "$($_.Exception.Message)"
		}
	}
	END{
		Write-Verbose "New file details"
		Return $File
	}
}