Describe 'Test-ParamSets Basic Tests' {
    It 'Runs with Name parameter set' {
        { Test-ParamSets -Name 'John' -Surname 'Doe' -Decimal } | Should -Not -Throw
    }

    It 'Runs with ID parameter set' {
        { Test-ParamSets -ID '1234' -Hexidecimal } | Should -Not -Throw
    }
}
