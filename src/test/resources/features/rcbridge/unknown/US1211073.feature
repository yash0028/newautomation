# Last updated on
@MVP+1
@US1211073
@F205008
@releaseUnknown
@iterationUnknown
Feature: US1211073 - Determine Contract Master condition applies

  @TC565950
  @Automated
  @Functional
  @MVP+1
  @US1211073
  Scenario: TC565950 - [RL2]
    Given an Exari contract record exists
    When the contract includes one or more networks administered in NDB
    Then the contract meets the conditions to use contract master logic

  @TC565949
  @Automated
  @Functional
  @MVP+1
  @US1211073
  Scenario: TC565949 - [RL1]
    Given an Exari contract record exists
    When the contract does not include a product administered on the UNET or COSMOS claim platform
    Then the contract does not meet the conditions to use contract master logic

  @TC565948
  @Automated
  @Functional
  @MVP+1
  @US1211073
  Scenario: TC565948 - [RL0]
    Given an Exari contract record exists
    When the contract includes one or more products administered on the UNET or COSMOS claim platforms
    Then the contract meets the conditions to use contract master logic

  @TC565951
  @Automated
  @Functional
  @MVP+1
  @US1211073
  Scenario: TC565951 - [RL3]
    Given an Exari contract record exists
    When the contract includes Healthcare Providers which bill on CMS-1500 claim forms
    Then the contract meets the conditions to use contract master logic

