# Last updated on 
@MVP
@10/1_Physician
@CMD
@CMD_Tables
@F226938
Feature: F226938 - Integration Services App3- Part 1 Metadata tables critical day 1 (Part 2)

  @US1262733
  @2018.PI04
  Scenario: US1262733::0 - Product Group process code table
    Given a business reason exists to group products and services together
    When a service exists to assign identifiers to the different product groupings
    Then the administrator has a means to record the details of those groupings

  @US1256696
  @2018.PI04
  Scenario: US1256696 - Styling Template for Provider Taxonomy Grid UI
    Given A UI will be created for the Provider Taxonomy Grid template
    When accessed by a user
    Then the UI will be made available to the user.

  @US1256686
  @2018.PI04
  Scenario: US1256686 - Create Provider Taxonomy Grid Table Template
    Given data can not be sourced directly from data authority
    When data attributes and permissible code values have been analyzed
    And attribute definitions, data types and permissible code values identified
    Then a table template to store a copy of the information is made available

