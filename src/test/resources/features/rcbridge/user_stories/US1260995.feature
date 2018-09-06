# Last updated on 
@US1260995
@2018.PI03
Feature: US1260995 - [Unfinished] PIC Implementation

  @TC565339
  @Automated
  @Functional
  Scenario: TC565339 - [RL2]
    Given Exari has received a request to send data to PIC
    When the micro service is unable to be reached by Exari
    Then Exari will return a server error

  @TC565337
  @Automated
  @Functional
  Scenario: TC565337 - [RL0]
    Given Exari has received a request to send data to PIC
    When the micro service has received the data from Exari
    And the micro service finds the data valid based on the selection criteria
    Then the micro service sends the data to PIC

  @TC565338
  @Automated
  @Functional
  Scenario: TC565338 - [RL1]
    Given Exari has received a request to send data to PIC
    When the micro service has received the data from Exari
    And the micro service finds the data invalid based on the selection criteria
    Then the micro service returns a service error

