# Last updated on 
@US1298074
@2018.PI04
@2018.PI04.01
Feature: US1298074 - Create a Preliminary Report for visibility for the Delegated Directors

  @TC564399
  @Automated
  @Functional
  Scenario: TC564399 - [RL0]
    Given the Preliminary report is run
    When I review the data in the columns in NDB's ITC screen and compare to the PLMI summary report
    Then only those TINs are provided in the report

