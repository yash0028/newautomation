# Last updated on 
@A_UI_Story
@US1499284
@2018.PI05
@2018.PI05.03
@releasePresent
@iterationPast
Feature: US1499284 - [Continued] UI/UX- New web Page for CMD page displaying all Type 2 errors and related activities Wire frames only

  @TC683866
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC683866 - [RL1]
    Given a contract has multiple errors on the same contract line
    Then the contract error history data is stored in a report-able format
    And the contract error history is retained within the database

  @TC683867
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC683867 - [RL2]
    Given a contract has errors
    When a user clicks to view a listing of the errors that exist
    Then the errors will be listed in a page larger than a popup window
    And the listing will be able to accommodate many rows of errors in a easily view-able format
    And the list should be exportable to xls or txt format

