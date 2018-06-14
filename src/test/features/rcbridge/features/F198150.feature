# Last updated on 2018-06-13T20:06:04.706Z

Feature: F198150 - Removed stories

  @MVP
  @2018.PI03
  Scenario: US1089924
    Given I am the Entity Management Solution
    When a User updates an Identifier to an Entity
    Then I check the Identifier for the presence of an Owner
    And I display Owner associated to the Identifier
    And the User must select the existing Owner for the Identifier or assign new Owner if not present

  @MVP
  @EXARI-11249
  @2018.PI03
  Scenario: US1089668
    Given I am the Entity Management Solution
    When a User updates an Identifier on an Entity
    Then I perform field validation to ensure the Identifier was entered in the correct format based on Identifier Type selected
    And I must perform a duplicate check on the Identifier

  @2018.PI03
  Scenario: US1089508
    Given I am a User
    When I need to update an Entity Address
    Then I have the ability to update Entity Address
    And the updated Entity enters the approval process workflow

  @2018.PI03
  Scenario: US1089526
    Given I am the Entity Management Solution
    When A User updates an Entity Address
    Then I perform a duplicate check on Entity Address
    And I display duplicates
    And User has ability to override duplicate or select from the potential duplicate list

  @MVP
  @EXARI-11249
  @2018.PI03
  Scenario: US1089624
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    Then I perform field validation to ensure the Identifier was entered in the correct format based on Identifier Type selected
    And I perform a duplicate check on the new Identifier

  @MVP
  @2018.PI03
  Scenario: US1089630
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    Then I check the Identifier for the presence of an Owner
    And I display Owner associated to the Identifier
    And the User must select the existing Owner for the Identifier or assign new Owner if not present

  @MVP
  @2018.PI03
  Scenario: US1089633
    Given I am a User with access to maintain Entity information
    When I want to add an Owner to an Identifier
    Then I can access the Identifier
    And I can search for an Entity to establish as the new Owner
    And Entities matching my search are displayed
    And I can select an Entity from search results to establish as the new Owner
    And I can enter the effective date for the new Identifier Owner
    And Effective date can be in the future or retroactive
    And Standard field validation rules applied
    And An Identifier must only have one active Owner at a time
    And the updated Identifier enters the approval process workflow

  @MVP
  @EXARI-11274
  @2018.PI03
  Scenario: US1089525
    Given I am the Entity Management Solution
    When A User updates an Entity Identifier
    Then I perform a duplicate check on Entity Identifier
    And I display duplicates
    And User must select existing Entity Identifier from the duplicate list or keep current Entity Identifier if no duplicates

  @MVP
  @2018.PI03
  Scenario: US955716
    Given I am a User with access to maintain Entity information
    When I need to change the Owner of an Identifier
    Then I must access the Identifier
    And I can inactivate the current Owner
    And Inactivation date can be in the future or retroactive
    And Standard field validation rules apply
    And I must select a new Owner

  @MVP
  @EXARI-11274
  @2018.PI03
  Scenario: US1089628
    Given I am the Entity Management Solution
    When a User updates an Identifier to an Entity
    Then I check for duplicate Identifiers
    And if Identifier exists, the User receives a notification to use existing Identifier
    And if Identifier does not exist, the User is allowed to proceed and create new
    And the User is required to assign an Owner to the Identifier

  @MVP
  @EXARI-11274
  @2018.PI03
  Scenario: US1089625
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    And I have performed field validation
    Then I check for duplicate Identifiers
    And if Identifier exists, the User receives a notification to use existing Identifier
    And if Identifier does not exist, the User is allowed to proceed and create new
    And the User is required to assign an Owner to the Identifier

  @2018.PI03
  Scenario: US922827
    Given I am a User with access to maintain Entity information
    When I need to inactivate an Address listed on an Entity
    Then I can inactivate the Address for an Entity
    And the updated Entity enters the approval process workflow

  @2018.PI03
  Scenario: US1089509
    Given I am a User
    When I need to update an Entity Address Type
    Then I have the ability to update Entity Address Type
    And the updated Entity enters the approval process workflow

  @MVP
  @EXARI-11249
  @EXARI-11267
  @2018.PI03
  Scenario: US1089944
    Given I am a User with access to maintain Entity information
    When I update an Identifier on an Entity
    Then I must enter Effective date
    And Effective date applies only to the Identifier relationship with the Entity
    And Effective date can be in the future or retroactive
    And the updated Entity enters the approval process workflow

  @MVP
  @EXARI-11249
  @EXARI-11267
  @2018.PI03
  Scenario: US858616
    Given I am a User with access to maintain Entity information
    When I add an Identifier to an Entity
    Then I must access the Entity
    And I must select an Identifier Type to define the type of Identifier I am adding
    And I can enter an Identifier

