# Last updated on 
@F207058
Feature: F207058 - Exari EM - Create and Maintain Addresses

  @US1089509
  Scenario: US1089509 - Update Entity Address Type
    Given I am a User
    When I need to update an Entity Address Type
    Then I have the ability to update Entity Address Type
    And the updated Entity enters the approval process workflow

  @US1089508
  Scenario: US1089508 - Update Entity Address
    Given I am a User
    When I need to update an Entity Address
    Then I have the ability to update Entity Address
    And the updated Entity enters the approval process workflow

  @US922827
  Scenario: US922827 - Inactivate Entity Address
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Address listed on an Entity
    Then I can inactivate the Address for an Entity
    And the updated Entity enters the approval process workflow

