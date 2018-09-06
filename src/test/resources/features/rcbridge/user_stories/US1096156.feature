# Last updated on 
@MVP
@CLM_UAT
@EXARI-11266
@US1096156
@2018.PI03
Feature: US1096156 - Establish Validation Schedule

  @TC565783
  @Automated
  @Functional
  Scenario: TC565783 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to validate an Entity previously located in BIC according to a Validation Schedule
    Then I can validate in the Entity Management Solution according to a Validation Schedule

