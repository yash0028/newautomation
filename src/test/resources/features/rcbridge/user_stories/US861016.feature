# Last updated on 
@CLM_UAT
@Provider_Demograhics
@PES
@US861016
@2018.PI02
Feature: US861016 - (Provider) Create Micro Service Providing Demographic Data Requests To PES - Counter Party lookup

  @Functional
  @TC493888
  @Automated
  @Functional
  Scenario: TC493888 - Validate correct fields returned
    Given I am a User with access to add a Counterparty to an Interview
    When I search for a Counterparty using MPIN of "30"
    Then PES returns the following information:
      | address          |
      | mpin             |
      | tin              |
      | firstName        |
      | lastName         |
      | facilityName     |
      | specialties      |
      | providerTypeCode |
      | phoneNumbers     |
    #And the system displays results with the best match first (Need to clarify this)

