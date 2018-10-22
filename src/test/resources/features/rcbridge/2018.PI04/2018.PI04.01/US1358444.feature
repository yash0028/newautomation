# Last updated on
@A_UI_Story
@US1358444
@2018.PI04
@2018.PI04.01
@MVP
@10/1_Physician
@Priority_1
@CMD
@F219005
@releasePresent
@iterationPast
Feature: US1358444 - [Unfinished] CMD Dashboard buttons (Populate data)

  @TC597188
  @Manual
  @Functional
  @A_UI_Story
  @US1358444
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597188 - [RL3]
    Given I am on the CMD dashboard
    When There are In Progress contracts
    Then On the In Progress button display the number of In Progress requests returned from the search

  @TC597191
  @Manual
  @Functional
  @A_UI_Story
  @US1358444
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597191 - [RL6]
    Given I am on the CMD dashboard
    When There are no Error transactions
    Then On the Failed button display 0 Errors

  @TC597189
  @Manual
  @Functional
  @A_UI_Story
  @US1358444
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597189 - [RL4]
    Given I am on the CMD dashboard
    When There are no Action Required Required transactions
    And There are no PCP reassignment transactions
    Then On the Action Required Button button display 0 In Progress

  @TC597185
  @Manual
  @Functional
  @A_UI_Story
  @US1358444
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597185 - [RL0]
    Given I am on the CMD dashboard
    When There are no completed contract requests
    Then On the Completed button display 0 completed

  @TC597192
  @Manual
  @Functional
  @A_UI_Story
  @US1358444
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597192 - [RL7]
    Given I am on the CMD dashboard
    When There are Errors for contract requests
    Then On the Error button display the number of Error requests returned from the search

  @TC597187
  @Manual
  @Functional
  @A_UI_Story
  @US1358444
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597187 - [RL2]
    Given I am on the CMD dashboard
    When There are no In Progress transactions
    Then On the In Progress button display 0 In Progress

  @TC597190
  @Manual
  @Functional
  @A_UI_Story
  @US1358444
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597190 - [RL5]
    Given I am on the CMD dashboard
    When There are Action Required contracts
    And There are PCP Reassignment transactions
    Then On the Action Required button display the number of Action Required requests returned from the search

  @TC597186
  @Manual
  @Functional
  @A_UI_Story
  @US1358444
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597186 - [RL1]
    Given I am on the CMD dashboard
    When There are completed contracts
    Then On the Completed button display the number of completed requests returned from the search

