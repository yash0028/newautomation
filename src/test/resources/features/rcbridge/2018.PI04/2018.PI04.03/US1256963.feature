# Last updated on 
@US1256963
@2018.PI04
@2018.PI04.03
@MVP
@10/1_Physician
@Priority_1
@CMD
@Amrutha
@F209320
@releasePresent
@iterationPresent
Feature: US1256963 - Update user interface to accommodate new tables

  @TC565856
  @Manual
  @Functional
  @US1256963
  @2018.PI04
  @2018.PI04.03
  Scenario: TC565856 - [RL0]
    Given I have access to the Admin UI page
    When I click on the reference data link
    And I click on the rules table from the drop down menu
    And I click on the show table
    Then I can see the rules table.

