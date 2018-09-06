# Last updated on 
@US922831
Feature: US922831 - Inactivate Entity Demographic Info

  @TC565669
  @Automated
  @Functional
  Scenario: TC565669 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to inactivate demographic information on an Entity
    Then I can inactivate Entity demographic information on the Entity
    And the inactivated Entity demographic information enters the approval process workflow

