# Last updated on 
@US1199511
@2018.PI03
Feature: US1199511 - [Continued] PIC Implementation

  @TC534390
  @Automated
  @Functional
  Scenario: TC534390 - Validate contract data is sent back to PIC
    Given Exari has received a request to send data to PIC
    When the micro service has received the data from Exari
    And the micro service finds the data valid based on the selection criteria
    Then the micro service sends the data to PIC

  @TC537136
  @Automated
  @Functional
  Scenario: TC537136 - Validate error when microservice cannot be reached
    Given Exari has recived a request to send data to PIC
    When the micro service is unable to be reached by Exari
    Then Exari will return a server error

  @TC537132
  @Automated
  @Functional
  Scenario: TC537132 - Validate error message for invalid data
    Given Exari has received a request to send data to PIC
    When the micro service has received the data from Exari
    And the micro service finds the data invalid based on the selection criteria
    Then the micro service returns a service error

