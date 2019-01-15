# Last updated on 
@US1147697
@releaseUnknown
@iterationUnknown
Feature: US1147697 - Submit Practice Profile Specialty

  @TC565512
  @Automated
  @Functional
  Scenario: TC565512 - [RL0]
    Given a contractor has identified a provider needs a specialty change
    When they initiate the "Submit Practice Profile Specialty' process
    Then they are presented with the fields identified as "Data to be displayed on the UI" under "Transaction - Specialty" in the "Provider Update-Delta Submission - Data Matrix_CLM" spreadsheet in the Feature.

