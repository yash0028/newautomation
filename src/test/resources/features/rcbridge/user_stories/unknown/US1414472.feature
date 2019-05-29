# Last updated on 
@US1414472
@releaseUnknown
@iterationUnknown
Feature: US1414472 - Author SMGA Contact UI Path

  @TC627894
  @Automated
  @User_Interface
  Scenario Outline: TC627894 - [RL0] Author SMGA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    And I am using the "eif-basic-contract.json" flow
    When I author a contract using the following contract information
      | MPIN          | <mpin>          |
      | TIN           | <tin>           |
      | Market Number | <market number> |
      | County        | <county>        |
      | Paper Type    | SMGA            |
      | Phycon        | <phycon>        |
      | Fee Schedule  | <fee>           |
      | FS NPPA       | <FS NPPA>       |
    Then I have an active contract in Exari
    Examples:
      | site          | mpin    | tin       | market number | phycon | fee      | county   | FS NPPA  |
      | central uhn   | 2239924 | 731624480 | 13476         | 1234   | IN 52716 | clay     | IN 57574 |
      | northeast uhn | 2239924 | 731624480 | 45592         | 1234   | IN 52716 | caroline | IN 57574 |
      | southeast uhn | 2239924 | 731624480 | 23503         | 1234   | AR 10417 | lee      | IN 57574 |
      | west uhn      | 2239924 | 731624480 | 36555         | 1234   | OR 10409 | baker    | IN 57574 |

