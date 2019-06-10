# Last updated on 
@CLM_UAT
@ETMA
@US1100261
@2018.PI03
@2018.PI03.01
@releaseUnknown
@iterationUnknown
Feature: US1100261 - Build Micro Service (ETMA)

  @TC565104
  @Manual
  @Functional
  @CLM_UAT
  @ETMA
  Scenario: TC565104 - [RL0] Verification of ETMA microservice
    Given the connection details
    When the micro service calls the ETMA tables
    Then the connection is successful

