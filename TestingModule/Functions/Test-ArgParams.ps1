Function Test-ArgParams {
	$ParameterOne = $args[0]
	$ParameterTwo = $args[1]
	Write-Output "ParameterOne is $($ParameterOne)"
	Write-Output "ParameterTwo is $($ParameterTwo)"
	Write-Output "args0 is $($args[0])"
	Write-Output "Args1 is $($args[1])"
}