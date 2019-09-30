# Last updated on 
@US1901774
@2019.PI08
@2019.PI08.03
@releasePast
@iterationPast
Feature: US1901774 - MAHP GHMO - Radiology Area Code lookup service

  @TC879596
  @Manual
  @Functional
  Scenario: TC879596 - [RL0]
    Given a valid contract includes the MAHP GHMO product
    When Radiology Area Cd is needed for the OCM
    Then a service is available to lookup the radiology area code
    And the service is based on the NDB Radiology Area Cd

