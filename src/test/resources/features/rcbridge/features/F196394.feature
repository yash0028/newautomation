# Last updated on 2018-08-07T20:31:06.884Z
@MVP
@Plus
@Priority_1
@Exari_Microservice
Feature: F196394 - Integration of Exari with Market Exception Grid (MEG)

  @2018.PI03
  @2018.PI03.01
  Scenario: US1210038
    Given the Exari system will access the MEG
    Then a developer will have to research how to connect to the MEG backend.

  @CLM_UAT
  @MEG
  @2018.PI03
  @2018.PI03.02
  Scenario: US1261015
    # As a consumer of MEG data
    Given I have the ability to read the MS SQL
    When I make a request to the microservice to read a record with fields:
      | state     | ALABAMA   |
      | market    | 1403      |
      | task      | Execution |

    Then I receive data that I would get from reading SQL db directly including the fields:
      | Rule_Name    |
      | Description  |
      | Links        |
      | DATE_UPDATED |


  @CLM_UAT
  @MEG
  @2018.PI03
  @2018.PI03.03
  Scenario: US1209989
    # As a consumer of MEG data
    Given I have the ability to read the MS SQL
    When I make a request to the microservice to read a record with fields:
      | state     | ALABAMA   |
      | market    | 1403      |
      | task      | Execution |

    Then I receive data that I would get from reading SQL db directly including the fields:
      | Rule_Name    |
      | Description  |
      | Links        |
      | DATE_UPDATED |


  @kumar,_Sachin
  @MEG
  @2018.PI03
  @2018.PI03.03
  Scenario: US1210025
    When the MEG microservice is called
    Then a valid response is returned

