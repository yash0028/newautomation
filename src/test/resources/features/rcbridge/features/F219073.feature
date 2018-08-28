# Last updated on 
@MVP
@10/1_Physician
@Priority_1
@CMD
@F219073
Feature: F219073 - Contract Meta Data (CMD) App4 - Part 3

  @US1287040
  @2018.PI04
  Scenario: US1287040::0 - Contract Config SSO Integration with Exari - SSO RBA
    Given a CMD record exists for a contract
    When the user navigates to the CMD from within Exari
    Then the user is able to access the contract metadata details within CMD

  @US1287040
  @2018.PI04
  Scenario: US1287040::1 - Contract Config SSO Integration with Exari - SSO RBA
    Given a CMD record does not exist
    When the user navigates to the CMD from within Exari contract record
    Then a message is returned to the user stating CMD record does not exist
    And the user returned to the Exari contract record session from which they originated

  @US1287040
  @2018.PI04
  Scenario: US1287040::2 - Contract Config SSO Integration with Exari - SSO RBA
    Given an CMD record exists
    When the user navigates to Exari from within the CMD contract record
    Then the user returns to Exari contract record

