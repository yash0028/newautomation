# Last updated on 
@CLM_UAT
@ETMA
@US1097065
@2018.PI02
@2018.PI02.02
@releasePast
@iterationPast
Feature: US1097065 - Error - Specialty Indicator or Org Type not found

  @TC564881
  @Automated
  @Functional
  @CLM_UAT
  @ETMA
  Scenario: TC564881 - [RL0] Validation of Error - the provider's Specialty Code "abc123" is passed to the service
    Given the provider's Specialty Code "abc123" is passed to the service
    When finding the Specialty in ETMA
    Then the service will return a "False" value

  @TC564882
  @Automated
  @Functional
  @CLM_UAT
  @ETMA
  Scenario: TC564882 - [RL1] Validation Error - the provider's Org Type "abc123" is passed to the service
    Given the provider's Org Type "abc123" is passed to the service
    When finding the Org Type in ETMA
    Then the service will return a "False" value

