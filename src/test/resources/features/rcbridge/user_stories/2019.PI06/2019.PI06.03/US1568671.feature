# Last updated on 
@US1568671
@2019.PI06
@2019.PI06.03
@releasePresent
@iterationPresent
Feature: US1568671 - Create service to provide Transaction installation status to Exari

  @TC743436
  @Manual
  @Functional
  Scenario: TC743436 - [RL0]
    Given a valid contract transaction exists
    When the contract installation status is needed
    Then the contract installation status is made available to Exari
    ###

