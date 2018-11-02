# Last updated on 
@A_UI_Story
@US1416381
@Exari_UI_Test
@F237915
@releaseUnknown
@iterationUnknown
Feature: US1416381 - Author PAT Contact UI Path

  @TC628786
  @Manual
  @Functional
  @A_UI_Story
  @US1416381
  Scenario Outline: TC628786 - [RL0]
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    When I author a contract using the following contract information
      | MPIN               | <mpin>             |
      | TIN                | <tin>              |
      | Market Number      | <market number>    |
      | Paper Type         | PAT                |
      | HBP                | no                 |
      | Phycon             | 1234               |
      | Additional Manuals | no                 |
    Then I have an active contract in Exari
    Examples:
      | site          | mpin          | tin           | market number |
      | central uhn   | 1169005       | 351314341     | 13476         |
      | northeast uhn | 1628713       | 510613164     | 45592         |
      | southeast uhn | 1628713       | 510613164     | 23503         |
      | west uhn      | 1628713       | 510613164     | 36555         |

