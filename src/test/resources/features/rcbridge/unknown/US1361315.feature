# Last updated on 
@US1361315
@F232442
@releaseUnknown
@iterationUnknown
Feature: US1361315 - Add Physician Specialties

  @TC598290
  @Manual
  @Functional
  @US1361315
  Scenario: TC598290 - [RL0]
    Given I am a User with access to maintain Entity information
    When I would like to add a specialty to a physician
    Then I can indicate that a physician performs a specific specialty
    #Specialty List:
    #Physician - PCP
    #Physician - Specialists
    #Physician - HBP

