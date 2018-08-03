# Last updated on 2018-08-03T13:20:35.808Z

Feature: F207050 - Exari EM - Check for Duplicates

  @MVP
  @CLM_UAT
  @EXARI-11274
  @2018.PI03
  Scenario: US1080995
    Given I am the Entity Management Solution
    When A User updates an Entity Name
    Then I perform a duplicate check on Entity Name
    And I display duplicates
    And User has ability to override duplicate or select from the potential duplicate list

  @EXARI-11274
  Scenario: US1089628
    Given I am the Entity Management Solution
    When a User updates an Identifier to an Entity
    Then I check for duplicate Identifiers
    And if Identifier exists, the User receives a notification to use existing Identifier
    And if Identifier does not exist, the User is allowed to proceed and create new
    And the User is required to assign an Owner to the Identifier

  Scenario: US1089526
    Given I am the Entity Management Solution
    When A User updates an Entity Address
    Then I perform a duplicate check on Entity Address
    And I display duplicates
    And User has ability to override duplicate or select from the potential duplicate list

  @EXARI-11274
  Scenario: US1089625
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    And I have performed field validation
    Then I check for duplicate Identifiers
    And if Identifier exists, the User receives a notification to use existing Identifier
    And if Identifier does not exist, the User is allowed to proceed and create new
    And the User is required to assign an Owner to the Identifier

  @MVP
  @CLM_UAT
  @EXARI-11274
  @2018.PI03
  Scenario: US949053
    Given I am the Entity Management Solution
    When A User adds an Entity
    Then I perform a duplicate check on Entity Name
    And I display duplicates
    And User has ability to override duplicate or select from the potential duplicate list for Entity Name

  @EXARI-11274
  Scenario: US1089525
    Given I am the Entity Management Solution
    When A User updates an Entity Identifier
    Then I perform a duplicate check on Entity Identifier
    And I display duplicates
    And User must select existing Entity Identifier from the duplicate list or keep current Entity Identifier if no duplicates

