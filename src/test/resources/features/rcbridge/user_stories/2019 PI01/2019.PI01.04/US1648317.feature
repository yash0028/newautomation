# Last updated on 
@US1648317
@2019_PI01
@2019.PI01.04
@releasePresent
@iterationPresent
Feature: US1648317 - Convert necessary Visualforce pages - Part 5

  @TC760608
  @Manual
  @Functional
  Scenario: TC760608 - [RL0]
    #Scenario 1: CredCycleProductSplit
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'CredCycleProductSplit'
    Then The page will load as expected with no adverse reactions

  @TC760626
  @Manual
  @Functional
  Scenario: TC760626 - [RL1]
    #Scenario 2: FileNotFound
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'FileNotFound'
    Then The page will load as expected with no adverse reactions

  @TC760641
  @Manual
  @Functional
  Scenario: TC760641 - [RL2]
    #Scenario 3: InMaintenance
    Given I am a Salesforce User
    When I am utilizing the Visualforce page 'InMaintenance'
    Then The page will load as expected with no adverse reactions

