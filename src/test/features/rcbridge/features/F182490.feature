# Last updated on 2018-05-10T21:26:08.625Z
@MVP
@PI02_Top3
Feature: F182490 - Exari Microservice Establish Integration of CLM with ETMA's - Optum

  @2018.PI02
  @2018.PI02.02
  Scenario: US1096954
    Given the provider's specialty code is known and contract type is known
    When finding the specialty code in ETMA
    Then the Contract Paper must equal one of the appropriate values

  @2018.PI02
  @2018.PI02.02
  Scenario: US1103709
    Given the Specilty code is known and contract type is not known
    When finding the Specialty in ETMA
    Then the Contract Paper type is returned to the user

  @2018.PI02
  @2018.PI02.03
  Scenario: US1097077
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

  @2018.PI02
  @2018.PI02.02
  Scenario: US1103710
    Given the Org Type code is known and contract type is not known
    When finding the Org Type in ETMA
    Then the Contract Paper type is returned to the user

  @ETMA
  @2018.PI02
  @2018.PI02.01
  Scenario: US1100261
    Given the connection details
    When the micro service calls the ETMA tables
    Then the connection is successful

  @2018.PI02
  @2018.PI02.02
  Scenario: US1103666
    Given I have entered an effective start date on the provider roster of equal to or less than today's date
    When the date is populated
    Then I will be prompted to select the correct Retro Reason Code

  @2018.PI02
  @2018.PI02.03
  Scenario: US1097032
    Given the provider's Org Type is known and contract type is known
    When finding the Org Type in ETMA
    When And the Contract Paper does not equal one of the appropriate values
    Then the user sees an error message "The provider is not valid for this paper type." What error is shown today? Do we like that message? If yes, we should keep it the same as users understand what it means.

  @2018.PI02
  @2018.PI02.02
  Scenario: US1103648
    Given I have entered an effective start date of equal to or less than today's date
    When the date is populated
    Then I will be prompted to select the correct Retro Reason Code

  @2018.PI02
  @2018.PI02.02
  Scenario: US1097030
    Given the Org Type code is known and contract type is known
    When finding the Org Type in ETMA
    Then the Contract Paper must equal one of the appropriate values

