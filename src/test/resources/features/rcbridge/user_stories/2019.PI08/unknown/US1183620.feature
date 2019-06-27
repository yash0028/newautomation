# Last updated on 
@US1183620
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1183620 - Escalator notice on Dashboard

  @TC564507
  @Manual
  @Functional
  Scenario: TC564507 - [RL0]
    Given a contract with an escalator is identified
    When the contractor associated to the contracts views their dashboard
    Then the contractor should see the name of the provider
    And the TIN
    And the MPIN
    And the date of the last escalator event
    And the Contract ID
    And the workflow status
    And the date of the next escalatorevent

