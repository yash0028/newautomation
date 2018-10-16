# Last updated on 
@Torey
@US1064673
@2018.PI03
@2018.PI03.05
@MVP
@Plus
@10/1_Physician
@Cosmos
@Parity
@F183530
Feature: US1064673 - [Continued]Exari>COSMOS Physician Panel Add to Existing Provider Panel Record

  @TC562753
  @Manual
  @Functional
  @Torey
  @US1064673
  @2018.PI03
  @2018.PI03.05
  Scenario: TC562753 - Verify adding only one panel to physician contract
    #A single provider can have multiple panels. So, for one provider, add only one panel
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS payload
    When COSMOS uploads the additional Physician Panel record into COSMOS
    Then the COSMOS Physician Panel should be added and populate the PPC table and screens in COSMOS without error

  @TC564900
  @Manual
  @Functional
  @Torey
  @US1064673
  @2018.PI03
  @2018.PI03.05
  Scenario: TC564900 - [RL0]
    #A single provider can have multiple panels. So, for one provider, add only one panel
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS payload
    When COSMOS uploads the additional Physician Panel record into COSMOS
    Then the COSMOS Physician Panel should be added and populate the PPC table and screens in COSMOS without error

  @CLM_UAT
  @TC561361
  @Manual
  @Acceptance
  @Torey
  @US1064673
  @2018.PI03
  @2018.PI03.05
  Scenario: TC561361 - TC-01_Validate the exari is mapping correct data in to the COSMOS Payload
    Given the Exari payload extracts and maps the correct data fields in the Exari>COSMOS payload
    When COSMOS uploads the additional Physician Panel record into COSMOS
    Then the COSMOS Physician Panel should be added and populate the PPC table and screens in COSMOS without error

