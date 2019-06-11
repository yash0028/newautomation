# Last updated on 
@US1260997
@2018.PI03
@2018.PI03.02
@releasePast
@iterationPast
Feature: US1260997 - [Unfinished] [Continued] Download Crosswalk Template

  @TC605428
  @Manual
  @Functional
  Scenario: TC605428 - [RL0]
    Given more than one product description crosswalk record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @TC605429
  @Manual
  @Functional
  Scenario: TC605429 - [RL1]
    Given an update to the current version of the crosswalk table is needed
    When an administrator downloads a copy of the crosswalk template
    Then the product crosswalk template is made available to the administrator

