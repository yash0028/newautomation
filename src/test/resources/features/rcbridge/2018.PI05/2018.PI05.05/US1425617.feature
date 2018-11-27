# Last updated on 
@CMD2
@US1425617
@2018.PI05
@2018.PI05.05
@MVP
@Maintenance
@releaseFuture
@iterationFuture
Feature: US1425617 - Track resent Type 2 error transactions to NDB

  @TC634360
  @Manual
  @Functional
  @CMD2
  Scenario: TC634360 - [RL0]
    Given a previously failed or error transaction has been resent
    When the transaction request is initiated
    Then the existing transaction process is followed to update status

  @TC634364
  @Manual
  @Functional
  @CMD2
  Scenario: TC634364 - [RL1]
    Given a previously failed or error transaction has been resent
    When the transaction request is complete
    Then the existing transaction logging process is followed

