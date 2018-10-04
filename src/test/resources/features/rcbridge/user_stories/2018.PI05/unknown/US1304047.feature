# Last updated on 
@US1304047
@2018.PI05
@MVP
@Priority_1
@Amrutha
@Parity
@F205016
Feature: US1304047 - Identify Gatekeeper Products

  @TC565247
  @Automated
  @Functional
  @US1304047
  @2018.PI05
  Scenario: TC565247 - [RL0]
    Given a roster termination event is received
    And the request includes one of the following Product Codes: S0, S1, S2, SG, SH, SI, SX, SY, SZ, S7, S8, S9, S3, S4, SA, SB, SC, SD, SE, ED, EE, EF, EA, EB, EC, EG, EH, EI, G0
    When the termination request includes a PCP
    Then PCP reassignment information is required from the database

  @TC565248
  @Automated
  @Functional
  @US1304047
  @2018.PI05
  Scenario: TC565248 - [RL1]
    Given a roster termination event is received
    And the request does not includes one of the following Product Codes: S0, S1, S2, SG, SH, SI, SX, SY, SZ, S7, S8, S9, S3, S4, SA, SB, SC, SD, SE, ED, EE, EF, EA, EB, EC, EG, EH, EI, G0
    When the termination request includes a PCP
    Then PCP reassignment information is NOT required from the database

