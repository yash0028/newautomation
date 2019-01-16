# Last updated on 
@US1147688
@releaseUnknown
@iterationUnknown
Feature: US1147688 - Submit Address inactivation

  @TC703877
  @Manual
  @Functional
  Scenario: TC703877 - [RL0]
    Given a contractor has identified a provider needs an address inactivation
    When they initiate the "Submit Address Inactivation"' process
    Then they are presented with the fields identified as "Data to be displayed on the UI" under "Transaction - Address Inactivate" in the "Provider Update-Delta Submission - Data Matrix_CLM" spreadsheet in the Feature.

