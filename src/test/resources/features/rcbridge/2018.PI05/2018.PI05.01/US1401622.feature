# Last updated on 
@US1401622
@2018.PI05
@2018.PI05.01
@MVP
@Priority_2
@NDB
@CMD
@F217206
@releaseFuture
@iterationFuture
Feature: US1401622 - Add Resolution text box to transaction DB

  @TC622447
  @Manual
  @Functional
  @US1401622
  @2018.PI05
  @2018.PI05.01
  Scenario: TC622447 - [RL0]
    ###Scenario 1 (Add resolution text field in transaction database):
    Given A contract master error exists
    When The error is received
    Then The transaction database contains a new field for Resolution text

