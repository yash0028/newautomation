# Last updated on 
@US1147699
@releaseUnknown
@iterationUnknown
Feature: US1147699 - Submit Tax ID Inactivation

  @TC703884
  @Manual
  @Functional
  Scenario: TC703884 - [RL0]
    Given a contractor has identified a provider needs a TIN inactivation
    When they initiate the "Submit Tax ID Inactivation" process
    Then they are presented with the fields identified as "Data to be displayed on the UI" under "Transaction - Tax ID - Inactivate" in the "Provider Update-Delta Submission - Data Matrix_CLM" spreadsheet in the Feature.

