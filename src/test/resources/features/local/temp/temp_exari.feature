@temp
@A_UI_Story
Feature: US1453122 - Author SPGA Contact UI Path

  Scenario Outline: Temp Example Runner
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site asdf
    When I author a contract using the following contract information asdf
      | MPIN               | <mpin>          |
      | TIN                | <tin>           |
      | Market Number      | <market number> |
      | State              | <state>         |
      | Paper Type         | SPA             |
      | HBP                | no              |
      | Phycon             | <phycon>        |
      | Fee Schedule       | <fee>           |
      | Product            | <product>       |
      | Additional Manuals | no              |
    Then I have an active contract in Exari asdf
    Examples:
      | site        | mpin    | tin       | state | market number | phycon | fee      | product |
      | central uhn | 6502242 | 345645545 | IA    | 13476         | 1234   | IN 93774 | 1       |

