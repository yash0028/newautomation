# Last updated on 2018-05-08T15:59:26.400Z
@MVP
Feature: F159195 - Exari>COSMOS - Facility Payload - CF Team

  Scenario: US1070406
    Given the Exari &gt; COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data to add to an existing contract
    Then a successful COSMOS Facility Panel should load to the PIC DIV to be worked by COSMOS and added to the existing Panels for the given Facility

  Scenario: US1070428
    Given the Exari &gt; COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

  Scenario: US1070742
    Given the Exari &gt; COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV and acknowledged back to Exari that the data for X panel loaded successfully into the PIC Div. There will be 2 ACK files see above definition.

  Scenario: US1070767
    Given that COSMOS works through their analysis around ingesting the Exari Facility Payload data
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

  Scenario: US1070405
    Given the Exari &gt; COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

  Scenario: US1070732
    Given the Exari &gt; COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data to add to an existing contract
    Then a successful COSMOS Facility Panel should load to the PIC DIV to be worked by COSMOS and added to the existing Panels for the given Facility

