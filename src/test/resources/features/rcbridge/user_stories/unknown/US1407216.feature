# Last updated on 
@US1407216
@releaseUnknown
@iterationUnknown
Feature: US1407216 - Author SPA Contact UI Path

  @TC624355
  @Automated
  @User_Interface
  Scenario Outline: TC624355 - [RL0] Author SPA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    And I am using the "eif-basic-contract.json" flow
    When I author a contract using the following contract information
      | MPIN          | <mpin>          |
      | TIN           | <tin>           |
      | Market Number | <market number> |
      | County        | <county>        |
      | Paper Type    | SPA             |
      | Phycon        | <phycon>        |
      | Fee Schedule  | <fee>           |
    Then I have an active contract in Exari
    Examples:
      | site          | mpin    | tin       | market number | phycon | fee      | county   |
      | central uhn   | 2239924 | 731624480 | 13476         | 1234   | IN 52716 | clay     |
      | northeast uhn | 2239924 | 731624480 | 45592         | 1234   | IN 52716 | caroline |
      | southeast uhn | 2239924 | 731624480 | 23503         | 1234   | AR 7725  | lee      |
      | west uhn      | 2239924 | 731624480 | 36555         | 1234   | AR 7725  | baker    |

