# Last updated on 
@CMD2
@US1425588
@2018.PI05
@2018.PI05.04
@MVP
@Maintenance
@releaseFuture
@iterationFuture
Feature: US1425588 - Track resent Type 2 error transactions to COSMOS

  @TC634355
  @Manual
  @Functional
  @CMD2
  Scenario: TC634355 - [RL0]
    Given a previously failed or error transaction has been resent
    When the transaction request is initiated
    Then the existing transaction process is followed to update status

  @TC634362
  @Manual
  @Functional
  @CMD2
  Scenario: TC634362 - [RL1]
    Given a previously failed or error transaction has been resent
    When the transaction request is complete
    Then the existing transaction logging process is followed

