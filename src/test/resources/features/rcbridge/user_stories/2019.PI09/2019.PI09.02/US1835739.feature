# Last updated on 
@Arvind
@Suman
@US1835739
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPresent
Feature: US1835739 - Inform user to get retro approval during rate escalator (non-hopper)

  @TC960849
  @Manual
  @Functional
  @Arvind
  @Suman
  Scenario: TC960849 - [RL1]
    Given the difference of effective date and current date is less than or equal to 15 days
    When Submit for Loading task is not completed for West region
    Then contractor or initiator needs to start the retro process
    And the contractor need to get retro approval
    And the initiator is not able to open Submit for Loading task
    And the retro is automatically started

  @TC968848
  @Manual
  @Functional
  @Arvind
  @Suman
  Scenario: TC968848 - [RL2]
    Given a retro approval is required
    When it is automatically started
    Then the Effective Date of Rate Escalator to feed into the Planned Effective Date in Retro (non-editable)
    And the Expected Completion Date of Rate Escalator to feed into the Target Date for Agreement Completion in Retro (non-editable)
    And the Associated Workflow Type in Retro = Escalator (non-editable)
    And the Demographic details to be pre-filled in Retro (can be from Rate Escalator or a call to contracts) (non-editable)

