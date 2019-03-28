# Last updated on 
@US1664233
@releaseUnknown
@iterationUnknown
Feature: US1664233 - Update Status Values to Display Based on Record Type

  @TC760603
  @Manual
  @Functional
  Scenario: TC760603 - [RL0]
    #Scenario 1: Display Statuses based on Record Type
    Given I am changing the status of a Cred Cycle
    When I am in a Record Type as indicated in the attached spreadsheet
    Then I will now see the status selections based on the Record Type

  @TC760625
  @Manual
  @Functional
  Scenario: TC760625 - [RL1]
    #Scenario 2: Remove Status Codes
    Given I am changing the status of a Cred Cycle
    When I am in a Record Type of 'Initial Practitioner RFP'
    Then I will no longer see the status selections which are highlighted in red, as these are no longer necessary and can be removed from the application

