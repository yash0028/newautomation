# Last updated on 
@A_UI_Story
@US1301634
@2018.PI04
@2018.PI04.01
Feature: US1301634 - CMD Dashboard buttons (Populate data)

  @TC573546
  @Automated
  @Functional
  Scenario: TC573546 - [RL7]
    Given I am on the CMD dashboard
    When There are Errors for contract requests
    Then On the Error button display the number of Error requests returned from the search

  @TC573541
  @Automated
  @Functional
  Scenario: TC573541 - [RL2]
    Given I am on the CMD dashboard
    When There are no In Progress transactions
    Then On the In Progress button display 0 In Progress

  @TC573545
  @Automated
  @Functional
  Scenario: TC573545 - [RL6]
    Given I am on the CMD dashboard
    When There are no Error transactions
    Then On the Failed button display 0 Errors

  @TC573543
  @Automated
  @Functional
  Scenario: TC573543 - [RL4]
    Given I am on the CMD dashboard
    When There are no Action Required Required transactions
    And There are no PCP reassignment transactions
    Then On the Action Required Button button display 0 In Progress

  @TC573544
  @Automated
  @Functional
  Scenario: TC573544 - [RL5]
    Given I am on the CMD dashboard
    When There are Action Required contracts
    And There are PCP Reassignment transactions
    Then On the Action Required button display the number of Action Required requests returned from the search

  @TC573540
  @Automated
  @Functional
  Scenario: TC573540 - [RL1]
    Given I am on the CMD dashboard
    When There are completed contracts
    Then On the Completed button display the number of completed requests returned from the search

  @TC564578
  @Automated
  @Functional
  Scenario: TC564578 - [RL0]
    Given I am on the CMD dashboard
    When There are no completed contract requests
    Then On the Completed button display 0 completed

  @TC573542
  @Automated
  @Functional
  Scenario: TC573542 - [RL3]
    Given I am on the CMD dashboard
    When There are In Progress contracts
    Then On the In Progress button display the number of In Progress requests returned from the search

