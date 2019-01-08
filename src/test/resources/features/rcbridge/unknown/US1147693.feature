# Last updated on 
@US1147693
@MVP
@PhyCon
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1147693 - Submit Practice Profile Professional ID's NPI

  @TC565599
  @Automated
  @Functional
  Scenario: TC565599 - [RL0]
    Given a contractor has identified a provider has an NPI change
    When they initiate the "Submit Practice Profile Professional ID's NPI' process
    Then they are presented with the fields identified as "Data to be displayed on the UI" under "Transaction - NPI" in the "Provider Update-Delta Submission - Data Matrix_CLM" spreadsheet in the Feature.

