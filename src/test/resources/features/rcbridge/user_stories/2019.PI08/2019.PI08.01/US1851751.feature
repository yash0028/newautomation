# Last updated on 
@Arvind
@Adele_R
@US1851751
@2019.PI08
@2019.PI08.01
@releaseFuture
@iterationFuture
Feature: US1851751 - 29  Provider has agreed to rates - Rate Escalator

  @TC848054
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC848054 - [RL0]
    Given when a variable escalator request exits
    When provider has earned the variable
    Then contractor will be assigned a task "Provider has agreed to rates"
    And the text displayed in the form of the task is "Please complete this task when the provider agrees with the proposed rate changes."

