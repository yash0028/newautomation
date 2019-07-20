# Last updated on 
@US1362216
@2019.PI09
@2019.PI07.04
@releaseFuture
@iterationPast
Feature: US1362216 - Processing when provider record does not slot(E2E?)

  @TC598291
  @Manual
  @Functional
  Scenario: TC598291 - [RL0]
    Given all process rules have been processed and contract lines are generated
    When the outcome result did not successfully processed
    Then a type-3 error should be thrown

  @TC598292
  @Manual
  @Functional
  Scenario: TC598292 - [RL1]
    Given a user access the CMD dashboard
    When the user accesses the completed button from the dashboard
    And the transaction contains a message / condition 'No contract line generated for downstream"
    Then the user can see the transaction result and transaction message

