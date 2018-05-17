# Last updated on 2018-04-23T15:19:18.658Z
@MVP
@CLM_Exari
Feature: F137839 - Manage Business Organizations

  @MVP
  @2018.PI01
  @2018.PI01.02
  Scenario: US860745
    Given I am logged into Exari as a Business Administrator,
    When I select the Create Site button,
    Then I am able to enter the Name, Description, and Visibility, and select save.

  @MVP
  @2018.PI01
  @2018.PI01.02
  Scenario: US933396
    Given I am logged into Exari as a Business Administrator,
    When I select the Site button,
    Then I am able to update the Name, Description, and/or Visibility, and select save.

