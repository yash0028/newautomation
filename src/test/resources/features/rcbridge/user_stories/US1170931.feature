# Last updated on 
@CLM_UAT
@US1170931
@2018.PI03
Feature: US1170931 - Produce Market Number Reports to show status updates

  @CLM_UAT
  @TC519748
  @Manual
  @Acceptance
  Scenario: TC519748 - Validation of Market Number Reports to show status updates
    Given I run the migration and receive in acknowledgements from Exari
    When I run the Market Number report
    Then I receive the latest status information on the progress from UHG and Exari on each contract for the given Market Number

