# Last updated on 
@US1356374
@2018.PI04
@2018.PI04.04
@CMD
@Priority_2
@F224328
@releasePresent
@iterationFuture
Feature: US1356374 - Product Rate Condition enrichment

  @TC600538
  @Manual
  @Functional
  @US1356374
  @2018.PI04
  @2018.PI04.04
  Scenario: TC600538 - [RL1]
    Given there is a product rate condition on the contract
    When the condition does NOT include Provider Specialty, Role, Type (NPPA) or combination thereof
    Then the TaxonomyLookup transaction service will NOT be required to process each provider record
    ###

  @TC596318
  @Manual
  @Functional
  @US1356374
  @2018.PI04
  @2018.PI04.04
  Scenario: TC596318 - [RL0]
    Given there is a product rate condition on the contract
    When the condition includes Provider Specialty, Role, Type (NPPA) or combination thereof
    Then the TaxonomyLookup transaction service will be required to process each provider record

