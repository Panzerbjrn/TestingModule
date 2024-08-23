Function Test-PSBoundParameters {
   param(
      [string]$Text,
      [int]$demoNumber
   )

   # Display all the passed parameters:
   $PSBoundParameters

   # or with a switch statement:
   switch ($PSBoundParameters.Keys) {
            'Text' { write-output ' A value for Text was supplied' }
            'demoNumber' { write-output ' A value for demoNumber was supplied'  }
       }

   # or looping through all the key/value pairs
   foreach($boundparam in $PSBoundParameters.GetEnumerator()) {
       "Key={0} Value={1}" -f $boundparam.Key,$boundparam.Value
   }

   # or Call a second function passing all the parameters plus any extra if needed:
   DemoFunc2 @PSBoundParameters -ExtraDemoParam 'Testing 123'
}

Function DemoFunc2 {
   param(
      [string]$Text,
      [int]$demoNumber,
      [string]$ExtraDemoParam
   )
   Write-Output "$Text $demoNumber $ExtraDemoParam"
}
You can also check for the existence of a specific key with $PSBoundParameters.ContainsKey('Text') or $PSBoundParameters['Text']

   If ($PSBoundParameters.ContainsKey('Text')) {
      Write-Output -InputObject "Text has been included as: '$Text'"
   }