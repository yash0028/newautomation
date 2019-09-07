# Last updated on 
@Sheham
@US2034421
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US2034421 - Remediate Start Retro and Close Retro

  @TC970889
  @Manual
  @Functional
  @Sheham
  Scenario: TC970889 - [RL0]
    Given the retro process exists
    When the start retro is executed
    Then Java Delegates are not used

  @TC970900
  @Manual
  @Functional
  @Sheham
  Scenario: TC970900 - [RL1]
    Given the retro process exists
    When the close retro is executed
    Then Java Delegates are not used

