# Last updated on 
@US2123528
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationPast
Feature: US2123528 - [Unfinished] Select related transactions within a Mass Actions project - Type 2

  @TC1019822
  @Manual
  @Functional
  Scenario: TC1019822 - [RL0]
    Given a Mass Action Project has resulted in Type 2 errors
    When a user navigates into the Action Required section from the 4-blocker
    Then the user will see the Type 2 (or downstream system) errors grouped by Message Code

  @TC1019823
  @Manual
  @Functional
  Scenario: TC1019823 - [RL1]
    Given a Mass Action Project has resulted in Type 2 errors
    And the user has navigated to the Action Required section of the 4-blocker
    When the user selects one of the Type 2 error groupings
    Then the user will see a checkbox to the left of the target/transaction record
    And the user will be able to select one or more target/transactions within the Mass Action Project
    And the display will include Name, Deal ID, MPIN, TIN, Status, Action, Retry Count

  @TC1019824
  @Manual
  @Functional
  Scenario: TC1019824 - [RL2]
    Given a Mass Action Project has resulted in Type 2 errors
    When a user navigates into the Action Required section from the 4-blocker
    And the user wants to select all targets that errored
    Then the user will see an option/button to "select all"
    And "select all" will check/select all of the transaction/targets within the error bucket (e.g. Contract Master Override) for the engaged Mass Action Project
    And the user should not have to click select all on each page of results
    And the user will not need to select targets individually
    And the user can deselect targets individually
    And the user can select targets individually

  @TC1019825
  @Manual
  @Functional
  Scenario: TC1019825 - [RL3]
    Given a Mass Action Project has resulted in Type 2 errors
    And a user navigates into the Action Required section from the 4-blocker
    When the user has selected the targets for resolution
    Then the user will be presented with a screen akin to the individual Type 2 error resolution screen
    And the user will be able to input the Type 2 error resolution once for all selected targets
    And the input error resolution persists to all selected targets

  @TC1019826
  @Manual
  @Functional
  Scenario: TC1019826 - [RL4]
    Given a user has selected multiple targets for error resolution
    When the targets do not have like characteristics (i.e. market number, fee schedule, product group)
    Then the service will display on onscreen error of, "The selected providers do not share characteristics to will enable mass resolution. Please select providers with like characteristics."
    And the service will not allow the user to input any of the mandatory error resolution elements (e.g. contract master number)

