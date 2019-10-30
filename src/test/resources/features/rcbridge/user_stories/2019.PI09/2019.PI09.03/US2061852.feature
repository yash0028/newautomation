# Last updated on 
@US2061852
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationPast
Feature: US2061852 - [E2E Testing] Select related transactions within a Mass Actions project - Type 1

  @TC985446
  @Manual
  @Functional
  Scenario: TC985446 - [RL0]
    Given the user has opened a Mass Action Project which has resulted in Type 1 errors
    And the user opened the edit modal for a transaction record
    When the user clicks "apply to multiple transaction"
    And the user selects one or more of the checkboxes and submits the edit
    Then the contract master will be applied to the selected transactions

  @TC985447
  @Manual
  @Functional
  Scenario: TC985447 - [RL1]
    Given the user has opened a Mass Action Project which has resulted in Type 1 errors
    And the user opened the edit modal for a transaction record
    When the user clicks "apply to multiple transaction"
    And the user clicks the select all button
    Then all the transactions will be selected
    And the use can deselect
    And the contract master will be applied to the selected transactions

