# Last updated on 
@US1543583
@2019_PI01
@2019.PI01.03
@releasePresent
@iterationPast
Feature: US1543583 - Convert necessary Visualforce pages - Part 1

  @TC753546
  @Manual
  @Functional
  Scenario: TC753546 - [RL0] Verify Add Cred Exception
    #Scenario 1: AddCredException
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'AddCredException'
    Then The page will load as expected with no adverse reactions

  @TC753548
  @Manual
  @Functional
  Scenario: TC753548 - [RL1] Verify Answers Home Component
    #Scenario 2: AnswersHome
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'AnswersHome'
    Then The page will load as expected with no adverse reactions

  @TC753549
  @Manual
  @Functional
  Scenario: TC753549 - [RL2] Verify Change Password
    #Scenario 3: ChangePassword
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'ChangePassword'
    Then The page will load as expected with no adverse reactions

  @TC753550
  @Manual
  @Functional
  Scenario: TC753550 - [RL3] Verify Communities Landing Component
    #Scenario 4: CommunitiesLanding
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'CommunitiesLanding'
    Then The page will load as expected with no adverse reactions

  @TC753551
  @Manual
  @Functional
  Scenario: TC753551 - [RL4] Verify Checklist Facility Component
    #Scenario 5: ChecklistFacility
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'ChecklistFacility'
    Then The page will load as expected with no adverse reactions

