# Last updated on 
@A_UI_Story
@RC_No_Link
@US1398051
@releaseUnknown
@iterationUnknown
Feature: US1398051 - Create initial ui tests

  @TC730581
  @Manual
  @Functional
  @A_UI_Story
  @RC_No_Link
  Scenario Outline: TC730581 - [RL0]
    Given I am logged into Exari Dev as a valid user
    And I am on the "<site>" site
    Then I confirm on am on the "<site>" landing page
    Examples:
      | site          |
      | test          |
      | central uhn   |
      | northeast uhn |
    #| southeast uhn |
    #| west |
    #| national |

