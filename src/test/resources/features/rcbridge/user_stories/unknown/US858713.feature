# Last updated on 
@MVP
@CLM_UAT
@EXARI-11274
@US858713
@MVP
@Plus
@Priority_1
@F137676
Feature: US858713 - Perform Search by Entity Attributes

  @TC564380
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11274
  @US858713
  Scenario: TC564380 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to view an Entity
    And I want to maintain an Entity
    Then I can search for an Entity using attributes of that Entity
    And the system displays a list of Entities matching my search criteria

