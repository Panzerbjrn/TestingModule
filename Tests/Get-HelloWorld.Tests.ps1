Describe "Get-HelloWorld" {
    It "outputs 'Hello world!'" {
        Get-HelloWorld | Should -Be 'Hello world!'
    }
}