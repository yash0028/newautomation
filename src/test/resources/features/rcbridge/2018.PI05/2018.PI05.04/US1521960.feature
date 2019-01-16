# Last updated on 
@US1521960
@2018.PI05
@2018.PI05.04
@releasePresent
@iterationPresent
Feature: US1521960 - Type 2 Manual Hold mechanisms

  @TC703889
  @Manual
  @Functional
  Scenario Outline: TC703889 - [RL0]
    When hitting the fallout service with path parameter "transaction-id" value "<transactionId>"
    Then I receive a response with a type 2 error
    Examples:
      | transactionId |
      |
      |

