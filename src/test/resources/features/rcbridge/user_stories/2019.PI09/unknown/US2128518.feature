# Last updated on 
@US2128518
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US2128518 - Choosing a Primary Contract

  @TC1024269
  @Manual
  @Functional
  Scenario: TC1024269 - [RL0]
    Given a physician negotiation exists with multiple deal IDs
    When the create negotiation record is viewed
    Then one deal ID is selected as primary
    And there is no functionality to choose primary market
    And upon completion if a deal ID is not selected as primary, the task can't be completed and an error is shown, "Please select a Deal ID as primary."

