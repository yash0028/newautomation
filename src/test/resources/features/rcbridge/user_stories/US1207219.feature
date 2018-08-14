# Last updated on 
@US1207219
@2018.PI03
Feature: US1207219 - [Continued] [Continued] Download Crosswalk Template

  @TC519603
  @Manual
  @Functional
  Scenario: TC519603 - Validation of Crosswalk Template download
    Given an update to the current version of the crosswalk table is needed
    When an administrator downloads a copy of the crosswalk template
    Then the product crosswalk template is made available to the administrator

