# Last updated on 
@US1543582
@2019_PI01
@2019.PI01.02
@releasePresent
@iterationPast
Feature: US1543582 - Convert necessary AppExchange Packages

  @TC745893
  @Manual
  @Functional
  Scenario: TC745893 - [RL0] Verify Salesforce Agile App as Lightning Compliant
    #Scenario 1: Salesforce Agile
    Given I am reviewing the AppExchange package 'Salesforce Agile' (Agile Accelerator)
    When I review the package
    Then The system will now see this package as Lightning compliant

  @TC745894
  @Manual
  @Functional
  Scenario: TC745894 - [RL1] Verify Salesforce Connected App as Lightning Compliant
    #Scenario 2: Salesforce Connected App
    Given I am reviewing the AppExchange package 'Salesforce Connected App'
    When I review the package
    Then The system will now see this package as Lightning compliant

