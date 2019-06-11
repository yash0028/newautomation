# Last updated on 
@Arvind
@US1564752
@2019.PI07
@2019.PI07.01
@releasePresent
@iterationPast
Feature: US1564752 - Re-present Request More Info To LOB COO

  @TC721874
  @Manual
  @Functional
  @Arvind
  Scenario: TC721874 - [RL0]
    Given A LOB COO has requested for more info for a retro approval request
    When the retro request initiator updates the request with additional details
    Then the LOB COO (who has requested for more info) is assigned a task
    And the task contains details provided by Initiator along with comments(optional) provided by the Initiator
    And the task contains the previous comments provided by the COO while Requesting more Info
    And the COO must be able to take another decision (approve/deny/request more info.) as listed in US1550202
    And task for other LOB COO (who has not yet taken a decision) is updated with the new details provided by the initiator
    And LOB COO who has already approved is not notified about the changes made by initiator

