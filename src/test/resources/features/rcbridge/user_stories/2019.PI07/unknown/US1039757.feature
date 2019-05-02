# Last updated on 
@US1039757
@2019.PI07
@releasePresent
@iterationUnknown
Feature: US1039757 - Report - Find all contracts with retro approval

  @TC565546
  @Automated
  @Functional
  Scenario: TC565546 - [RL0]
    Given a retro approval request exists
    When a user is in reporting
    Then it appears on a report called "All Retro Approval Requests"
    And all Retro Approval Requests are on the report
    And it contains all details from the retro workflow (every field is shown)
    And it contains the current open task(s)

  @TC806231
  @Manual
  @Functional
  Scenario: TC806231 - [RL1]
    Given a retro approval request exists
    When a user is in reporting
    Then it appears on a report called "All Open Retro Approval Requests"
    And all open Retro Approval Requests are on the report
    And it contains all details from the retro workflow (every field is shown)
    And it contains the current open task(s)

  @TC806232
  @Manual
  @Functional
  Scenario: TC806232 - [RL2]
    Given a retro approval request exists
    When a user is in reporting
    Then it appears on a report called "All Closed Retro Approval Requests"
    And all closed Retro Approval Requests are on the report
    And it contains all details from the retro workflow (every field is shown)

  @TC806233
  @Manual
  @Functional
  Scenario: TC806233 - [RL3]
    Given a retro approval request report exists
    When a user is viewing the data
    Then the data can be filtered by any of the details on the report

