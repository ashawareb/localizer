Feature: Localize
  In order to translate text
  As a CLI
  I want to be as objective as possible

  Scenario: Translate
    When I run 'localize translate --source en --target fr --text Good Morning!'
    Then the output should contain "Bonjour!"

  Scenario: All Languages
    When I run 'localize all_languages'
    Then the output should contain all_languages

  Scenario: Language Code
    When I run 'localize language_code --language'
    Then the output should contain the language code for that language

  Scenario: Supported
    When I run 'localize supported --code'
    Then the output should contain if the language is supported or not