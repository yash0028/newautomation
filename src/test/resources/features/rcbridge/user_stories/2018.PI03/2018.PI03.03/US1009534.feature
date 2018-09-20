# Last updated on 
@MSPS
@Andrew_B
@US1009534
@2018.PI03
@2018.PI03.03
Feature: US1009534 - Create External Data Query - MSPS Physician

  @TC543857
  @Manual
  @Functional
  Scenario: TC543857 - [RL0] Happy Path MSPS EDQ Validation
    Given a contractor will need to be able to retrieve the MSPS fee schedule
    When at this step in the interview process in Exari to retrieve a fee schedule
    Then a fee schedule(s) are returned based on input criteria.

  @TC543858
  @Manual
  @Functional
  Scenario: TC543858 - Bad Path MSPS EDQ Validation
    Given a contractor will need to be able to retrieve the MSPS fee schedule
    When at this step in the interview process to retrieve a fee schedule
    And entering invalid input criteria
    Then no fee schedule(s) are returned based on input criteria

