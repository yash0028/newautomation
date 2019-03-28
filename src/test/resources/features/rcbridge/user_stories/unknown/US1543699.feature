# Last updated on 
@US1543699
@releaseUnknown
@iterationUnknown
Feature: US1543699 - Update Salesforce RFP Intake Point

  @TC760614
  @Manual
  @Functional
  Scenario: TC760614 - [RL0]
    #Scenario 1: Change URL Intake
    Given A practitioner has completed the new 'SMARTform' RFP
    When The system is retrieving that information
    Then The system will now pull from the weblink URL (to be provided by Team Winnebago)

