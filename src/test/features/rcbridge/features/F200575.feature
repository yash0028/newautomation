# Last updated on 2018-06-21T16:10:51.957Z
@MVP
@Parity
@7.5_Release
Feature: F200575 - Feature for Exari Sprint #4 (Mass Actions)

  @MVP
  @Plus
  @EXARI-11504
  @7.5_Release
  @2018.PI02
  @2018.PI02.04
  Scenario: US1156989
    Given I have created a Mass Action project
    Then I can select a Definition from the provided listing
    And additional details will be viewable

  @MVP
  @EXARI-11592
  @Parity
  @7.5_Release
  @2018.PI02
  @2018.PI02.04
  Scenario: US1156998
    Given I have permissions to access the Mass Actions widget
    When I need to create a new Mass Action
    Then I can create the Mass Action via a User Interface

  @MVP
  @EXARI-11590
  @7.5_Release
  @2018.PI02
  @2018.PI02.04
  Scenario: US1156996
    Given I have access to the Mass Actions widget
    Then I can navigate around the widget
    And I can access all parts of the UI

  @MVP
  @EXARI-11501
  @Parity
  @7.5_Release
  @2018.PI02
  @2018.PI02.04
  Scenario: US1156986
    Given I have access/permissions to the Mass Actions software
    When I need to create a mass action project
    Then I can input a Project Name
    And I can input a Project Description

