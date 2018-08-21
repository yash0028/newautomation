# Last updated on 
@kumar,_Sachin
@US1256689
@2018.PI03
Feature: US1256689 - [Continued] Validate Table data

  @TC551939
  @Manual
  @Functional
  Scenario: TC551939 - Validate Data_Invalid file
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC551937
  @Manual
  @Functional
  Scenario: TC551937 - Validate Data_valid
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

  @TC551940
  @Manual
  @Functional
  Scenario: TC551940 - (Copy of) Validate Data_Invalid data
    Given a template is populated with data
    When the template is uploaded
    Then the file and data is validated
    And a message is returned to the user that the process was successful

