# Last updated on 
@US2131589
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US2131589 - Revise constraint in PES CP search/response (Optum Dev)

  @TC1025759
  @Manual
  @Functional
  Scenario: TC1025759 - [RL0]
    Given the UHN data constraint has been removed from the PES search parameters
    When PES microservice is initiated by CLM
    Then records are returned with contractingOrgCd | UHC | UHN | EVC | SRS | INS | CNS | NPA | DRE | OXF | ONE | NAT | SPC |
    ###

