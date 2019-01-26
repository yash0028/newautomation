# Last updated on 
@Optum
@US1439813
@2018.PI05
@2018.PI05.05
@releasePresent
@iterationPresent
Feature: US1439813 - Integration - Obtain Fee Schedule Information

  @TC644489
  @Manual
  @Functional
  @Optum
  Scenario: TC644489 - [RL0]
    Given a workflow exists for an agreement
    When I am working on the Pricing Form
    Then I am able to see a list of the Fee Schedules (from Exari) on the current agreement where each entry includes the following:
    And Fee Schedule ID (From Exari)
    And Fee Schedule Name

