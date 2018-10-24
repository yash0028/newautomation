# Last updated on 
@US1400548
@F232975
@releaseUnknown
@iterationUnknown
Feature: US1400548 - New Pipeline for Jenkins Scheduled Secure Exari Service

  @TC621299
  @Manual
  @Functional
  @US1400548
  Scenario: TC621299 - [RL0]
    Given I have new secure exari service code,
    When I push the code to master on git,
    Then it builds on a specialized pipeline for services that run on Jenkins only

