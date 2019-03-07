# Last updated on 
@US1600637
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationFuture
Feature: US1600637 - Dynamic Fields on Retro Form

  @TC735863
  @Manual
  @Functional
  Scenario: TC735863 - [RL0]
    Given I am a retro initiator on the retro form
    When I select a specific field on "Associated Workflow"
    Then I get a filtered selection of "Request Type" that only applies to the selected associated workflow (see attachment for list)

  @TC735865
  @Manual
  @Functional
  Scenario: TC735865 - [RL1]
    Given I am a retro initiator on the retro form
    When I select a specific field on "Request Type"
    Then I get a filtered selection of "Root Cause" that only applies to that request type (see attachment for list)

