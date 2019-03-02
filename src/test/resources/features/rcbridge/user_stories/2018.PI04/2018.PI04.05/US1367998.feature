# Last updated on 
@Contract_Rules
@US1367998
@2018.PI04
@2018.PI04.05
@releasePast
@iterationPast
Feature: US1367998 - Determine Product Penalty Table requirement

  @TC611128
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC611128 - [RL1]
    Given "uhgSite" includes "<uhgSite>"
    When "productServices" value does not include one or more of "products"
    # Does not include Core, CommercialproductsrequiringPCP, CommercialproductsnotrequiringPCP, Navigate, etc.
    Then Penalty Notification Table is not required in the OCM
    # (Property that is expected/not expected in the OCM record)
    Examples:
      | uhgSite       |
      | Northeast UHN |
      | Southeast UHN |
      | West UHN      |
      | Central UHN   |
      | National UHN  |
    # Note: for reference, NDB products list: IS A1, A2, A3, AA, AC, C0, C1, C2, EA, EB, EC, ED, EE, EF, EG, EH, EI, R0, S0, S1, S2, S7, S8, S9, SG, SH, SI, SX, SY, SZ, L1, L3, V1, V2, V3, EJ, EK, EL, EM, EO, ER,

