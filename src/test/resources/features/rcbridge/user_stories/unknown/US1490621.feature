# Last updated on 
@US1490621
@releaseUnknown
@iterationUnknown
Feature: US1490621 - Enhance Cred Cycle Split functionality

  @TC767187
  @Manual
  @Functional
  Scenario: TC767187 - [RL0]
    #Scenario 1: New UI
    Given I need to split a cred cycle due to a partial denial
    When I click on the 'Split Cred Cycle' button
    Then I will be presented with a UI which mimics the UI the Practitioner completed in the SMART form

  @TC767188
  @Manual
  @Functional
  Scenario: TC767188 - [RL1]
    #Scenario 1: Functionality
    Given I need to split a cred cycle due to a partial denial and pushed the 'Split Cred Cycle'
    When I have selected the 'denied' state and LOBs
    Then The system will generate the new cred cycle with the appropriate information

