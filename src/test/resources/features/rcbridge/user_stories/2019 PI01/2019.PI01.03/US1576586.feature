# Last updated on 
@US1576586
@2019_PI01
@2019.PI01.03
@releasePresent
@iterationPast
Feature: US1576586 - Convert necessary Visualforce pages - Part 3

  @TC754205
  @Manual
  @Functional
  Scenario: TC754205 - [RL0] Verify the Visualforce page 'ForgotPassword'
    #Scenario 1: ForgotPassword
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'ForgotPassword'
    Then The page will load as expected with no adverse reactions

  @TC756481
  @Manual
  @Functional
  Scenario: TC756481 - [RL1] Verify the Visualforce page 'ForgotPasswordConfirm'
    #Scenario 2: ForgotPasswordConfirm
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'ForgotPasswordConfirm'
    Then The page will load as expected with no adverse reactions

  @TC756500
  @Manual
  @Functional
  Scenario: TC756500 - [RL2] verify the Visualforce page 'GettingStartedPage'
    #Scenario 3: GettingStartedPage
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'GettingStartedPage'
    Then The page will load as expected with no adverse reactions

  @TC756503
  @Manual
  @Functional
  Scenario: TC756503 - [RL3] Verify the Visualforce page 'ChecklistPractitioner'
    #Scenario 4: ChecklistPractitioner
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'ChecklistPractitioner'
    Then The page will load as expected with no adverse reactions

