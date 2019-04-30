# Last updated on 
@US1730621
@2019.PI07
@2019.PI07.03
@releasePresent
@iterationFuture
Feature: US1730621 - Modify Request for information by Network COO or Operations COO retro approval request

  @TC793510
  @Manual
  @Functional
  Scenario: TC793510 - [RL0]
    Given the initiated form is returned to the requestor due to the Network COO or Operations COO requesting more info
    When the requestor opens the task for that particular Network COO or Operations COO requesting more info
    Then the details on the form can be modified again
    And the latest Network COO or Operations COO request for more information comments are shown
    And requestor can Resubmit and route back to the Network COO or Operations COO who has requested for more info
    And If either the Network COO or Operation COO has not yet responded they will see the updated information in their task
    And if either the Network COO or Operations COO that has approved, they will not see the updated information

