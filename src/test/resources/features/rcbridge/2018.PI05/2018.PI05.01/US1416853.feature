# Last updated on 
@US1416853
@2018.PI05
@2018.PI05.01
@MVP
@Maintenance
@F239628
@releaseFuture
@iterationFuture
Feature: US1416853 - Setup a new Contract Configuration Service

  @TC629010
  @Manual
  @Functional
  @US1416853
  @2018.PI05
  @2018.PI05.01
  Scenario Outline: TC629010 - [RL0]
    Given that the Contract Configuration service has been setup
    When a test calls the service passing in correct values for a previously installed contract
    Then the Contract Configuration service return's that contract's configuration records
    Examples:
      |
      |

