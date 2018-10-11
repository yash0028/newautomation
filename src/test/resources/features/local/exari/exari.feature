@ExariUITest
@A_UI_Story
Feature: Exari UI Test

  @author @smga
  Scenario: Author SMGA
    Given I am logged into Exari as a valid user
    And I am on the "Test" site
    When I author a SMGA contract in Exari
    Then I have a completed SMGA contract in Exari

  @amend @smga
  Scenario: Amend SMGA
    Given I am logged into Exari as a valid user
    And I am on the "Test" site
    When I amend the most recent SMGA contract in Exari
    Then I have an amended SMGA contract in Exari

  @terminate @smga
  Scenario: Terminate SMGA
    Given I am logged into Exari as a valid user
    And I am on the "Test" site
    When I terminate the most recent SMGA contract in Exari
    Then I have a terminated SMGA contract in Exari
