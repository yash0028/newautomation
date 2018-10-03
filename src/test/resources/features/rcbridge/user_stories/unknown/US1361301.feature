# Last updated on 
@US1361301
@F232442
Feature: US1361301 - Add Hospital Specialties

  @TC598301
  @Manual
  @Functional
  @US1361301
  Scenario: TC598301 - [RL0]
    Given I am a User with access to maintain Entity information
    When I would like to add a specialty to a hospital
    Then I can indicate that a hospital performs a specific specialty
    #Specialty List:
    #Hospital Specialties - NICU
    #Hospital Specialties - Cardiac
    #Hospital Specialties - Oncology
    #Hospital Specialties - Radiology
    #Hospital Specialties - Laboratory
    #Hospital Specialties - Burn Unit
    #Hospital Specialties - Clinics
    #Hospital Specialties - Transplant
    #Hospital Specialties - Dialysis
    #Hospital Specialties - Other

