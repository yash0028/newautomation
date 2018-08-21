# Last updated on 
@MVP
@PI02_Top3
@Plus
@Parity
@F182490
Feature: F182490 - Exari Microservice Establish Integration of CLM with ETMA's - Optum

  @CLM_UAT
  @ETMA
  @US1096916
  @2018.PI02
  Scenario: US1096916 - Error - Provider's specialty is on table and paper type is not correct
    Given the provider's specialty indicator is "002" and contract type is "ANC_Facility Participation"
    When finding the Specialty in ETMA
    And the service returns paper types "IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table
    Then the service will return a "False" value

  @CLM_UAT
  @ETMA
  @US1096954
  @2018.PI02
  Scenario: US1096954::0 - Provider's specialty is on table and paper type is correct (ETMA)
    Given the provider's specialty indicator is "002" and contract type is "MGA"
    When finding the Specialty in ETMA
    And the service returns paper types "IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table
    Then the service will return a "True" value

  @CLM_UAT
  @ETMA
  @US1096954
  @2018.PI02
  Scenario: US1096954::1 - Provider's specialty is on table and paper type is correct (ETMA)
    Given the provider's specialty indicator is "002" and contract type is "ANC_Facility Participation"
    When finding the Specialty in ETMA
    And the service returns paper types "IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table
    Then the service will return a "False" value

  @CLM_UAT
  @ETMA
  @US1097065
  @2018.PI02
  Scenario: US1097065::0 - Error - Specialty Indicator or Org Type not found
    Given the provider's Specialty Code "abc123" is passed to the service
    When finding the Specialty in ETMA
    Then the service will return a "False" value

  @CLM_UAT
  @ETMA
  @US1097065
  @2018.PI02
  Scenario: US1097065::1 - Error - Specialty Indicator or Org Type not found
    Given the provider's Org Type "abc123" is passed to the service
    When finding the Org Type in ETMA
    Then the service will return a "False" value

  @CLM_UAT
  @ETMA
  @US1103709
  @2018.PI02
  Scenario: US1103709::0 - Counter-party Provider Specialty Code is found and paper type is returned
    Given the provider's specialty indicator is "002" and contract type is not known
    When finding the Specialty in ETMA
    Then the service returns paper types "IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table

  @CLM_UAT
  @ETMA
  @US1103709
  @2018.PI02
  Scenario: US1103709::1 - Counter-party Provider Specialty Code is found and paper type is returned
    Given the provider's specialty indicator is "002" and contract type is not known
    When finding the Specialty in ETMA
    Then service will NOT return paper types "ANC_Facility Participation" from the ETMA table

  @CLM_UAT
  @ETMA
  @US1097077
  @2018.PI02
  Scenario: US1097077 - [Continued] Build External Data Query (ETMA)
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

  @CLM_UAT
  @ETMA
  @US1100261
  @2018.PI03
  Scenario: US1100261 - Build Micro Service (ETMA)
    Given the connection details
    When the micro service calls the ETMA tables
    Then the connection is successful

  @Charlie
  @US1270195
  @2018.PI03
  Scenario: US1270195 - Point to new ETMA DB
    When CLM Etma service is updated with the new DB
    Then all acceptance tests are re-run

  @ETMA
  @US1097073
  @2018.PI02
  Scenario: US1097073 - Error Handling (non-data related)
    Given a user is attempting to validate org type or specialty code
    When the ETMA table is not reachable
    And the service should return an status code. "503 service is unavailable".
    Then the error message is return to the user.

  @CLM_UAT
  @ETMA
  @US1097030
  @2018.PI02
  Scenario: US1097030::0 - Org type is on table and paper type is correct
    Given the provider's organization type is "012" and contract type is "PHO"
    When finding the Org Type in ETMA
    And the service returns paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table
    Then the service will return a "True" value

  @CLM_UAT
  @ETMA
  @US1097030
  @2018.PI02
  Scenario: US1097030::1 - Org type is on table and paper type is correct
    Given the provider's organization type is "012" and contract type is "MGA"
    When finding the Org Type in ETMA
    And the service returns paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table
    Then the service will return a "False" value

  @CLM_UAT
  @ETMA
  @US1171058
  @2018.PI02
  Scenario: US1171058 - [Unfinished] Build External Data Query to retrieve retroactive reason codes (ETMA)
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

  @CLM_UAT
  @ETMA
  @US1129434
  @2018.PI02
  Scenario: US1129434::0 - Error - Specialty Indicator or Org Type not found for given Provider on Roster
    Given the providers Specialty codes "53ABC, 54ABC, 55ABC" and paper types "MGA, ABC123, SPA" are passed to the service
    When the Specialty Codes are not found in ETMA
    Then service will return a a "False" value for each specialty code and paper type combination

  @CLM_UAT
  @ETMA
  @US1129434
  @2018.PI02
  Scenario: US1129434::1 - Error - Specialty Indicator or Org Type not found for given Provider on Roster
    Given the providers Org Types "53ABC, 54ABC, 55ABC" and paper types "MGA, ABC123, SPA" are passed to the service
    When the Org Types are not found in ETMA
    Then service will return a a "False" value for each org type and paper type combination

  @CLM_UAT
  @ETMA
  @US1103710
  @2018.PI02
  Scenario: US1103710::0 - Counter-party Provider Org TypeCode is found and paper type is returned
    Given the provider's organization type is "012" and contract type is not known
    When finding the Org Type in ETMA
    Then the service returns paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table

  @CLM_UAT
  @ETMA
  @US1103710
  @2018.PI02
  Scenario: US1103710::1 - Counter-party Provider Org TypeCode is found and paper type is returned
    Given the provider's organization type is "012" and contract type is not known
    When finding the Org Type in ETMA
    Then service will NOT return paper types "SMGA, SMGA, SPAT, MGA" from the ETMA table

  @CLM_UAT
  @ETMA
  @US1171055
  @2018.PI02
  Scenario: US1171055 - [Unfinished] Build External Data Query (ETMA)
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

  @CLM_UAT
  @ETMA
  @US1097032
  @2018.PI02
  Scenario: US1097032 - Error - Org type is on table and paper type is not correct
    Given the provider's organization type is "012" and contract type is "MGA"
    When finding the Org Type in ETMA
    And the service returns paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table
    Then the service will return a "False" value

  @ETMA
  @US1103648
  @2018.PI02
  Scenario: US1103648 - [Continued] Retro Active Reason Code - Contract Level (ETMA)
    When ETMA is queried for the retro reason code
    Then all of the retro reason codes are returned

  @US1180600
  @2018.PI02
  Scenario: US1180600 - Implement Swagger on ETMA services
    Given a need for documentation on connection to our services
    When visiting the swagger page for our service
    Then you can view the documentation
    And you can execute the services
    And you can validate the responses for given input parameters

  @CLM_UAT
  @ETMA
  @US1169960
  @2018.PI02
  Scenario: US1169960 - [Continued] Build External Data Query to retrieve retroactive reason codes (ETMA)
    Given UHC will need to provide Exari with ETMA table data
    When the Exari calls ETMA
    Then an external data query will return the requested data.

