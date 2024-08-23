Function Test-PSBoundParametersPriv {
   param(
      [string]$Text,
      [int]$Number,
      [string]$ExtraParam
   )
   Write-Output "$Text $Number $ExtraParam"
}

#You can also check for the existence of a specific key with $PSBoundParameters.ContainsKey('Text') or $PSBoundParameters['Text']

# If ($PSBoundParameters.ContainsKey('Text')) {
#    Write-Output -InputObject "Text has been included as: '$Text'"
# }