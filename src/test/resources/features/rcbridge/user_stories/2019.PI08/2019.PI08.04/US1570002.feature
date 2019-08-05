# Last updated on 
@Arvind
@Retro
@Suman
@US1570002
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationFuture
Feature: US1570002 - Initiate Retro Form- Integration "Negotiation Details from Workflow"

  @TC743338
  @Manual
  @Functional
  @Arvind
  @Retro
  @Suman
  Scenario: TC743338 - [RL0]
    Given a Physician Negotiation process exists
    When Retro Approval is required
    Then details are auto populated in the "Provide Retro Details" task
    And the Associated Workflow Type is auto populated with "Physician"
    And the "Target Date for Agreement Completion" is auto populated with the "Target Date for Agreement Completion" from the Physician Negotiation
    And the "Planned Effective Date" is auto populated with the "Planned Effective Date" from the Physician Negotiation
    And the "Lines of Business" (excluding M&V) is auto populated with the "Lines of Business" from the Physician Negotiation (the non-selected LOB in the physician process will be a NO in retro, the selected will be a YES)
    And the 4 fields in the retro process can not be edited

