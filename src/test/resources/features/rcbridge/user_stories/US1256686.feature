# Last updated on 
@US1256686
@2018.PI03
Feature: US1256686 - Create Provider Taxonomy Grid Table Template

  @TC565824
  @Automated
  @Functional
  Scenario: TC565824 - [RL0]
    Given data can not be sourced directly from data authority
    When data attributes and permissible code values have been analyzed
    And attribute definitions, data types and permissible code values identified
    Then a table template to store a copy of the information is made available

