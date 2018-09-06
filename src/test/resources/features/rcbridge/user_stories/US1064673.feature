# Last updated on 
@US1064673
@2018.PI03
Feature: US1064673 - Exari>COSMOS Physician Panel Add to Existing Provider Panel Record

  @TC562753
  @Manual
  @Functional
  Scenario: TC562753 - Verify adding only one panel to physician contract
    #A single provider can have multiple panels. So, for one provider, add only one panelGiven the Exari payload extracts and maps the correct data fields in the Exari>COSMOS payload
    When COSMOS uploads the additional Physician Panel record into COSMOS
    Then the COSMOS Physician Panel should be added and populate the PPC table and screens in COSMOS without error

  @TC564900
  @Automated
  @Functional
  Scenario: TC564900 - [RL0]
    #A single provider can have multiple panels. So, for one provider, add only one panelGiven the Exari payload extracts and maps the correct data fields in the Exari>COSMOS payload
    When COSMOS uploads the additional Physician Panel record into COSMOS
    Then the COSMOS Physician Panel should be added and populate the PPC table and screens in COSMOS without error

  @CLM_UAT
  @TC561361
  @Manual
  @Acceptance
  Scenario: TC561361 - TC-01_Validate the exari is mapping correct data in to the COSMOS Payload
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS payload
    When COSMOS uploads the additional Physician Panel record into COSMOS
    Then the COSMOS Physician Panel should be added and populate the PPC table and screens in COSMOS without error

