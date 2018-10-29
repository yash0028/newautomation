# Last updated on 
@A_UI_Story
@US1407216
@Exari_UI_Test
@F237915
@releaseUnknown
@iterationUnknown
Feature: US1407216 - Author SPA Contact UI Path

  @TC624355
  @Manual
  @Functional
  @A_UI_Story
  @US1407216
  Scenario Outline: TC624355 - [RL0]
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    When I author a contract using the following contract information
      | MPIN               | <mpin>             |
      | Market Number      | <market number>    |
      | Paper Type         | <paper type>       |
      | HBP                | no                 |
      | Phycon             | 1234               |
      | Additional Manuals | no                 |
    Then I have an active contract in Exari
    Examples:
      | site          | mpin          | market number | paper type    |
      | central uhn   | 1000470       | 35551         | SPA           |

