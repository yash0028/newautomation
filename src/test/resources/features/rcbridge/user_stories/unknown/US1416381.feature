# Last updated on 
@A_UI_Story
@US1416381
@N/A
@Exari_UI_Test
@Non_MVP
@releaseUnknown
@iterationUnknown
Feature: US1416381 - Author PAT Contact UI Path

  @TC628786
  @Automated
  @User_Interface
  @A_UI_Story
  Scenario Outline: TC628786 - [RL0]
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    And I am using the "eif-basic-contract.json" flow
    When I author a contract using the following contract information
      | MPIN               | <mpin>             |
      | TIN                | <tin>              |
      | Market Number      | <market number>    |
      | State              | <state>            |
      | Paper Type         | PAT                |
      | HBP                | no                 |
      | Phycon             | <phycon>           |
      | Fee Schedule       | <fee>              |
      | Product            | <product>          |
      | Additional Manuals | no                 |
    Then I have an active contract in Exari
    Examples:
      | site          | mpin          | tin           | state         | market number | phycon        | fee           | product       |
      | central uhn   | 2239924       | 731624480     | IA            | 13476         | 1234          | IN 52716      | 1             |
      | northeast uhn | 2239924       | 731624480     | NY            | 45592         | 1234          | IN 52716      | 1             |
      | southeast uhn | 2239924       | 731624480     | AR            | 23503         | 1234          | AR 7725       | 1             |
      | west uhn      | 2239924       | 731624480     | CA            | 36555         | 1234          | AR 7725       | 1             |

