# Last updated on 
@US1209261
@releaseUnknown
@iterationUnknown
Feature: US1209261 - Provider Network Group

  @TC565038
  @Automated
  @Functional
  Scenario: TC565038 - [RL0]
    Given an Exari contract is active
    When the contract requires a method to identify a group of individuals and/or organizations in order to administer the terms
    Then a CMD set is available to identify and store the means used to identify the provider group

  @TC565039
  @Automated
  @Functional
  Scenario: TC565039 - [RL1]
    Given an Exari contract is active
    When the contract requires a method to identify a group of individuals and/or organizations in order to administer the terms
    Then a list of permissible identification code values is available from which to use

