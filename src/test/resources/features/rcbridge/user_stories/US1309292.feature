# Last updated on 
@US1309292
Feature: US1309292 - Restructure MySql Database per product/service

  @TC569176
  @Manual
  @Functional
  Scenario: TC569176 - [RL0]
    Given a need to create separate schema per product
    When a separate schema instance is created per product
    Then each service points to its own schema instance with its own credentials

