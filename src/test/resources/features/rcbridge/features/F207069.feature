# Last updated on 2018-08-06T18:33:28.510Z

Feature: F207069 - Exari EM - Enable Business Rules

  Scenario: US1114661
    Given I am the Entity Management Solution
    When a User attempts to add a second Owner to an Entity
    Then the User can change the Entity Owner to a different Owner
    And the Entity can not have two active Owners at the same time

  @2018.PI03
  Scenario: US1179398
    Given I am a User
    When I create a relationship between an Entity and a Messenger Model IPA
    Then I can select Affiliated Relationship Type
    And I can not select Owned Relationship Type

  Scenario: US1114656
    Given I am the Entity Management Solution
    When a User attempts to add a second Owner to a TIN
    Then the User can change the TIN Owner to a different Owner
    And the TIN can not have two active Owners at the same time

  Scenario: US1114662
    Given I am the Entity Management Solution
    When a User is adding an Owner to a TIN
    Then the Owner must be the Legal Owner responsible for reporting to the government

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1149316
    Given I am the Entity Management Solution
    When a User is selecting an Entity Type
    Then the User is not allowed to select both Health Organization Umbrella and Organizational Unit for the same Entity

  Scenario: US1114659
    Given I am the Entity Management Solution
    When a TIN does not have an Owner
    Then I require the User to add an Owner to the TIN

