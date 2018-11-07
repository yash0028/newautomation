# Last updated on 
@US1309292
@2018.PI03
@2018.PI03.05
@releasePast
@iterationPast
Feature: US1309292 - Restructure MySql Database per product/service

  @TC569176
  @Automated
  @Functional
  Scenario: TC569176 - [RL0] Re-Run ETMA Acceptance Tests (Regression)
    Given a need to create separate schema per product
    When a separate schema instance is created per product
    Then each service points to its own schema instance with its own credentials

