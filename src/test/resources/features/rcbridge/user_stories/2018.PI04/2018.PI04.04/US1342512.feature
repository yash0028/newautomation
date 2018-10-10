# Last updated on 
@US1342512
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@CMD
@F219005
Feature: US1342512 - Create CMD Contract Config database exception - Contract Master Overrides

  @TC590676
  @Manual
  @Functional
  @US1342512
  @2018.PI04
  @2018.PI04.04
  Scenario: TC590676 - [RL0]
    Given a contract master exception exists in the database
    When the contract exception details are needed
    Then the contract exception data is made available

