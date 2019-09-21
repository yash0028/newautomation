# Last updated on 
@Go_Live
@US1469837
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationFuture
Feature: US1469837 - Calculate disposition - Non-NAR using AM for Rate Escalator

  @TC743473
  @Manual
  @Functional
  @Go_Live
  Scenario: TC743473 - [RL0]
    Given a rate escalator exists
    When the "Loading: Submit for loading" task is completed
    Then the timeliness is calculated using the submit for load date and the effective date using the decision table created in the Physician Negotiation

