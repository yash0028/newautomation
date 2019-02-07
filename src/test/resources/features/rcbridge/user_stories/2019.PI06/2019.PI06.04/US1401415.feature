# Last updated on 
@US1401415
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationFuture
Feature: US1401415 - Log PCP Reassignment transaction as a type 1 error

  @TC700958
  @Manual
  @Functional
  Scenario: TC700958 - [RL0]
    Given a contract provider transaction exists
    When it has been determined that PCP reassignment details are required
    And a PCP reassignment record does not exist in the contract database
    Then the contract provider record is flagged as a Type 1 Error in the fallout database

  @TC700963
  @Manual
  @Functional
  Scenario: TC700963 - [RL1]
    Given a contract provider transaction exists
    When it has been determined that PCP reassignment details are required
    And a PCP reassignment record does exist in the contract database
    Then the contract provider record is not flagged as a Type 1 Error in the fallout database
    ###

