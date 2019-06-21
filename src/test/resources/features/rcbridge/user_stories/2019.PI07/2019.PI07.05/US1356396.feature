# Last updated on 
@US1356396
@2019.PI07
@2019.PI07.05
@releasePresent
@iterationPresent
Feature: US1356396 - Contract Product Rate Group validation set (T3) [E2E]

  @TC611119
  @Manual
  @Functional
  Scenario: TC611119 - [RL1]
    Given a Payment Appendix product rate group property has a value
    When the Payment Appendix product rate group does not have a corresponding fee schedule or rate id
    Then the product rate group does not pass validation
    And a message generated 'Product Rate Group missing rate id'
    And a type 3 error is generated

