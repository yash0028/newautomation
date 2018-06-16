# Last updated on 2018-06-15T14:46:49.162Z
@MVP
@PI02_Top3
@Plus
@Parity
Feature: F182490 - Exari Microservice Establish Integration of CLM with ETMA's - Optum

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1096916
    Given the provider's specialty indicator is "002" and contract type is "ANC_Facility Participation"
    When finding the Specialty in ETMA
    And the service returns paper types "IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table
    Then the service will return a "False" value

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1096954::0
    Given the provider's specialty indicator is "002" and contract type is "MGA"
    When finding the Specialty in ETMA
    And the service returns paper types "IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table
    Then the service will return a "True" value

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1096954::1
    Given the provider's specialty indicator is "002" and contract type is "ANC_Facility Participation"
    When finding the Specialty in ETMA
    And the service returns paper types "IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table
    Then the service will return a "False" value

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1097065::0
    Given the provider's Specialty Code "abc123" is passed to the service
    When finding the Specialty in ETMA
    Then the service will return a "False" value

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1097065::1
    Given the provider's Org Type "abc123" is passed to the service
    When finding the Org Type in ETMA
    Then the service will return a "False" value

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1103709::0
    Given the provider's specialty indicator is "002" and contract type is not known
    When finding the Specialty in ETMA
    Then the service returns paper types "IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1103709::1
    Given the provider's specialty indicator is "002" and contract type is not known
    When finding the Specialty in ETMA
    Then service will NOT return paper types "ANC_Facility Participation" from the ETMA table

  @ETMA
  @2018.PI02
  @2018.PI02.04
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

  @ETMA
  @2018.PI02
  @2018.PI02.03
  Scenario: US1097073
    Given a user is attempting to validate org type or specialty code
    When the ETMA table is not reachable
    And the service should return an status code. "503 service is unavailable".
    Then the error message is return to the user.

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1097030::0
    Given the provider's organization type is "012" and contract type is "PHO"
    When finding the Org Type in ETMA
    And the service returns paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table
    Then the service will return a "True" value

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1097030::1
    Given the provider's organization type is "012" and contract type is "MGA"
    When finding the Org Type in ETMA
    And the service returns paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table
    Then the service will return a "False" value

  @ETMA
  @2018.PI02
  @2018.PI02.03
  Scenario: US1171058
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1129434::0
    Given the providers Specialty codes "53ABC, 54ABC, 55ABC" and paper types "MGA, ABC123, SPA" are passed to the service
    When the Specialty Codes are not found in ETMA
    Then service will return a a "False" value for each specialty code and paper type combination

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1129434::1
    Given the providers Org Types "53ABC, 54ABC, 55ABC" and paper types "MGA, ABC123, SPA" are passed to the service
    When the Org Types are not found in ETMA
    Then service will return a a "False" value for each org type and paper type combination

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1103710::0
    Given the provider's organization type is "012" and contract type is not known
    When finding the Org Type in ETMA
    Then the service returns paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1103710::1
    Given the provider's organization type is "012" and contract type is not known
    When finding the Org Type in ETMA
    Then service will NOT return paper types "SMGA, SMGA, SPAT, MGA" from the ETMA table

  @ETMA
  @2018.PI02
  @2018.PI02.03
  Scenario: US1171055
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1097032
    Given the provider's organization type is "012" and contract type is "MGA"
    When finding the Org Type in ETMA
    And the service returns paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table
    Then the service will return a "False" value

  @ETMA
  @2018.PI02
  @2018.PI02.03
  Scenario: US1103648
    Given I have entered an effective start date of equal to or less than today's date
    When the date is populated
    Then I will be prompted to select the correct Retro Reason Code

  @ETMA
  @2018.PI02
  @2018.PI02.04
  Scenario: US1169960
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

