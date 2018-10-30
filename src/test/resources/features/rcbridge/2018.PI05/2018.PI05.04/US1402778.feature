# Last updated on 
@US1402778
@2018.PI05
@2018.PI05.04
@MVP
@Maintenance
@F236509
@releaseFuture
@iterationFuture
Feature: US1402778 - Allow Duplicate Edit 1 and 2 overrides on Active contracts

  @TC622456
  @Manual
  @Functional
  @US1402778
  @2018.PI05
  @2018.PI05.04
  Scenario: TC622456 - [RL0]
    Given I am performing maintenance on an Active contract and a Duplicate Edit exists
    When I perform the actions to perform an override and the controlled processed occurs/completes
    Then I am able to continue and complete my maintenance and successfully complete the Make Correction process with no further Duplicate Edits

