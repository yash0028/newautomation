# Last updated on 
@US1147686
@releaseUnknown
@iterationUnknown
Feature: US1147686 - Submit Phone or Fax Change

  @TC565034
  @Automated
  @Functional
  Scenario: TC565034 - [RL0]
    Given a contractor has identified a provider needs a new Phone or Fax Change
    When they initiate the "Submit Phone or Fax Change ' process
    Then they are presented with the fields identified as "Data to be displayed on the UI" under "Transaction - Phone Fax" in the "Provider Update-Delta Submission - Data Matrix_CLM" spreadsheet in the Feature.

