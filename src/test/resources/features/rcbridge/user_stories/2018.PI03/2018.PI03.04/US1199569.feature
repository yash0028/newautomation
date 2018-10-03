# Last updated on 
@US1199569
@2018.PI03
@2018.PI03.04
@MVP
@10/1_Physician
@Crosswalk
@Priority_1
@CMD
@F201371
Feature: US1199569 - [Continued] Validate Data

  @TC546823
  @Manual
  @Functional
  @US1199569
  @2018.PI03
  @2018.PI03.04
  Scenario: TC546823 - Validate Data_Invalid data
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC546822
  @Manual
  @Functional
  @US1199569
  @2018.PI03
  @2018.PI03.04
  Scenario: TC546822 - Validate Data_Invalid file
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC565401
  @Automated
  @Functional
  @US1199569
  @2018.PI03
  @2018.PI03.04
  Scenario: TC565401 - [RL0]
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC546821
  @Manual
  @Functional
  @US1199569
  @2018.PI03
  @2018.PI03.04
  Scenario: TC546821 - Validate Data_valid
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC565402
  @Automated
  @Functional
  @US1199569
  @2018.PI03
  @2018.PI03.04
  Scenario: TC565402 - [RL1]
    Given a template is populated with invalid data
    When the template is uploaded
    Then the file and data is validated
    And a message(s) is returned to the user of all errors and notification that the process failed

