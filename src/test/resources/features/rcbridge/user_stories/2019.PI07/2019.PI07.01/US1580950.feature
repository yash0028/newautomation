# Last updated on 
@Visio
@US1580950
@2019.PI07
@2019.PI07.01
@releaseFuture
@iterationFuture
Feature: US1580950 - Modify denied by LOB COO retro approval request

  @TC743501
  @Manual
  @Functional
  @Visio
  Scenario: TC743501 - [RL0]
    Given the initiated form is returned to the requestor due to a LOB COO denial
    When the requestor opens the task
    Then the details on the form can be modified again
    And the latest LOB COO denial reason/s and comments are shown (may have multiple COOs deny)
    And the latest LOB COO request for more information comments are shown
    And requestor can decide to Resubmit and route back to the denying COOs
    And the requestor can decide to Resubmit to just the network COO
    And the requestor can decide to Withdraw the retro request
    And if I decide to route to Network COO, I need to provide comments as to why I need help in mandatory free form text field labeled "Unable to obtain LOB COO Approval"

