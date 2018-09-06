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

  @TC564698
  @Automated
  @Functional
  Scenario: TC564698 - [RL1]
    Given an update to the current version of the crosswalk table is needed
    When an administrator downloads a copy of the crosswalk template
    Then the product crosswalk template is made available to the administrator

  @TC564697
  @Automated
  @Functional
  Scenario: TC564697 - [RL0]
    Given more than one product description crosswalk record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

