# Last updated on 
@Sheham
@Suman
@US2034821
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPast
Feature: US2034821 - Move physician to stage environment

  @TC970893
  @Manual
  @Functional
  @Sheham
  @Suman
  Scenario: TC970893 - [RL0]
    Given the physician process exists
    When the process is downloaded from dev and uploaded into stage
    Then the physician process is in Stage (test)
    And the sub-processes are in Stage

