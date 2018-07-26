# Last updated on 2018-07-13T16:45:36.871Z

Feature: F207058 - Create and Maintain Addresses

  Scenario: US1089509
    Given I am a User
    When I need to update an Entity Address Type
    Then I have the ability to update Entity Address Type
    And the updated Entity enters the approval process workflow

  Scenario: US1089508
    Given I am a User
    When I need to update an Entity Address
    Then I have the ability to update Entity Address
    And the updated Entity enters the approval process workflow

  Scenario: US922827
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Address listed on an Entity
    Then I can inactivate the Address for an Entity
    And the updated Entity enters the approval process workflow

