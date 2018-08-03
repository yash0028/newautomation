# Last updated on 2018-07-24T19:39:23.466Z
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
  Scenario: US1209989
    # As a consumer of MEG data
    Given I have the ability to read the MS SQL
    When I make a request to the microservice to read a record with fields:
      | state     | ALABAMA   |
      | market    | 1403      |
      | taskType  | Execution |

    Then I receive data that I would get from reading SQL db directly including the fields:
      | ruleName     |
      | description  |
      | references   |
      | revisionDate |


  @2018.PI03
  @2018.PI03.03
  Scenario: US1210025
    When the MEG microservice is called
    Then a valid response is returned

