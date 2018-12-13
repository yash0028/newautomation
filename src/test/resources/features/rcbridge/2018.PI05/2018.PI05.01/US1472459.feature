# Last updated on 
@US1472459
@2018.PI05
@2018.PI05.01
@MVP
@PI04
@Plus
@releasePresent
@iterationPast
Feature: US1472459 - Integration - Physician Landing Page

  @TC669306
  @Manual
  @Functional
  Scenario: TC669306 - [RL0]
    Given an agreement exists for the workflow
    When a user views the Physician - Landing Page
    Then Contract Owner is populated from the UCM
    And Counterparty Name is populated from the UCM
    And Counterparty MPIN is populated from the UCM
    And Counterparty TIN is populated from the UCM
    And Counterparty Tier is populated from the UCM
    And Market Number is populated from the UCM
    And Market Name is populated from the UCM
    And State is populated from the UCM
    And Region is populated from the UCM

