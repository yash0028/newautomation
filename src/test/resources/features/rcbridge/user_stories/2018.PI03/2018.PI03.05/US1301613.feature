# Last updated on 
@A_UI_Story
@US1301613
@2018.PI03
@2018.PI03.05
@MVP
@10/1_Physician
@Priority_1
@CMD
@F205820
Feature: US1301613 - CMD Dashboard buttons

  @TC574136
  @Automated
  @Functional
  @A_UI_Story
  @US1301613
  @2018.PI03
  @2018.PI03.05
  Scenario: TC574136 - [RL0]
    Given I have entered the CMD dashboard URL
    And I am recognized as a contract administrator with access to CMD
    When The dashboard page loads
    Then I can see the following buttons "Completed, In-Progress, Action Required, Errors"

