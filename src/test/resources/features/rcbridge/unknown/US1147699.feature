# Last updated on 
@US1147699
@MVP
@PhyCon
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1147699 - Submit Tax ID Inactivation

  @TC565664
  @Automated
  @Functional
  Scenario: TC565664 - [RL0]
    Given a contractor has identified a provider needs a TIN inactivation
    When they initiate the "Submit Tax ID Inactivation" process
    Then they are presented with the fields identified as "Data to be displayed on the UI" under "Transaction - Tax ID - Inactivate" in the "Provider Update-Delta Submission - Data Matrix_CLM" spreadsheet in the Feature.

