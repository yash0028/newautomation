# Last updated on
@US1361321
@F232442
@releaseUnknown
@iterationUnknown
Feature: US1361321 - Add Ancillary Specialties

  @TC598305
  @Manual
  @Functional
  @US1361321
  Scenario: TC598305 - [RL0]
    Given I am a User with access to maintain Entity information
    When I would like to add a specialty to an ancillary provider
    Then I can indicate that an ancillary provider performs a specific specialty
    #Specialty List:
    #Ancillary - DME
    #Ancillary - Hospice
    #Ancillary - Home Health
    #Ancillary - Dialysis
    #Ancillary - Lab
    #Ancillary - Other

