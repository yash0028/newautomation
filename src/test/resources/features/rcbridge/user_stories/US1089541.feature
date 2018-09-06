# Last updated on 
@MVP
@EXARI-11267
@CLM_UAT
@US1089541
@2018.PI03
Feature: US1089541 - Inactivate Operating License Type

  @TC564969
  @Automated
  @Functional
  Scenario: TC564969 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Operating License Type listed on an Entity
    Then I can inactivate the Operating License Type for an Entity
    And the updated Entity enters the approval process workflow

