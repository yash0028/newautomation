# Last updated on 
@US1242726
Feature: US1242726 - View Contract Config Product Rate Groups (contract masters)

  @TC565419
  @Automated
  @Functional
  Scenario: TC565419 - [RL0]
    Given an Exari contract order is initiated
    When the contract 'Active' event occurs in Exari
    Then an Exari UCM record is generated

