# Last updated on 
@US1573730
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1573730 - Network COO Deny or Request More info on  Retro Request

  @TC730582
  @Manual
  @Functional
  Scenario: TC730582 - [RL0]
    Given a task is assigned to the network COO by the initiator (this is usually only done after LOB COO has declined at least once)
    When network COO selects 'Deny' or Request More Info'
    And a mandatory reason is provided for the denial or the more info needed
    Then a retro task is created to inform all involved parties- Initiator, Market Lead, NPPP

