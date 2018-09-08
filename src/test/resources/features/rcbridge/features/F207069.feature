# Last updated on 
@F207069
Feature: F207069 - Exari EM - Enable Business Rules

  @US1114661
  Scenario: US1114661 - Single Organizational Unit Owner
    Given I am the Entity Management Solution
    When a User attempts to add a second Owner to an Entity
    Then the User can change the Entity Owner to a different Owner
    And the Entity can not have two active Owners at the same time

  @US1179398
  Scenario: US1179398 - Messenger Model IPA
    Given I am a User
    When I create a relationship between an Entity and a Messenger Model IPA
    Then I can select Affiliated Relationship Type
    And I can not select Owned Relationship Type

  @US1114656
  Scenario: US1114656 - Single TIN Owner
    Given I am the Entity Management Solution
    When a User attempts to add a second Owner to a TIN
    Then the User can change the TIN Owner to a different Owner
    And the TIN can not have two active Owners at the same time

  @US1114662
  Scenario: US1114662 - Legal TIN Owner
    Given I am the Entity Management Solution
    When a User is adding an Owner to a TIN
    Then the Owner must be the Legal Owner responsible for reporting to the government

  @MVP
  @CLM_UAT
  @US1149316
  Scenario: US1149316 - Entity Type Conflict - Health Organization Umbrella and Organizational Unit
    Given I am the Entity Management Solution
    When a User is selecting an Entity Type
    Then the User is not allowed to select both Health Organization Umbrella and Organizational Unit for the same Entity

  @US1114659
  Scenario: US1114659 - Every TIN has an Owner
    Given I am the Entity Management Solution
    When a TIN does not have an Owner
    Then I require the User to add an Owner to the TIN

