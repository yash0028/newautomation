# Last updated on 
@US1439813
@2018.PI05
@MVP
@PI04
@Plus
@releasePresent
@iterationUnknown
Feature: US1439813 - Integration - Obtain Fee Schedule Information

  @TC644489
  @Manual
  @Functional
  Scenario: TC644489 - [RL0]
    Given a workflow exists for an agreement
    When I am working on the Pricing Form
    Then I am able to see a list of the Fee Schedules (from Exari) on the current agreement where each entry includes the following:
    And Fee Schedule Name (From Exari)
    And Fee Schedule Base Year (From PROS)
    And CMS Year (From PROS)
    And the current rates as a % of CMS (From PROS)
    And the Date of the last rate change (from Exari)

