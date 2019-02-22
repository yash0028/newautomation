# Last updated on 
@Optum
@US1483380
@2019.PI06
@2019.PI06.02
@releasePresent
@iterationPresent
Feature: US1483380 - Integration - Obtain Fee Schedule Information from MSPS

  @TC735864
  @Manual
  @Functional
  @Optum
  Scenario: TC735864 - [RL0]
    Given a workflow exists for an agreement
    When I am working on the Pricing Form
    Then I am able to see a list of the Fee Schedules (from Exari) on the current agreement where each entry includes the following:
    And Fee Schedule ID (From Exari)
    And Fee Schedule Name (From PROS)
    And Fee Schedule Base Year (From PROS)
    And CMS Year (From PROS)

