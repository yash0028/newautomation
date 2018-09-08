# Last updated on 
@MVP
@CLM_UAT
@US922850
Feature: US922850 - Inactivate Entity Characteristic Detail

  @TC565624
  @Automated
  @Functional
  Scenario: TC565624 - [RL0]
    Given I am a User with access to maintain Entities
    When I want to inactivate characteristic information on an Entity
    Then I can inactivate Entity characteristic information on the Entity

