# Last updated on 
@MVP+1
@US1211073
@releaseUnknown
@iterationUnknown
Feature: US1211073 - Determine Contract Master condition applies

  @TC701692
  @Manual
  @Functional
  @MVP+1
  Scenario: TC701692 - [RL0]
    Given an Exari contract record exists
    When the contract includes one or more products administered on the UNET or COSMOS claim platforms
    Then the contract meets the conditions to use contract master logic

  @TC701711
  @Manual
  @Functional
  @MVP+1
  Scenario: TC701711 - [RL1]
    Given an Exari contract record exists
    When the contract does not include a product administered on the UNET or COSMOS claim platform
    Then the contract does not meet the conditions to use contract master logic

  @TC701719
  @Manual
  @Functional
  @MVP+1
  Scenario: TC701719 - [RL2]
    Given an Exari contract record exists
    When the contract includes one or more networks administered in NDB
    Then the contract meets the conditions to use contract master logic

  @TC701723
  @Manual
  @Functional
  @MVP+1
  Scenario: TC701723 - [RL3]
    Given an Exari contract record exists
    When the contract includes Healthcare Providers which bill on CMS-1500 claim forms
    Then the contract meets the conditions to use contract master logic

