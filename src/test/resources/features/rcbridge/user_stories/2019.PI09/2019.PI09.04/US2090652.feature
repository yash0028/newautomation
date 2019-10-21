# Last updated on 
@US2090652
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationFuture
Feature: US2090652 - Create microservice to display the Type 2 Message Catalog

  @TC1013515
  @Manual
  @Functional
  Scenario: TC1013515 - [RL0]
    Given the TYPE 2 ERROR CATALOG table exists in the database
    When record details from the table are needed
    Then a service is available to provide table record details

  @TC1015067
  @Manual
  @Functional
  Scenario: TC1015067 - [RL1]
    Given information from the TYPE 2 ERROR CATALOG table is needed
    When the requester provides a valid system source of NDB or COSMOS
    And the requester provides a valid system ERROR MESSAGE text string
    Then the service matches table record with the same System Source and Error Message combination
    And provides the table record detail in the response

  @TC1015070
  @Manual
  @Functional
  Scenario: TC1015070 - [RL2]
    Given information from the TYPE 2 ERROR CATALOG table is needed
    When the requester DOES NOT provides a valid system source of NDB or COSMOS
    And the requester DOES NOT provides a valid system ERROR MESSAGE text string
    Then the service is not invoked
    And a message returned 'VALID SOURCE SYSTEM AND ERROR MESSAGE IS REQUIRED INPUT'

  @TC1015071
  @Manual
  @Functional
  Scenario: TC1015071 - [RL3]
    Given information from the TYPE 2 ERROR CATALOG table is needed
    When the requester provides a valid system source of NDB or COSMOS
    And the requester provides a valid system ERROR MESSAGE text string
    And the service is unable to match a table record with the same System Source and Error Message combination
    Then a message returned 'NO MATCHING TABLE RECORD FOUND' in the response
    ###

