# Last updated on 
@US1576589
@2019_PI01
@2019.PI01.03
@releasePresent
@iterationPast
Feature: US1576589 - Convert necessary Visualforce pages - Part 4

  @TC760610
  @Manual
  @Functional
  Scenario: TC760610 - [RL0]
    #Scenario 1: Goodbye
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'Goodbye'
    Then The page will load as expected with no adverse reactions

  @TC760627
  @Manual
  @Functional
  Scenario: TC760627 - [RL1]
    #Scenario 2: IdeasHome
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'IdeasHome'
    Then The page will load as expected with no adverse reactions

  @TC760639
  @Manual
  @Functional
  Scenario: TC760639 - [RL2]
    #Scenario 3: EmailBody
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'EmailBody'
    Then The page will load as expected with no adverse reactions

  @TC760653
  @Manual
  @Functional
  Scenario: TC760653 - [RL3]
    #Scenario 4: Exception
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'Exception'
    Then The page will load as expected with no adverse reactions

  @TC762741
  @Manual
  @Functional
  Scenario: TC762741 - [RL4]
    #Scenario 5: ChecklistPractitionerRecred
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'ChecklistPractitionerRecord'
    Then The page will load as expected with no adverse reactions

