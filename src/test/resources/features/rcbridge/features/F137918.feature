# Last updated on 
@Plus
@Priority_1
@F137918
Feature: F137918 - Remove: Exari EM - Migrate Entity Data

  @US861076
  Scenario: US861076 - Acquire Entity Data from existing Sources
    Given I am the Entity Management Solution
    When an existing source contains Entity data
    Then I have the ability to acquire that Entity data from the existing source

  @US861080
  Scenario: US861080 - Make Entity Data Available
    Given I am the Entity Management Solution
    When a User adds or updates Entity information
    Then the Entity information is made available to consuming applications

  @US861079
  Scenario: US861079 - Update and Validate Entity Data
    Given I am a User with access to maintain Entity information
    When I receive Entity data consolidated through automated process
    Then I can update and validate the Entity data
    And I can submit for approval

  @US861077
  Scenario: US861077 - Consolidate Entity Data
    Given I am the Entity Management Solution
    When I receive updated Entity data from a legacy system
    Then I can consolidate this data into a new or existing Entity
    And prepare the consolidated information for review and approval

  @US861078
  Scenario: US861078 - Provide Consolidated Entities for Review
    Given I am the Entity Management Solution
    When I have consolidated Entity data into a new or existing Entity
    Then I can provide the consolidated Entity data to a User for review

