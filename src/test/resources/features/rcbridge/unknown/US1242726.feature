# Last updated on 
@US1242726
@releaseUnknown
@iterationUnknown
Feature: US1242726 - View Contract Config Product Rate Groups (contract masters)

  @TC565419
  @Automated
  @Functional
  @US1242726
  Scenario: TC565419 - [RL0]
    Given an Exari contract order is initiated
    When the contract 'Active' event occurs in Exari
    Then an Exari UCM record is generated

