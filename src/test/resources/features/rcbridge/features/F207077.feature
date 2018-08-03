# Last updated on 2018-08-03T13:20:36.071Z

Feature: F207077 - Exari EM - Identifier Maintenance

  Scenario: US950017
    Given I am a User with access to maintain Entity information
    When I need to void the relationship between an Identifier and an Entity
    Then I can enter an end date to terminate the relationship between the Identifier and the Entity

  Scenario: US955716
    Given I am a User with access to maintain Entity information
    When I need to change the Owner of an Identifier
    Then I must access the Identifier
    And I can inactivate the current Owner
    And Inactivation date can be in the future or retroactive
    And Standard field validation rules apply
    And I must select a new Owner

  Scenario: US1090067
    Given I am a User with access to maintain Entity information
    When I need to inactivate the relationship between an Identifier and an Entity
    Then I can enter an end date to terminate the active relationship between the Identifier and the Entity
    And the Entity retains the effective and end dates for when it was in an active relationship with the Identifier
    And the Identifier retains the effective and end dates for when it was in an active relationship with the Entity

  @MVP
  @EXARI-11267
  @EXARI-11249
  @CLM_UAT
  @2018.PI03
  Scenario: US1089942
    Given I am a User with access to maintain Entity information
    When I add or update an Identifier relationship to an Entity
    Then I must enter Effective date
    And Effective date applies only to the Identifier relationship with the Entity
    And Effective date can be in the future or retroactive

  Scenario: US1089924
    Given I am the Entity Management Solution
    When a User updates an Identifier to an Entity
    Then I check the Identifier for the presence of an Owner
    And I display Owner associated to the Identifier
    And the User must select the existing Owner for the Identifier or assign new Owner if not present

  @EXARI-11249
  Scenario: US1089668
    Given I am the Entity Management Solution
    When a User updates an Identifier on an Entity
    Then I perform field validation to ensure the Identifier was entered in the correct format based on Identifier Type selected
    And I must perform a duplicate check on the Identifier

  @MVP
  @EXARI-11267
  @CLM_UAT
  @2018.PI03
  Scenario: US955775
    Given I am a User with access to manage Entity information
    When I need to expire an Identifier relationship with an Entity
    Then I must enter an expiration date for the Identifier
    And Inactivation date applies only to the Identifier relationship with the Entity
    And Inactivation date can be in the future or retroactive
    And the Entity retains the effective and end dates for when it was in an active relationship with the Identifier
    And the Identifier retains the effective and end dates for when it was in an active relationship with the Entity

  @EXARI-11249
  @EXARI-11267
  Scenario: US1089944
    Given I am a User with access to maintain Entity information
    When I update an Identifier on an Entity
    Then I must enter Effective date
    And Effective date applies only to the Identifier relationship with the Entity
    And Effective date can be in the future or retroactive
    And the updated Entity enters the approval process workflow

  @EXARI-11249
  Scenario: US1089624
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    Then I perform field validation to ensure the Identifier was entered in the correct format based on Identifier Type selected
    And I perform a duplicate check on the new Identifier

  Scenario: US1089630
    Given I am the Entity Management Solution
    When a User adds an Identifier to an Entity
    Then I check the Identifier for the presence of an Owner
    And I display Owner associated to the Identifier
    And the User must select the existing Owner for the Identifier or assign new Owner if not present

  @EXARI-11249
  @EXARI-11267
  Scenario: US858616
    Given I am a User with access to maintain Entity information
    When I add an Identifier to an Entity
    Then I must access the Entity
    And I must select an Identifier Type to define the type of Identifier I am adding
    And I can enter an Identifier

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

