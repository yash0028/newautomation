# Last updated on 
@US1443968
@2018.PI05
@2018.PI05.01
@releasePast
@iterationPast
Feature: US1443968 - [Enhancement] User Input Required Page - View & Edit contract detail information - Should only accept numerical digits when entering contract master number

  @TC647701
  @Manual
  @Functional
  Scenario: TC647701 - [RL0]
    Given I am on the CMD Action Required page
    When I entered in a contract master number that only contains numeric values
    And I selected use this contract master "always"
    And I have clicked on the submit button
    Then The modal window closes and I am brought back to the CMD action required page with the product grouping information I was editing displayed to me
    And The status of the contract master product grouping is changed to Resolved

  @TC647702
  @Manual
  @Functional
  Scenario: TC647702 - [RL1]
    Given I am on the CMD Action Required page
    When I entered in a contract master number that includes anything other than numeric values
    And I selected use this contract master "always"
    Then the contract master number is invalid
    And the Submit button is not clickable
    And a message is displayed stating 'CONTRACT MASTER NUMBER MUST ONLY INCLUDE NUMERIC DIGITS'

