# Last updated on 
@ETMA
@US1097073
@2018.PI02
Feature: US1097073 - Error Handling (non-data related)

  @TC565442
  @Manual
  @Functional
  Scenario: TC565442 - [RL0] Error Handling Validation
    Given a user is attempting to validate org type or specialty code
    When the ETMA table is not reachable
    And the service should return an status code. "503 service is unavailable".
    Then the error message is return to the user.

