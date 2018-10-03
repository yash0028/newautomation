# Last updated on 
@US1256686
@2018.PI04
@MVP
@10/1_Physician
@CMD
@CMD_Tables
@F226938
Feature: US1256686 - Create Provider Taxonomy Grid Table Template

  @TC565824
  @Automated
  @Functional
  @US1256686
  @2018.PI04
  Scenario: TC565824 - [RL0]
    Given data can not be sourced directly from data authority
    When data attributes and permissible code values have been analyzed
    And attribute definitions, data types and permissible code values identified
    Then a table template to store a copy of the information is made available

