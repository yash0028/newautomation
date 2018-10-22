# Last updated on
@US1356396
@2018.PI04
@2018.PI04.04
@CMD
@Priority_2
@F224328
@releasePresent
@iterationFuture
Feature: US1356396 - Contract Product Rate Group validation set (T3)

  @TC611119
  @Manual
  @Functional
  @US1356396
  @2018.PI04
  @2018.PI04.04
  Scenario: TC611119 - [RL1]
    Given a Payment Appendix product rate group property has a value
    When the Payment Appendix product rate group does not have a corresponding fee schedule or rate id
    Then the product rate group does not pass validation
    And a message generated 'Product Rate Group missing rate id'
    And a type 3 error is generated

  @TC596320
  @Manual
  @Functional
  @US1356396
  @2018.PI04
  @2018.PI04.04
  Scenario: TC596320 - [RL0]
    Given a Payment Appendix product rate group property has a value
    When the Payment Appendix product rate group has a corresponding fee schedule or rate id
    Then the product rate group passed validation

