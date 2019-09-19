# Last updated on 
@US2061852
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPresent
Feature: US2061852 - [E2E Testing] Select related transactions within a Mass Actions project - Type 1

  @TC985446
  @Manual
  @Functional
  Scenario: TC985446 - [RL0]
    Given a Mass Action Project has resulted in Type 1 errors
    When a user navigates into the Action Required section from the 4-blocker
    Then the user will see a checkbox to the left of the target/transaction record
    And the user will be able to select one or more target/transactions within the Mass Action Project

  @TC985447
  @Manual
  @Functional
  Scenario: TC985447 - [RL1]
    Given a Mass Action Project has resulted in Type 1 errors
    When a user navigates into the Action Required section from the 4-blocker
    And the user wants to select all targets that errored
    Then the user will see an option/button to "select all"
    And "select all" will check/select all of the transaction/targets within the error bucket (e.g. Contract Master Override) for the engaged Mass Action Project
    And the user should not have to click select all on each page of results
    And the user will not need to select targets individually
    And the user can deselect targets individually
    And the user can select targets individually

