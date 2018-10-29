# Last updated on 
@US1070732
@2018.PI05
@MVP
@Plus
@Priority_2
@Facility
@F159195
@releaseFuture
@iterationUnknown
Feature: US1070732 - Exari>COSMOS Term an individual Facility Contract- existing contract - PSH

  @TC565216
  @Automated
  @Functional
  @US1070732
  @2018.PI05
  Scenario: TC565216 - [RL0]
    Given the Exari > COSMOS Facility data within the Payload is correct
    When COSMOS receives the Exari Facility Payload data to add to an existing contract
    Then a successful COSMOS Facility Panel should load to the PIC DIV to be worked by COSMOS and added to the existing Panels for the given Facility

