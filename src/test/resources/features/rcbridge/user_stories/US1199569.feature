# Last updated on 
@US1199569
@2018.PI03
Feature: US1199569 - [Continued] Validate Data

  @TC546823
  @Manual
  @Functional
  Scenario: TC546823 - Validate Data_Invalid data
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC546822
  @Manual
  @Functional
  Scenario: TC546822 - Validate Data_Invalid file
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC546821
  @Manual
  @Functional
  Scenario: TC546821 - Validate Data_valid
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

