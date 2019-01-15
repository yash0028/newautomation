# Last updated on 
@US1147681
@releaseUnknown
@iterationUnknown
Feature: US1147681 - Submit Address Add

  @TC564994
  @Automated
  @Functional
  Scenario: TC564994 - [RL0]
    Given a contractor has identified a provider needs a new address
    When they initiate the "Submit Address Add' process
    Then they are presented with the fields identified as "Data to be displayed on the UI" under "Transaction - Address Add" in the "Provider Update-Delta Submission - Data Matrix_CLM" spreadsheet in the Feature.

