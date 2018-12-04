@temp
@A_UI_Story
Feature: US1453122 - Author SPGA Contact UI Path

  Scenario Outline: TC652719 - [RL0]
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site asdf
    When I author a contract using the following contract information asdf
      | MPIN               | <mpin>          |
      | TIN                | <tin>           |
      | Market Number      | <market number> |
      | State              | <state>         |
      | Paper Type         | SPGA            |
      | HBP                | no              |
      | Phycon             | <phycon>        |
      | Fee Schedule       | <fee>           |
      | Product            | <product>       |
      | Additional Manuals | no              |
    Then I have an active contract in Exari asdf
    Examples:
      | site        | mpin    | tin       | state | market number | phycon | fee      | product |
      | central uhn | 2239924 | 731624480 | IA    | 13476         | 1234   | IN 52716 | 1       |

