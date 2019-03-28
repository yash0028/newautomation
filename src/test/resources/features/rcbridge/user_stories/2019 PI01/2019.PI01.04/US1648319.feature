# Last updated on 
@US1648319
@2019_PI01
@2019.PI01.04
@releasePresent
@iterationPresent
Feature: US1648319 - Convert necessary Visualforce pages - Part 7

  @TC760613
  @Manual
  @Functional
  Scenario: TC760613 - [RL0]
    #Scenario 1: MyProfilePage
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'MyProfilePage'
    Then The page will load as expected with no adverse reactions

  @TC760633
  @Manual
  @Functional
  Scenario: TC760633 - [RL1]
    #Scenario 2: NewRFP
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'NewRFP'
    Then The page will load as expected with no adverse reactions

  @TC760644
  @Manual
  @Functional
  Scenario: TC760644 - [RL2]
    #Scenario 3: NewRFP_Identify
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'NewRFP_Identify'
    Then The page will load as expected with no adverse reactions

  @TC760655
  @Manual
  @Functional
  Scenario: TC760655 - [RL3]
    #Scenario 4: ViewRFP
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'ViewRFP'
    Then The page will load as expected with no adverse reactions

