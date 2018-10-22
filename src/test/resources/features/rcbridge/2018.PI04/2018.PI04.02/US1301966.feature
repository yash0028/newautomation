# Last updated on
@A_UI_Story
@US1301966
@2018.PI04
@2018.PI04.02
@MVP
@Madhur
@Priority_1
@CMD
@F218723
@releasePresent
@iterationPast
Feature: US1301966 - CMD- Dashboard transaction search and update Service call

  @TC565379
  @Manual
  @Functional
  @A_UI_Story
  @US1301966
  @2018.PI04
  @2018.PI04.02
  Scenario: TC565379 - [RL0]
    # Scenario 1 (no transaction data in the db) :
    Given There is no transaction data in the CMD error database
    When A request was made to the CMD error database
    Then Provide a success response and no data

  @TC611978
  @Manual
  @Functional
  @A_UI_Story
  @US1301966
  @2018.PI04
  @2018.PI04.02
  Scenario: TC611978 - [RL1]
    # Scenario 2 (transaction data is populated in the db)
    Given There are transaction data in the CMD error database
    When A request was made to the CMD error database
    Then Provide a success response and all transactions that are in a Completed, In progress, User Input Required, and Errors back to the requester

