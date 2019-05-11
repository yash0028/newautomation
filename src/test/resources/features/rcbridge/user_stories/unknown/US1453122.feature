# Last updated on 
@US1453122
@releaseUnknown
@iterationUnknown
Feature: US1453122 - Author SPGA Contact UI Path

  @TC652719
  @Automated
  @User_Interface
  Scenario Outline: TC652719 - [RL0]
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    And I am using the "eif-basic-contract.json" flow
    When I author a contract using the following contract information
      | MPIN          | <mpin>          |
      | TIN           | <tin>           |
      | Market Number | <market number> |
      | County        | <county>        |
      | Paper Type    | SPGA            |
      | Phycon        | <phycon>        |
      | Fee Schedule  | <fee>           |
      |Site           |<site>           |
    Then I have an active contract in Exari
    Examples:
      | site          | mpin    | tin       | market number | phycon | fee      | county   |
      | central uhn   | 2239924 | 731624480 | 13476         | 1234   | IN 52716 | clay     |
      | northeast uhn | 2239924 | 731624480 | 45592         | 1234   | IN 52716 | caroline |
      | southeast uhn | 2239924 | 731624480 | 23503         | 1234   | AR 10417  | lee      |
      | west uhn      | 2239924 | 731624480 | 36555         | 1234   | OR 10409  | baker    |

