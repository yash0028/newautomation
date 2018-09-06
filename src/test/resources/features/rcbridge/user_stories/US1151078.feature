# Last updated on 
@US1151078
@2018.PI03
Feature: US1151078 - Shared build pipeline for CLM

  @TC565917
  @Automated
  @Functional
  Scenario: TC565917 - [RL0]
    Given a developer wants to deploy a service
    When the developer checks code in
    Then the CICD pipeline will automatically run through desired processes

