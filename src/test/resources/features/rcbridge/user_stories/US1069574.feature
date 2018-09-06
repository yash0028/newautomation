# Last updated on 
@US1069574
@2018.PI02
Feature: US1069574 - SPIKE: COSMOS>Exari Error Acknowledgement payload-analysis

  @TC565336
  @Automated
  @Functional
  Scenario: TC565336 - [RL0]
    Given COSMOS edits the Exari>COSMOS Physician Panel data
    When the Exari>COSMOS data errors
    Then COSMOS will return the error (s) to Exari around the Physician Panel failures

