# Last updated on 
@US2128346
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationPast
Feature: US2128346 - [Unfinished] Do not move to Type 1 Error when NDB Contract Master service is down

  @TC1024267
  @Manual
  @Functional
  Scenario: TC1024267 - [RL0]
    Given a valid transaction exists
    When the contract master search service response indicates the service is unavailable
    Then the contract state does not change to Action Required
    And the contract state remains In Process
    And the contract master search will be attempted once the service becomes available
    ###

