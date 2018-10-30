# Last updated on 
@US1391217
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@CMD
@F237213
@releasePresent
@iterationFuture
Feature: US1391217 - Search - based on Contract ID

  @TC624687
  @Manual
  @Functional
  @US1391217
  @2018.PI04
  @2018.PI04.04
  Scenario: TC624687 - [RL1]
    Given a user needs to search the CMD database
    When the user enters an invalid contract number in the UI
    Then the service DOES NOT responds with database record details
    And a message generated 'NO RECORDS FOUND' and displayed through the UI page

  @TC624686
  @Manual
  @Functional
  @US1391217
  @2018.PI04
  @2018.PI04.04
  Scenario: TC624686 - [RL0]
    Given a user needs to search the CMD database
    When the user enters a valid contract number in the UI
    Then the service responds with available database record details
    And the information rendered through the UI page

