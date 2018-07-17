# Last updated on 2018-07-16T19:23:35.083Z

Feature: F198150 - Exari EM - Uncategorized

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US858706
    Given I am a User with access to view and maintain Entity information
    When I want to view time lining history for Business Rules
    Then I can view Business Rule effective dates
    And I can view the Business Rule end dates
    And I can view the User who added or removed a Business Rule
    And I can view the date and time of when the User performed the change

  @2018.PI03
  Scenario: US858702
    Given I am an Administrative User
    When I want to create a new Entity relationship rule for an Entity
    And I want to update an existing Entity relationship rule for an Entity
    Then I can create a new Entity relationship rule for an Entity
    And I can update an existing Entity relationship rule for an Entity

  @MVP
  @CLM_UAT
  @2018.PI03
  Scenario: US1168429
    Given I am the Entity Management Solution
    When an active contract is in place for an Identifier to Entity relationship that is being expired
    Then I create a Contracting Event
    And the Contracting Event alerts a Contracting representative that contract maintenance may be required

  @EXARI-11643
  @Non_MVP
  Scenario: US858630
    Given I am a User with access to maintain Entity information
    When I need to archive an existing attachment on an Entity that is no longer valid
    Then I can enter an inactivation date for an attachment on the Entity
    And the Entity Management Solution archives the attachment
    And my User credentials are logged with the action

