# Last updated on 
@US2128345
@releaseUnknown
@iterationUnknown
Feature: US2128345 - Do not move to Type 1 Error when NDB Contract Master service is down

  @TC1024266
  @Manual
  @Functional
  Scenario: TC1024266 - [RL0]
    Given a valid transaction exists
    When the contract master search service response indicates the service is unavailable
    Then the contract state does not change to Action Required
    And the contract state remains In Process
    And the contract master search will be attempted once the service becomes available
    ###

