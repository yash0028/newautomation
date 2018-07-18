# Last updated on 2018-07-17T19:31:26.751Z
@MVP
@Plus
@Priority_1
@CLM_Exari
@Exari_Microservice
Feature: F180705 - Exari Microservice Complete Integration of CLM with MSG - Optum and Exari

  @CLM_UAT
  @2018.PI03
  @2018.PI03.02
  Scenario: US1009573
    When the MSG microservice is called
    Then a valid response is returned

  @CLM_UAT
  @MSG
  @2018.PI03
  @2018.PI03.01
  Scenario: US1050707
    # As a consumer of MSG data
    Given I have the ability to read the MS Access DB
    When I make a request to the microservice to read a record using the following fields:
      | providerSpecialtyIndicator |
      | state        |
      | county       |
      | marketNumber |

    Then I receive data that I would get from reading MS Access directly including fields:
      | need to fill |
      | need to fill |


