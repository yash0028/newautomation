# Last updated on 
@US1070732
@2018.PI03
Feature: US1070732 - Exari>COSMOS Term an individual Facility Panel - from an existing contract - PIC DIV?? Outstanding questions to COSMOS

  @TC565216
  @Automated
  @Functional
  Scenario: TC565216 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data to add to an existing contract
    Then a successful COSMOS Facility Panel should load to the PIC DIV to be worked by COSMOS and added to the existing Panels for the given Facility

