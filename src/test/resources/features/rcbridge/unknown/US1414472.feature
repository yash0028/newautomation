# Last updated on 
@A_UI_Story
@US1414472
@Exari_UI_Test
@releaseUnknown
@iterationUnknown
Feature: US1414472 - Author SMGA Contact UI Path

  @TC627894
  @Manual
  @Functional
  @A_UI_Story
  Scenario Outline: TC627894 - [RL0] Author SMGA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    When I author a contract using the following contract information
      | MPIN               | <mpin>             |
      | TIN                | <tin>              |
      | Market Number      | <market number>    |
      | Paper Type         | SMGA               |
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

