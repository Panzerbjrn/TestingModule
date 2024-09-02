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
   $PSBoundParameters

   # or with a switch statement:
   switch ($PSBoundParameters.Keys) {
            'Text' { write-output ' A value for Text was supplied' }
            'Number' { write-output ' A value for Number was supplied'  }
       }

   # or looping through all the key/value pairs
   foreach($boundparam in $PSBoundParameters.GetEnumerator()) {
       "Key={0} Value={1}" -f $boundparam.Key,$boundparam.Value
   }

   # or Call a second function passing all the parameters plus any extra if needed:
   Test-PSBoundParametersPriv @PSBoundParameters -ExtraDemoParam 'Testing 123'
}
