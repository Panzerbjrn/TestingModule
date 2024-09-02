Function Test-ArgParams {
		<#
		.SYNOPSIS
			Describe the function here

		.DESCRIPTION
			Describe the function in more detail

		.EXAMPLE
			Give an example of how to use it

	#>


	$ParameterOne = $args[0]
	$ParameterTwo = $args[1]
	Write-Output "ParameterOne is $($ParameterOne)"
	Write-Output "ParameterTwo is $($ParameterTwo)"
	Write-Output "args0 is $($args[0])"
	Write-Output "Args1 is $($args[1])"
}