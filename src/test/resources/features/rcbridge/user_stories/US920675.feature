# Last updated on 
@MVP
@CLM_UAT
@EXARI-11274
@US920675
@2018.PI03
Feature: US920675 - Perform Search by Inactive Entities

  @TC564747
  @Automated
  @Functional
  Scenario: TC564747 - [RL0]
    Given I am a User with access to view and maintain Entity information
    When I want to find an Inactive Entity
    Then I can limit my Entity search to include only Inactive Entities
    And the system returns only Inactive Entities

