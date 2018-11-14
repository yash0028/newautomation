# Last updated on 
@A_UI_Story
@US1407216
@Exari_UI_Test
@releaseUnknown
@iterationUnknown
Feature: US1407216 - Author SPA Contact UI Path

  @TC624355
  @Manual
  @Functional
  @A_UI_Story
  Scenario Outline: TC624355 - [RL0] Author SPA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    When I author a contract using the following contract information
      | MPIN               | <mpin>             |
      | TIN                | <tin>              |
      | Market Number      | <market number>    |
      | Paper Type         | SPA                |
      | HBP                | no                 |
      | Phycon             | 1234               |
      | Fee Schedule       | IN 52716           |
      | Additional Manuals | no                 |
    Then I have an active contract in Exari
    Examples:
      | site          | mpin          | tin           | market number |
      | central uhn   | 1169005       | 351314341     | 13476         |
      | northeast uhn | 1628713       | 510613164     | 45592         |
      | southeast uhn | 1628713       | 510613164     | 23503         |
      | west uhn      | 1628713       | 510613164     | 36555         |

