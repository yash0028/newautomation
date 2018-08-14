# Last updated on 
@MVP
@Plus
@Priority_1
@F159195
Feature: F159195 - Exari>COSMOS - Facility Payload - CF Team

  @US1070406
  @2018.PI03
  Scenario: US1070406 - Exari>COSMOS Add a Facility Panel - already existing contract - PIC DIV
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data to add to an existing contract
    Then a successful COSMOS Facility Panel should load to the PIC DIV to be worked by COSMOS and added to the existing Panels for the given Facility

  @US1070428
  @2018.PI03
  Scenario: US1070428 - Exari>COSMOS Term/Cancel a Facility Panel - PIC DIV ?? Outstanding questions email sent 5/17
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

  @US1070742
  @2018.PI03
  Scenario: US1070742 - COSMOS>Exari Facility Acknowledgment Process
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV and acknowledged back to Exari that the data for X panel loaded successfully into the PIC Div. There will be 2 ACK files see above definition.

  @US1070767
  @2018.PI03
  Scenario: US1070767 - SPIKE - COSMOS API Facility Analysis
    Given that COSMOS works through their analysis around ingesting the Exari Facility Payload data
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

  @US1070405
  @2018.PI03
  Scenario: US1070405 - Exari>COSMOS Add a Facility Panel - PIC DIV
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

  @US1070732
  @2018.PI03
  Scenario: US1070732 - Exari>COSMOS Term an individual Facility Panel - from an existing contract - PIC DIV?? Outstanding questions to COSMOS
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data to add to an existing contract
    Then a successful COSMOS Facility Panel should load to the PIC DIV to be worked by COSMOS and added to the existing Panels for the given Facility

