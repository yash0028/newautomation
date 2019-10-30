# Last updated on 
@US2090654
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US2090654 - UI/UX: Integrate Type 2 Message Catalog data within the UI

  @TC1013512
  @Manual
  @Functional
  Scenario: TC1013512 - [RL0]
    Given a Type 2 Error Message catalog microservice exists
    When a user views a Type 2 Error Message through the CMD UI
    Then the user is also able to view the Error Resolution details via the CMD UI
    ###

