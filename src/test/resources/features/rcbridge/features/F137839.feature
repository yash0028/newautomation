# Last updated on 
@MVP
@CLM_Exari
@F137839
Feature: F137839 - Manage Business Organizations

  @MVP
  @US860745
  @2018.PI01
  Scenario: US860745 - Setup Business Organizations
    Given I am logged into Exari as a Business Administrator,
    When I select the Create Site button,
    Then I am able to enter the Name, Description, and Visibility, and select save.

  @MVP
  @US933396
  @2018.PI01
  Scenario: US933396 - Update Business Organizations
    Given I am logged into Exari as a Business Administrator,
    When I select the Site button,
    Then I am able to update the Name, Description, and/or Visibility, and select save.

