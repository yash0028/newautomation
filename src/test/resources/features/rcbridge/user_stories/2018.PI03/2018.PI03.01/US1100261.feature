# Last updated on 
@CLM_UAT
@ETMA
@US1100261
@2018.PI03
@2018.PI03.01
@MVP
@PI02_Top3
@Plus
@Parity
@F182490
Feature: US1100261 - Build Micro Service (ETMA)

  @TC565104
  @Manual
  @Functional
  @CLM_UAT
  @ETMA
  @US1100261
  @2018.PI03
  @2018.PI03.01
  Scenario: TC565104 - [RL0] Verification of ETMA microservice
    Given the connection details
    When the micro service calls the ETMA tables
    Then the connection is successful

