Feature: Adding two roman number

  Scenario Outline:
    Given I add <number1> and <number2>
    Then the result is <result>

  Scenarios:
      | number1 | number2 | result |
      |      XX |      II |   XXII |