# Last updated on 
@MVP
@US1207278
@2018.PI03
@2018.PI03.02
@MVP
@10/1_Physician
@Crosswalk
@Priority_1
@CMD
@releasePast
@iterationPast
Feature: US1207278 - Access and security management

  @TC533889
  @Manual
  @Functional
  @MVP
  Scenario: TC533889 - Validate an invalid user cannot acces crosswalk webpage
    Given a user requests access ot the crosswalk data
    When the contract system administrator does not approve the request
    Then the user is not granted permissions to the crosswalk table
    And the user receives a message that they are not authorized to access

  @TC533827
  @Manual
  @Functional
  @MVP
  Scenario: TC533827 - Validate general user to view crosswalk info
    Given a user requests view-only permissions to the crosswalk table
    When the contract system administrator approves the request
    Then the user is authorized access to view the crosswalk data

  @TC615260
  @Manual
  @Functional
  @MVP
  Scenario: TC615260 - [RL0]
    Given a user requests view-only permissions to the crosswalk table
    When the contract system administrator approves the request
    Then the user is authorized access to view the crosswalk data

  @TC615261
  @Manual
  @Functional
  @MVP
  Scenario: TC615261 - [RL2]
    Given a user requests access ot the crosswalk data
    When the contract system administrator does not approve the request
    Then the user is not granted permissions to the crosswalk table
    And the user receives a message that they are not authorized to access

