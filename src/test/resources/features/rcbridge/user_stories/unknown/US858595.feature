# Last updated on 
@MVP
@EXARI-11267
@CLM_UAT
@US858595
Feature: US858595 - Update Entity Name

  @TC565492
  @Automated
  @Functional
  Scenario: TC565492 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to update an Entity Name
    Then I have the ability to expire the current Entity Name
    And I have the ability to enter a new Entity Name

