# Last updated on 
@MSPS
@Optum
@Suman
@US1562118
@2019.PI06
@2019.PI06.02
@releasePast
@iterationPast
Feature: US1562118 - Implement API to allow for Integration - Obtain Fee Schedule Information from MSPS

  @TC735862
  @Automated
  @Functional
  @MSPS
  @Optum
  @Suman
  Scenario: TC735862 - [RL0] Validate REST functionality of API
    Given a need for integration with MSPS
    When reaching out the fee-schedule-api with "feeSchedules" of "20010000000"
    Then the fee-schedule-api returns the following fields:
      | feeSchedID                |
      | CMSYear                   |
      | feeSchedName              |
      | feeSchedOriginalBuiltDate |

