# Last updated on 
@US1410068
@2019.PI06
@2019.PI06.01
@releaseFuture
@iterationFuture
Feature: US1410068 - Identify Product Limit exceeded error as Type 2 error [NDB Dependency]

  @TC706025
  @Manual
  @Functional
  Scenario: TC706025 - [RL0]
    ##Scenario 1 (Identify product limit error as type 2)
    Given a contract master has been selected within CMD
    And the load file, including the contract master, has been sent to the downstream system(s)
    Then the NDB API will respond with a product line limit error
    And the error should be classified as a Type 2 error

