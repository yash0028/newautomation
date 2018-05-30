# Last updated on 2018-05-24T16:33:23.012Z
@MVP
@PI02_Top3
@CLM_Exari
@Exari_Microservice
@Parity
Feature: F137899 - Exari Microservice Complete Integration of Exari with PES (Demographic) - Optum

  @PES
  @2018.PI02
  @2018.PI02.01
  Scenario: US1089376
    Given many API's Exist
    Then the developer needs to understand the different APIs in order to use the correct one.

  @PES
  @2018.PI02
  @2018.PI02.01
  Scenario: US1093992::0
    Given a user needs to call PES
    When a user incorrectly inputs data
    Then the user receives a bad input error message

  @PES
  @2018.PI02
  @2018.PI02.01
  Scenario: US1093992::1
    Given a user needs to call PES
    When the system goes down
    Then the user receives a system error message

  @PES
  @2018.PI02
  @2018.PI02.01
  Scenario: US1093992::2
    Given a user needs to call PES
    When a catastrophic error occurs
    Then a service ticket will need to be created.

  @2018.PI02
  Scenario: US1095936::0
    Given a user needs to call PES
    When a user incorrectly inputs data
    Then the user receives a bad input error message

  @2018.PI02
  Scenario: US1095936::1
    Given a user needs to call PES
    When the system goes down
    Then the user receives a system error message

  @2018.PI02
  Scenario: US1095936::2
    Given a user needs to call PES
    When a catastrophic error occurs
    Then an error code will be logged.

  @PES
  @2018.PI02
  @2018.PI02.01
  Scenario: US1095963
    Given a user has searched for provider
    When there are multiple results
    Then I see a list of those results.
    Then And I can select one to read more details.

  @MVP
  @PI02_Top3
  @PES
  @CLM_Exari
  @2018.PI02
  Scenario: US1100359
    Given as a user I have populated one or many of the field options (MPIN, TIN, City, Zip Code, Provider Name, State or UNET Market Number or NPI)
    When Exari reaches out to PES with the selected criteria above
    Then I will have the option of selecting the provider that fits my criteria

