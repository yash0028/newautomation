# Last updated on 
@MVP
@Plus
@US1098563
@2018.PI04
@releasePast
@iterationUnknown
Feature: US1098563 - Scrub impacted providers against integration points

  @TC564557
  @Automated
  @Functional
  @MVP
  @Plus
  Scenario: TC564557 - [RL0]
    Given I have identified target providers for the Mass Action Project
    When I want to validate their readiness for update
    Then Exari will initiate validation checks against standard system integrations
    And Exari will derive status of included providers based on validation checks

