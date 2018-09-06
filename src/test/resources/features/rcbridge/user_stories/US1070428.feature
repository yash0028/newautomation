# Last updated on 
@US1070428
@2018.PI03
Feature: US1070428 - Exari>COSMOS Term/Cancel a Facility Panel - PIC DIV ?? Outstanding questions email sent 5/17

  @TC565745
  @Automated
  @Functional
  Scenario: TC565745 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data
    Then a successful COSMOS Facility Panel should load to the PIC DIV

