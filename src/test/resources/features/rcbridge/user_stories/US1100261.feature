# Last updated on 
@CLM_UAT
@ETMA
@US1100261
@2018.PI03
Feature: US1100261 - Build Micro Service (ETMA)

  @TC565104
  @Manual
  @Functional
  Scenario: TC565104 - [RL0]
    Given the connection details
    When the micro service calls the ETMA tables
    Then the connection is successful

