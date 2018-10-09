# Last updated on 
@US1260995
@2018.PI03
@2018.PI03.02
@MVP
@Priority_1
@PIC
@Parity
@F159196
Feature: US1260995 - [Unfinished] PIC Implementation

  @TC605421
  @Manual
  @Functional
  @US1260995
  @2018.PI03
  @2018.PI03.02
  Scenario: TC605421 - [RL0]
    Given Exari has received a request to send data to PIC
    When the micro service has received the data from Exari
    And the micro service finds the data valid based on the selection criteria
    Then the micro service sends the data to PIC

  @TC605423
  @Manual
  @Functional
  @US1260995
  @2018.PI03
  @2018.PI03.02
  Scenario: TC605423 - [RL2]
    Given Exari has received a request to send data to PIC
    When the micro service is unable to be reached by Exari
    Then Exari will return a server error

  @TC605422
  @Manual
  @Functional
  @US1260995
  @2018.PI03
  @2018.PI03.02
  Scenario: TC605422 - [RL1]
    Given Exari has received a request to send data to PIC
    When the micro service has received the data from Exari
    And the micro service finds the data invalid based on the selection criteria
    Then the micro service returns a service error

