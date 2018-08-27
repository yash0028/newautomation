# Last updated on 
@MVP
@Plus
@Priority_1
@Exari_Microservice
@F196394
Feature: F196394 - Integration of Exari with Market Exception Grid (MEG)

  @US1210038
  @2018.PI03
  Scenario: US1210038 - [SPIKE] Establish Connetion to backend database - MEG
    Given the Exari system will access the MEG
    Then a developer will have to research how to connect to the MEG backend.

  @kumar,_Sachin
  @MEG
  @US1285099
  @2018.PI03
  Scenario: US1285099 - [Unfinished] Build External Data Query - MEG
    When the MEG microservice is called
    Then a valid MEG response is returned

  @CLM_UAT
  @MEG
  @US1261015
  @2018.PI03
  Scenario: US1261015 - [Unfinished] (MEG) Create microservice exposing Market Exception grid data
    # As a consumer of MEG data
    Given I have the ability to read the MS SQL
    When I make a request to the microservice to read a record with fields:
      | state   | ALABAMA |
      | market | 1403   |
      | task      | Execution |
    Then I receive data that I would get from reading SQL db directly including the fields:
      | ruleName |
      | description |
      | links |
      | dateUpdated |

  @CLM_UAT
  @MEG
  @US1209989
  @2018.PI03
  Scenario: US1209989 - [Continued] (MEG) Create microservice exposing Market Exception grid data
    # As a consumer of MEG data
    Given I have the ability to read the MS SQL
    When I make a request to the microservice to read a record with fields:
      | state   | ALABAMA |
      | market | 1403   |
      | task      | Execution |
    Then I receive data that I would get from reading SQL db directly including the fields:
      | ruleName |
      | description |
      | links |
      | dateUpdated |

  @kumar,_Sachin
  @MEG
  @US1210025
  @2018.PI03
  Scenario: US1210025 - [Continued] Build External Data Query - MEG
    When the MEG microservice is called
    Then a valid MEG response is returned

