# Last updated on 
@US1256693
@2018.PI03
Feature: US1256693 - Download Table Template

  @TC565607
  @Automated
  @Functional
  Scenario: TC565607 - [RL0]
    Given more than one Provider Taxonomy Grid record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @TC565609
  @Automated
  @Functional
  Scenario: TC565609 - [RL1]
    Given an update to the current version of the Provider Taxonomy Grid is needed
    When an administrator downloads a copy of the table template
    Then the Provider Taxonomy Grid template is made available to the administrator

