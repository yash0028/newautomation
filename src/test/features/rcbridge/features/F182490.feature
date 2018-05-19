# Last updated on 2018-05-18T19:33:15.614Z
@MVP
@PI02_Top3
@Plus
@Parity
Feature: F182490 - Exari Microservice Establish Integration of CLM with ETMA's - Optum

  @2018.PI02
  @2018.PI02.02
  Scenario: US1096916
    Given the provider's specialty code is known and paper type is known
    When finding the specialty code in ETMA
    When And the Paper type does not equal one of the appropriate values
    Then service will return that the corresponding providers paper type does not match the paper type in the ETMA table
    Then And the return message will indicate which paper type was found in ETMA instead

  @2018.PI02
  @2018.PI02.02
  Scenario: US1096954
    Given the provider's specialty code is known and contract type is known
    When finding the specialty code in ETMA
    Then service will return that the corresponding providers paper type matches the paper type in the ETMA table

  @2018.PI02
  @2018.PI02.02
  Scenario: US1103709
    Given the Specialty code is known and contract type is not known
    When finding the Specialty in ETMA
    Then the Paper type is returned to the user

  @2018.PI02
  @2018.PI02.03
  Scenario: US1097077
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

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
  @2018.PI02.02
  Scenario: US1097030
    Given the Org Type code is known and contract type is known
    When finding the Org Type in ETMA
    Then service will return that the corresponding providers paper type matches the paper type in the ETMA table

  @2018.PI02
  @2018.PI02.02
  Scenario: US1103710
    Given the Org Type code is known and contract type is not known
    When finding the Org Type in ETMA
    Then the Paper type is returned to the user

  @2018.PI02
  @2018.PI02.02
  Scenario: US1097032
    Given the provider's Org Type is known and paper type is known
    When finding the Org Type in ETMA
    When And the Paper type does not equal one of the appropriate values
    Then service will return that the corresponding providers paper type does not match the paper type in the ETMA table
    Then And the return message will indicate which paper type was found in ETMA instead

  @2018.PI02
  @2018.PI02.02
  Scenario: US1103648
    Given I have entered an effective start date of equal to or less than today's date
    When the date is populated
    Then I will be prompted to select the correct Retro Reason Code

