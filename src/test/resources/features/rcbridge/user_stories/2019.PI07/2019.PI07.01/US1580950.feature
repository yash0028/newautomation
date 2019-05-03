# Last updated on 
@Arvind
@Visio
@US1580950
@2019.PI07
@2019.PI07.01
@releasePresent
@iterationPast
Feature: US1580950 - Modify Request for information by LOB COO retro approval request

  @TC743501
  @Manual
  @Functional
  @Arvind
  @Visio
  Scenario: TC743501 - [RL0]And any LOB COO that has responded will not see the updated information
    Given the initiated form is returned to the requestor due to a LOB COO requesting more info
    When the requestor opens the task for that particular LOB COO requesting more info
    Then the details on the form can be modified again
    And the latest LOB COO request for more information comments are shown
    And requestor can Resubmit and route back to the LOB COO who has requested for more info
    And any LOB COOs that have not yet responded will see the updated information
    And any LOB COO that has responded will not see the updated information
    And there is text on the page, "Once all impacted LOB COOs have provided their response, if they have not all approved, you will be able to submit the retro request to the Network COO and Operations COO for approval."

