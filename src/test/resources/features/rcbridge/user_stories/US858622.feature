# Last updated on 
@EXARI-11249
@US858622
Feature: US858622 - Update Demographic Info

  @TC565862
  @Automated
  @Functional
  Scenario: TC565862 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to update demographic information on an Entity
    Then I can update Entity demographic information on the Entity
    And the updated Entity demographic information enters the approval process workflow

