# Last updated on 
@MVP
@Plus
@CLM_Exari
@Parity
@Non-Deliverable
@US1098393
Feature: US1098393 - Derive status of included providers

  @TC565090
  @Automated
  @Functional
  Scenario: TC565090 - [RL0]
    Given the User has identified target providers
    When a Mass Action Project is in progress
    Then Exari will logically derive status for included providers
    And provider-specific status will be reportable

