# Last updated on 
@US1183620
@Configuration_for_2/15/19
@MVP
@PI04
@Plus
@F165531
@releasePresent
@iterationUnknown
Feature: US1183620 - Escalator notice on Dashboard

  @TC564507
  @Automated
  @Functional
  @US1183620
  @Configuration_for_2/15/19
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

