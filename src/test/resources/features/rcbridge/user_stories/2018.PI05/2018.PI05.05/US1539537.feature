# Last updated on 
@PES
@US1539537
@2018.PI05
@2018.PI05.05
@releasePast
@iterationPast
Feature: US1539537 - Bulk provider Roster EXTRACT from PES to Exari - Deploy and Test

  @TC705159
  @Manual
  @Functional
  @PES
  Scenario: TC705159 - [RL0]
    Given I need to populate a roster
    When I search for provider roster with "firstName" of value "Xavier"
    Then I see 153 results returned in Exari

