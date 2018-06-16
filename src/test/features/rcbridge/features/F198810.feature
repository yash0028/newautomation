# Last updated on 2018-06-15T17:47:37.796Z

Feature: F198810 - Import Tax ID Verification Data

  Scenario: US1171452
    Given I am the Entity Management Solution
    When a User uploads a file of validated Tax IDs
    Then I find matching Tax IDs stored in the Entity Management Solution

  Scenario: US1171480
    Given I am the Entity Management Solution
    When a Tax ID on the Tax ID Validation File was not found in the Entity Management Solution
    And when a Tax ID on the Tax ID Validation File was not updated correctly in the Entity Management Solution
    Then I generate an error log listing the Tax ID updates that were not executed correctly
    And a User can export the error log

  Scenario: US1171453
    Given I am the Entity Management Solution
    When a User uploads a Tax ID Validation File
    Then I update the Date Verified field associated with the Tax ID with the current date/date provided in the Tax ID Validation File

  Scenario: US1171454
    Given I am the Entity Management Solution
    When a User uploads a Tax ID Validation File
    Then I update the Validation Status field associated with the Tax ID from "Pending Validation" to "Validated"

  Scenario: US1171451
    Given I am a User with access to maintain Entity information
    When I want to validate Tax ID information for multiple Tax IDs
    Then I can upload a file of validated Tax IDs into the Entity Management Solution
    And the Entity Management Solution updates Tax ID validation information

  Scenario: US1171457
    Given I am the Entity Management Solution
    When a User uploads a Tax ID Validation File
    And I update Tax ID Validation field values
    Then I capture the date and time of the update
    And I capture the User who performed the change

