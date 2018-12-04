# Last updated on 
@US1389017
@2018.PI05
@2018.PI05.02
@releasePresent
@iterationFuture
Feature: US1389017 - MSPS Fee Schedule External Link

  @TC648742
  @Manual
  @Functional
  Scenario: TC648742 - [RL0]
    Given as a contractor using the interview I don't know the fee schedule ID, and dont know the version number
    Then exari will display a url link for searching the msps.

