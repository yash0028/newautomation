# Last updated on 
@US1311485
@2018.PI03
Feature: US1311485 - PES Roster Call -Change Output Results

  @TC579704
  @Manual
  @Functional
  Scenario: TC579704 - [RL1]
    # For Facility
    Given a user wants to do a search for Roster
    When a "mpin" of "6177192" is passed to roster
    Then PES returns the following information:
      | mpin |
      | npi |
      | firstName |
      | middleName |
      | lastName |
      | providerDegree |
      | organization |
      | organizationalType |
      | organizationalTypeDescription |
      | code |
      | description |
      | providerTypeCode |
    # Note: "code" and "description" are for specialty

  @TC572204
  @Automated
  @Functional
  Scenario: TC572204 - [RL0]
    # For Physician
    Given a user wants to do a search for Roster
    When a "tin" of "760027557" is passed to roster
    Then PES returns the following information:
      | mpin |
      | npi |
      | firstName |
      | middleName |
      | lastName |
      | providerDegree |
      | organization |
      | code |
      | description |
      | providerTypeCode |
    # Note: "code" and "description" are for specialty

