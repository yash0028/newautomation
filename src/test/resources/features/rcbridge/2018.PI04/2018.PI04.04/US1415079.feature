# Last updated on 
@US1415079
@2018.PI04
@2018.PI04.04
@releasePresent
@iterationPresent
Feature: US1415079 - Defect - “Use selected contact master #: always” works for a single product group however it does not work for multiple product groups.

  @TC630784
  @Manual
  @Functional
  Scenario: TC630784 - [RL0]
    Given I am on the CMD Action Required page
    When I entered in a contract master number, contract master name, contract system, contract master effective date
    And I selected use this contract master "always"
    And I have clicked on the submit button
    Then The modal window closes and I am brought back to the CMD action required page with the product grouping information I was editing displayed to me
    And The status of the contract master product grouping is changed to contract master selected

