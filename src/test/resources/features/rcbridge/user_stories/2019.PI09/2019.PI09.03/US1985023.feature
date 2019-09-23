# Last updated on 
@US1985023
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationFuture
Feature: US1985023 - Provide users an option when aborting Type 1 errors

  @TC968856
  @Manual
  @Functional
  Scenario: TC968856 - [RL0]
    When aborting a Type 1 transaction in CMD
    Then the user is prompted whether they want to cancel a single contract master or abort the entire transaction

  @TC968863
  @Manual
  @Functional
  Scenario: TC968863 - [RL1]
    When the entire transaction is aborted
    Then it would result in Type 3 transaction aborted
    And the contract will show up in failed bucket in CMD

