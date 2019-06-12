# Last updated on 
@US1561153
@2019.PI07
@2019.PI07.05
@releasePresent
@iterationFuture
Feature: US1561153 - Configure the Event Gateway API with a second URL for Mass Update transactions

  @TC720667
  @Manual
  @Functional
  Scenario: TC720667 - [RL0]
    Given a mass project has been initiated from Exari
    When event gateway URL exists
    Then Optum is able to receive the event transactions

