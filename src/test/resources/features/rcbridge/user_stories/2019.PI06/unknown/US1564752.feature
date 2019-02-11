# Last updated on 
@US1564752
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1564752 - Re-present denial to COO

  @TC721874
  @Manual
  @Functional
  Scenario: TC721874 - [RL0]
    Given A LOB COO has denied a retro approval request
    When the retro request initiator updates the request with additional details
    Then the LOB COO is sent an email with the details (1550202)
    And the email contains the denial reason and comments

