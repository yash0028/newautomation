# Last updated on 
@US1089508
Feature: US1089508 - Update Entity Address

  @TC565169
  @Automated
  @Functional
  Scenario: TC565169 - [RL0]
    Given I am a User
    When I need to update an Entity Address
    Then I have the ability to update Entity Address
    And the updated Entity enters the approval process workflow

