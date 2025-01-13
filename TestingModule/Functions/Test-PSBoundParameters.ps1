Function Test-PSBoundParameters {
    <#
		.SYNOPSIS
			Describe the function here

		.DESCRIPTION
			Describe the function in more detail

		.EXAMPLE
			Give an example of how to use it

	#>
	[CmdletBinding()]

    param(
        [string]$Text,
        [int]$Number
    )

    # Display all the passed parameters:
    "Display all the passed parameters:"
    $PSBoundParameters

    # or with a switch statement:
    "or with a switch statement:"
    switch ($PSBoundParameters.Keys) {
            'Text' { write-output ' A value for Text was supplied' }
            'Number' { write-output ' A value for Number was supplied'  }
    }

    # or looping through all the key/value pairs
    "or looping through all the key/value pairs"
    foreach($boundparam in $PSBoundParameters.GetEnumerator()) {
        "Key={0} Value={1}" -f $boundparam.Key,$boundparam.Value
    }


    "Testing removing"
    $splat = [hashtable]::new()
    foreach ( $items in $PSBoundParameters.GetEnumerator() ) {
    $Splat[$item.Key] = $item.Value }
    $splat.Remove("Text")
    $splat

}
