# Last updated on 
@US1964036
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US1964036 - [Continued] Do not move to Type 1 Error when NDB Contract Master service is down

  @TC958741
  @Manual
  @Functional
  Scenario: TC958741 - [RL0]
    Given a valid transaction exists
    When the contract master search service response indicates the service is unavailable
    Then the contract state does not change to Action Required
    And the contract state remains In Process
    And the contract master search will be attempted once the service becomes available
    ###

