# Last updated on 
@US1668411
@releaseUnknown
@iterationUnknown
Feature: US1668411 - Remove Email Alerts

  @TC760605
  @Manual
  @Functional
  Scenario: TC760605 - [RL0]
    #Scenario 1: Remove Email Alerts
    Given I am a Salesforce Admin
    When I am reviewing the different Email Alerts
    Then I will no longer have the Email Alerts trigger from the workflow rules which are highlighted in red, as these are no longer necessary and can be removed from the application

  @TC760630
  @Manual
  @Functional
  Scenario: TC760630 - [RL1]
    #Scenario 2: Remove Salesforce Templates
    Given I am a Salesforce Admin
    When I am reviewing the different Email Alerts and the templates which are generated, but now being removed
    Then I will no longer have these templates available within the system

