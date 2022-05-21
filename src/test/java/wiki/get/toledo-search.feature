Feature: Get Toledo wiki

  Scenario Outline: <caseTitle>
    Given url "https://api.duckduckgo.com/?q=" + "<textToSearch>" + "&format=json"
    When method get
    Then status 200
    And match $.AbstractSource contains '<contains>'
    And match $.AbstractURL != ''
    Given url $.AbstractURL
    When method get
    Then status 200

    Examples:
    |caseTitle                                |textToSearch|contains |
    |Search with the first letter in uppercase|Toledo      |Wikipedia|
    |Search with all uppercase letters        |TOLEDO      |Wikipedia|
    |Search with upper and lower case         |tOlEdO      |Wikipedia|