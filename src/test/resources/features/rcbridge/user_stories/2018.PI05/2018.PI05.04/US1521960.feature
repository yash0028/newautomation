# Last updated on 
@US1521960
@2018.PI05
@2018.PI05.04
@releasePast
@iterationPast
Feature: US1521960 - Type 2 Manual Hold mechanisms

  @TC703889
  @Manual
  @Functional
  Scenario Outline: TC703889 - [RL0]
    When I send path parameter "transaction-id" value "<transactionId>" to the fallout service
    Then I receive a response with a type 2 error from the type-2 error endpoint
    Examples:
      | transactionId |
      | addIdHere     |
      | addIdHere     |

