# Last updated on 
@US1309292
@2018.PI03
@2018.PI03.05
@releaseUnknown
@iterationUnknown
Feature: US1309292 - Restructure MySql Database per product/service

  @TC701678
  @Manual
  @Functional
  Scenario: TC701678 - [RL0]
    Given a need to create separate schema per product
    When a separate schema instance is created per product
    Then each service points to its own schema instance with its own credentials

