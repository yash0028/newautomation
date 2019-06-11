# Last updated on 
@Optum
@US1483380
@2019.PI06
@2019.PI06.02
@releasePast
@iterationPast
Feature: US1483380 - Integration - Obtain Fee Schedule Information from MSPS

  @TC735864
  @Manual
  @Functional
  @Optum
  Scenario: TC735864 - [RL0]
    Given a workflow exists for an agreement
    When I am working on the Pricing Form
    Then I am able to see a list of the Fee Schedules (from Exari) on the current agreement where each entry includes the following:
      | Fee Schedule ID (From Exari)       |
      | Fee Schedule Name (From PROS)      |
      | Fee Schedule Base Year (From PROS) |
      | CMS Year (From PROS)               |

