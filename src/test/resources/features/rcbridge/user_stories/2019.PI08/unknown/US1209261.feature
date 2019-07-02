# Last updated on 
@US1209261
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1209261 - Affiliation

  @TC701694
  @Manual
  @Functional
  Scenario: TC701694 - [RL0]
    Given an Exari contract is active
    When the contract requires a method to identify a group of individuals and/or organizations in order to administer the terms
    Then a CMD set is available to identify and store the means used to identify the provider group

  @TC701709
  @Manual
  @Functional
  Scenario: TC701709 - [RL1]
    Given an Exari contract is active
    When the contract requires a method to identify a group of individuals and/or organizations in order to administer the terms
    Then a list of permissible identification code values is available from which to use

