# Last updated on 2018-05-22T00:00:00.511Z
@MVP
@PI02_Top3
@Plus
@Parity
Feature: F182490 - Exari Microservice Establish Integration of CLM with ETMA's - Optum

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1096916
    Given the provider's specialty code is known and paper type is known
    When finding the specialty code in ETMA
    When And the Paper type does not equal one of the appropriate values
    Then service will return that the corresponding providers paper type does not match the paper type in the ETMA table
    Then And the return message will indicate which paper type was found in ETMA instead

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1096954::0
    Given the provider's specialty code is known and contract type is known
    When finding the specialty code in ETMA
    Then service will return that the corresponding providers paper type matches the paper type in the ETMA table

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1096954::1
    Given the provider's specialty indicator is "2" and contract type is "MGA"
    When finding the Specialty in ETMA
    When And the service returns paper types "IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table
    Then the service will return a "True" value

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1096954::2
    Given the provider's specialty indicator is "2" and contract type is "ANC_Facility Participation"
    When finding the Specialty in ETMA
    When And the service returns paper types "IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table
    Then the service will NOT return a "True" value
    Then And the service will return "False, the correct value options are IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1103709::0
    Given the Specialty code is known and contract type is not known
    When finding the Specialty in ETMA
    Then the Paper type is returned to the user

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1103709::1
    Given the provider's specialty indicator is "2" and contract type is not known
    When finding the Specialty in ETMA
    Then service will return paper type "IPA, MGA, SMGA, SPA, PHO, Empire Individual Agreement, Empire Group Agreement, FQHC_RHC" as matched in ETMA table

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1103709::2
    Given the provider's specialty indicator is "2" and contract type is not known
    When finding the Specialty in ETMA
    Then service will NOT return paper type "ANC_Facility Participation" from the ETMA table

  @ETMA
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

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1103666
    Given I have entered an effective start date on the provider roster of equal to or less than today's date
    When the date is populated
    Then I will be prompted to select the correct Retro Reason Code

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1097030::0
    Given the Org Type code is known and contract type is known
    When finding the Org Type in ETMA
    Then service will return that the corresponding providers paper type matches the paper type in the ETMA table

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1097030::1
    Given the provider's organization type is "12" and contract type is "PHO"
    When finding the Org Type in ETMA
    When And the service will return paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table
    Then the service will return a message of "TRUE"

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1097030::2
    Given the provider's organization type is "12" and contract type is MGA
    When finding the Org Type in ETMA
    When And the service will return paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table
    Then the service will NOT return a "True" value
    Then And the service will return "False, the correct value options are PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1103710::0
    Given the Org Type code is known and contract type is not known
    When finding the Org Type in ETMA
    Then the Paper type is returned to the user

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1103710::1
    Given the provider's organization type is "12" and contract type is not known
    When finding the Org Type in ETMA
    Then the service will return paper types "PHO, ANC_AmeriChoice_Facility Participation, FPA, ANC_Facility Participation, ANC_Appendix, COM, GOV, Amendment FPA, Empire ANC Appendix, Empire Ancillary Agreement" as matched in ETMA table

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1103710::2
    Given the provider's organization type is "12" and contract type is not known
    When finding the Org Type in ETMA
    Then the service will NOT return paper types "SMGA, SMGA, SPAT, MGA" as matched in ETMA table

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1097032
    Given the provider's Org Type is known and paper type is known
    When finding the Org Type in ETMA
    When And the Paper type does not equal one of the appropriate values
    Then service will return that the corresponding providers paper type does not match the paper type in the ETMA table
    Then And the return message will indicate which paper type was found in ETMA instead

  @ETMA
  @2018.PI02
  @2018.PI02.02
  Scenario: US1103648
    Given I have entered an effective start date of equal to or less than today's date
    When the date is populated
    Then I will be prompted to select the correct Retro Reason Code

