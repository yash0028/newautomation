# Last updated on 
@Optum
@Suman
@US1562118
@2019.PI06
@2019.PI06.02
@releasePresent
@iterationPresent
Feature: US1562118 - Implement API to allow for Integration - Obtain Fee Schedule Information from MSPS

  @TC735862
  @Manual
  @Functional
  @Optum
  @Suman
  Scenario: TC735862 - [RL0] Validate REST functionality of API
    Given a need for integration with MSPS
    When reaching out the fee-schedule-api with "feeSchedules" of "20010000000"
    Then the fee-schedule-api returns the following fields:
      | Fee Schedule ID (From Exari)       |
      | Fee Schedule Name (From PROS)      |
      | Fee Schedule Base Year (From PROS) |
      | CMS Year (From PROS)               |

