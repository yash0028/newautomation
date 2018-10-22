# Last updated on 
@US1356361
@2018.PI04
@2018.PI04.04
@CMD
@Priority_2
@F224328
@releasePresent
@iterationFuture
Feature: US1356361 - PROS Fee Schedule ID Validation Set (T3)

  @TC596324
  @Manual
  @Functional
  @US1356361
  @2018.PI04
  @2018.PI04.04
  Scenario: TC596324 - [RL0]
    Given a valid contract event is received
    When the fee schedule identifier value(s) are consistent with expected format or name schema
    Then the contract passes validation

  @TC611121
  @Manual
  @Functional
  @US1356361
  @2018.PI04
  @2018.PI04.04
  Scenario: TC611121 - [RL1]
    Given a valid contracf event is received
    When the fee schedule identifier valu(s) are not consistent with expected format or name schema
    Then the contract does not pass validation
    And a message generated 'FEE OR RATE SCHEDULE NAME FORMAT INVALID'
    And a Type 3 error logged

