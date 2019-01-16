# Last updated on 
@US1147693
@releaseUnknown
@iterationUnknown
Feature: US1147693 - Submit Practice Profile Professional ID's NPI

  @TC703885
  @Manual
  @Functional
  Scenario: TC703885 - [RL0]
    Given a contractor has identified a provider has an NPI change
    When they initiate the "Submit Practice Profile Professional ID's NPI' process
    Then they are presented with the fields identified as "Data to be displayed on the UI" under "Transaction - NPI" in the "Provider Update-Delta Submission - Data Matrix_CLM" spreadsheet in the Feature.

