Function Test-BeginProcessEnd{
	<#
		.SYNOPSIS
			Describe the function here

		.DESCRIPTION
			Describe the function in more detail

		.EXAMPLE
			Give an example of how to use it

	#>
	[CmdletBinding()]
	Param(
		[Parameter(ValueFromPipeline)]
		[int[]]$Number
	)

	BEGIN{
		Write-Host "`nIn Begin block"
		[int]$I = 1
		[int]$FinalNumber = 0
		Write-Verbose "Number of numbers is $($Number.count)"
	}
	PROCESS{
		Write-Host "`nIn Process block"
		Write-Verbose "Number is $($Number)"
		Write-Verbose "`$I is $($I)"
		$I++
		ForEach ($Item in $Number){
			Write-Verbose " `$Item is $($Item)"
			$FinalNumber = $FinalNumber + $Item
		}
	}
	END{
		Write-Host "`nIn End block"
		Write-Verbose "Final total of `$I is $($I)"
		Write-Verbose "Final total of `$Number is $($FinalNumber)"
	}
}