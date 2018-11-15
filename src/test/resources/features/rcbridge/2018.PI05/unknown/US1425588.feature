# Last updated on 
@CMD2
@US1425588
@2018.PI05
@MVP
@Maintenance
@releaseFuture
@iterationUnknown
Feature: US1425588 - Track resent Type 2 error transactions to COSMOS

  @TC634362
  @Manual
  @Functional
  @CMD2
  Scenario: TC634362 - [RL1]
    Given a previously failed or error transaction has been resent
    When the transaction request is complete
    Then the existing transaction logging process is followed

  @TC634355
  @Manual
  @Functional
  @CMD2
  Scenario: TC634355 - [RL0]
    Given a previously failed or error transaction has been resent
    When the transaction request is initiated
    Then the existing transaction process is followed to update status

