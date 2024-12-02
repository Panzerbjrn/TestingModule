#WIP
<#
Describe 'Test-ParamSets Detailed Tests' {
    Context 'Validates Name Parameter Set' {
        It 'Outputs correct parameter set name' {
            $result = Test-ParamSets -Name 'John' -Surname 'Doe' -Decimal
            $result | Should -Contain 'Set name is: Name'
        }

        It 'Validates output with Name and Surname' {
            $result = Test-ParamSets -Name 'John' -Surname 'Doe' -Decimal
            $result | Should -Contain 'Name is: [John], ID is []'
        }

        It 'Detects Name parameter set with Verbose logging' {
            $result = & { Test-ParamSets -Name 'John' -Surname 'Doe' -Decimal -Verbose } 4>&1
            $result | Should -Match 'IF detected Name'
        }
    }

    Context 'Validates ID Parameter Set' {
        It 'Outputs correct parameter set name' {
            $result = Test-ParamSets -ID '1234' -Hexidecimal
            $result | Should -Contain 'Set name is: ID'
        }

        It 'Validates output with ID and empty Name' {
            $result = Test-ParamSets -ID '1234' -Hexidecimal
            $result | Should -Contain 'Name is: [], ID is [1234]'
        }

        It 'Detects ID parameter set with Verbose logging' {
            $result = & { Test-ParamSets -ID '1234' -Hexidecimal -Verbose } 4>&1
            $result | Should -Match 'IF detected ID'
        }
    }

    Context 'Invalid Parameter Combinations' {
        It 'Throws error when Name and ID are used together' {
            { Test-ParamSets -Name 'John' -ID '1234' } | Should -Throw -ErrorMessage "Cannot use both 'Name' and 'ID' parameters together."
        }
    }
}
 #>