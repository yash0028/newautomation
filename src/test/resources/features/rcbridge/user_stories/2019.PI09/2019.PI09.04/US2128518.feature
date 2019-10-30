# Last updated on 
@Suman
@US2128518
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US2128518 - Choosing a Primary Contract

  @TC1024269
  @Manual
  @Functional
  @Suman
  Scenario: TC1024269 - [RL0]
    Given a physician negotiation exists with multiple deal IDs
    When the create negotiation record is viewed
    Then one deal ID is selected as primary
    And there is no functionality to choose primary market
    And upon completion if a deal ID is not selected as primary, the task can't be completed and an error is shown, "Please select a Deal ID as primary."
    And a message appears, "Your negotiation includes multiple deal IDs. You must choose a primary contract for reporting, emails and approvals."

  @TC1025767
  @Manual
  @Functional
  @Suman
  Scenario: TC1025767 - [RL1]
    Given a standalone retro approval exists with multiple deal IDs
    When the provide retro details task is viewed
    Then one one deal ID is selected as primary
    And there is no functionality to choose primary market
    And upon completion if a deal ID is not selected as primary, the task can't be completed and an error is shown, "Please select a Deal ID as primary."
    And a message appears, "Your negotiation includes multiple deal IDs. You must choose a primary contract for reporting, emails and approvals."

