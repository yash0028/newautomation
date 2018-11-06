# Last updated on 
@US1420065
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@CMD
@F237213
@releasePresent
@iterationPresent
Feature: US1420065 - Search - based on [parameters] back end work

  @TC630326
  @Manual
  @Functional
  @US1420065
  @2018.PI04
  @2018.PI04.04
  Scenario: TC630326 - [RL1]
    Given a user needs to search the CMD database
    When the user enters an invalid contract number in the UI
    Then the service DOES NOT responds with database record details
    And a message generated 'NO RECORDS FOUND' and displayed through the UI page

  @TC630325
  @Manual
  @Functional
  @US1420065
  @2018.PI04
  @2018.PI04.04
  Scenario: TC630325 - [RL0]
    Given a user needs to search the CMD database
    When the user enters a valid contract number in the UI
    Then the service responds with available database record details
    And the information rendered through the UI page

