# Last updated on 
@PES
@US1176533
@2018.PI02
Feature: US1176533 - Enhancement to use new PES combined API (Counter Party) stub API

  @TC564928
  @Automated
  @Functional
  Scenario: TC564928 - [RL1] Verify fields returned for facility
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

  @TC564927
  @Automated
  @Functional
  Scenario: TC564927 - [RL0] Verify fields returned for physician
    #For Physician MPIN
    Given I am a User with access to add a Counterparty to an Interview
    When I search for a Counterparty using MPIN of "12345"
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

