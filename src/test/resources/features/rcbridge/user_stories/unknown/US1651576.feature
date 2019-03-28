# Last updated on 
@US1651576
@releaseUnknown
@iterationUnknown
Feature: US1651576 - Update Profile Views

  @TC760616
  @Manual
  @Functional
  Scenario: TC760616 - [RL1]
    #Scenario 2: NCC Processors Offshore
    Given I am an NCC Processor Offshore
    When I am in the new instance of Salesforce
    Then I will no longer see the 'Reports' tab, as I do not have access to this data

