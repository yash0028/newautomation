# Last updated on 
@US1564752
@2019.PI06
@2019.PI06.05
@releasePresent
@iterationFuture
Feature: US1564752 - Re-present Denial/Request More Info To COO

  @TC721874
  @Manual
  @Functional
  Scenario: TC721874 - [RL0]
    Given A LOB COO has denied a retro approval request
    When the retro request initiator updates the request with additional details
    Then the LOB COO (who has denied) is assigned a task
    And the task contains details provided by Inititator along with comments(optional) provided by the Initiator
    And the task contains the previous comments provided by the COO while Denying/Requesting more Info
    And the COO must be able to take another decision (approve/deny/request more info.) as listed in US1550202

