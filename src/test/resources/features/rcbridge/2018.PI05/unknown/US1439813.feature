# Last updated on 
@US1439813
@2018.PI05
@MVP
@PI04
@Plus
@releaseFuture
@iterationUnknown
Feature: US1439813 - Integration - Obtain Fee Schedule Information

  @TC644489
  @Manual
  @Functional
  Scenario: TC644489 - [RL0]
    Given a workflow exists for an agreement
    When I am working on the Pricing Form
    Then i am able to see a list of all the Fee Schedules on the current agreement
    And I am able to see the Fee Schedule Base Year
    And I am able to see the CMS Year
    And I am able to see the current rates as a % of CMS
    And I am able to see the Date of the last rate change

