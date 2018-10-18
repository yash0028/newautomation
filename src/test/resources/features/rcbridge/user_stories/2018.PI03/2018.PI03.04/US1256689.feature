# Last updated on 
@kumar,_Sachin
@US1256689
@2018.PI03
@2018.PI03.04
@MVP
@10/1_Physician
@CMD
@CMD_Tables
@F214484
@releasePast
@iterationPast
Feature: US1256689 - [Continued] Validate Table data

  @TC551939
  @Manual
  @Functional
  @kumar,_Sachin
  @US1256689
  @2018.PI03
  @2018.PI03.04
  Scenario: TC551939 - Validate Data_Invalid file
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC615298
  @Manual
  @Functional
  @kumar,_Sachin
  @US1256689
  @2018.PI03
  @2018.PI03.04
  Scenario: TC615298 - [RL0]
    Given a template has records populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC551937
  @Manual
  @Functional
  @kumar,_Sachin
  @US1256689
  @2018.PI03
  @2018.PI03.04
  Scenario: TC551937 - Validate Data_valid
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC615299
  @Manual
  @Functional
  @kumar,_Sachin
  @US1256689
  @2018.PI03
  @2018.PI03.04
  Scenario: TC615299 - [RL1]
    Given a template is populated with invalid data
    When the template is uploaded
    Then the file and data is validated
    And a message(s) is returned to the user of all errors and notification that the process failed

  @TC551940
  @Manual
  @Functional
  @kumar,_Sachin
  @US1256689
  @2018.PI03
  @2018.PI03.04
  Scenario: TC551940 - Validate Data_Invalid data
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

