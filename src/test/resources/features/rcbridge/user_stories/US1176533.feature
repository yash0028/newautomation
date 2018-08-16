# Last updated on 
@PES
@US1176533
@2018.PI02
Feature: US1176533 - Enhancement to use new PES combined API (Counter Party) stub API

  @TC501884
  @Automated
  @Acceptance
  Scenario: TC501884::0 - Verify fields returned for physician and facility
    #For Physician MPIN
    Given I am a User with access to add a Counterparty to an Interview
    When I search for a Counterparty using MPIN of "30"
    Then PES returns the following information:
      | mpin |
      | tin |
      | firstName |
      | middleName |
      | lastName |
      | address |
      | organization |
      | specialties |
      | providerTypeCode |
      | npi |
      | phoneNumbers |
      | faxNumbers |

  @TC501884
  @Automated
  @Acceptance
  Scenario: TC501884::1 - Verify fields returned for physician and facility
    #For Facility MPIN
    Given I am a User with access to add a Counterparty to an Interview
    When I search for a Counterparty using MPIN of "6177192"
    Then PES returns the following information:
      | mpin |
      | tin |
      | facilityName |
      | address |
      | organization |
      | specialties |
      | providerTypeCode |
      | npi |
      | phoneNumbers |

