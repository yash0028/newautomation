# Last updated on 
@US1289316
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@CMD
@F219005
Feature: US1289316 - View Contract Config Summary web page

  @TC564781
  @Automated
  @Functional
  @US1289316
  @2018.PI04
  @2018.PI04.04
  Scenario: TC564781 - [RL1]
    Given an contract configuration summary record does not exist
    When a contract configuration request is initiated from within Exari
    Then an error message is returned to the user
    And a web page is not made available

  @TC564780
  @Automated
  @Functional
  @US1289316
  @2018.PI04
  @2018.PI04.04
  Scenario: TC564780 - [RL0]
    Given an contract configuration summary record exists
    When a contract configuration request is initiated from within Exari
    Then a web page displaying the record is made available

