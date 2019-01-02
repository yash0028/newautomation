# Last updated on 
@US1445600
@2018.PI05
@2018.PI05.02
@releasePresent
@iterationPast
Feature: US1445600 - Call outputs to pass where user enters FS ID

  @TC648743
  @Manual
  @Functional
  Scenario: TC648743 - [RL0]
    Given as a contractor using the interview I enter a specific fess schedule ID in an alpha numeric format, and select version number
    When exari reaches out to msps utilizing the provided API's
    Then the specified fee schedule .pdf document will be returned

