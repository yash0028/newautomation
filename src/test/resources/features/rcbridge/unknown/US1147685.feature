# Last updated on 
@US1147685
@MVP
@PhyCon
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1147685 - Submit Address Change

  @TC565362
  @Automated
  @Functional
  Scenario: TC565362 - [RL0]
    Given a contractor has identified a provider needs an address change
    When they initiate the "Submit Address Change' process
    Then they are presented with the fields identified as "Data to be displayed on the UI" under "Transaction - Address Change Address" in the "Provider Update-Delta Submission - Data Matrix_CLM" spreadsheet in the Feature.

