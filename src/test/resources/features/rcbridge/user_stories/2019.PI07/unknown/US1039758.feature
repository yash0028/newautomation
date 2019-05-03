# Last updated on 
@Exari
@US1039758
@2019.PI07
@releasePresent
@iterationUnknown
Feature: US1039758 - See Contract Retro Approval Status

  @TC716034
  @Manual
  @Functional
  @Exari
  Scenario: TC716034 - [RL0]
    Given I am an initiator
    When I open a contract that is part of a retro approval request workflow
    Then I need to know the current open task of the retro

