# Last updated on 
@US1256963
@2018.PI04
@2018.PI04.03
@releaseUnknown
@iterationUnknown
Feature: US1256963 - Update user interface to accommodate rules table

  @CLM_UAT
  @TC658884
  @Manual
  @Acceptance
  Scenario: TC658884 - Verify whether user is able to view,upload and download rule table doc
    Given I have access to the Admin UI page
    When I click on the reference data link
    And I click on the rules table from the drop down menu
    And I click on the show table
    Then I can see the rules table

  @TC565856
  @Manual
  @Functional
  Scenario: TC565856 - [RL0]
    Given I have access to the Admin UI page
    When I click on the reference data link
    And I click on the rules table from the drop down menu
    And I click on the show table
    Then I can see the rules table.

