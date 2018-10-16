# Last updated on 
@US1233645
@2018.PI05
@MVP
@10/1_Physician
@Priority_1
@CMD
@F237213
Feature: US1233645 - Create Contract Config Summary web page template

  @TC565065
  @Automated
  @Functional
  @US1233645
  @2018.PI05
  Scenario: TC565065 - [RL0]
    Given a contract configuration overview record exists
    When a request is initiated to access the record
    Then the information is displayed using a predefined template layout

