# Last updated on 
@US1367998
@2018.PI04
@2018.PI04.05
@MVP
@10/1_Physician
@Priority_1
@kumar,_Sachin
@CMD
@releasePresent
@iterationPresent
Feature: US1367998 - Determine Product Penalty Table requirement

  @TC600540
  @Manual
  @Functional
  Scenario Outline: TC600540 - [RL0]
    Given "uhgSite" includes "<uhgSite>"
    When "productServices" value includes one or more of products:
      | Core                              |
      | CommercialproductsrequiringPCP    |
      | CommercialproductsnotrequiringPCP |
      | Navigate                          |
      | Nexus-OA                          |
      | Nexus-R                           |
      | Nexus-NR                          |
      | Compass                           |
      | Charter                           |
      | Heritage                          |
      | HeritageChoice                    |
      | NHP                               |
      | AllRiverValleyproducts            |
    Then Penalty Notification Table is required in the OCM
    # (Property that is expected/not expected in the OCM record)
    Examples:
      | uhgSite       |
      | UHN Northeast |
      | UHN Southeast |
      | UHN West      |
      | UHN Central   |
      | UHN National  |

  @TC611128
  @Manual
  @Functional
  Scenario Outline: TC611128 - [RL1]
    Given "uhgSite" includes "<uhgSite>"
    When "productServices" value does not include one or more of products:
      | Core                              |
      | CommercialproductsrequiringPCP    |
      | CommercialproductsnotrequiringPCP |
      | Navigate                          |
      | Nexus-OA                          |
      | Nexus-R                           |
      | Nexus-NR                          |
      | Compass                           |
      | Charter                           |
      | Heritage                          |
      | HeritageChoice                    |
      | NHP                               |
      | AllRiverValleyproducts            |
    Then Penalty Notification Table is not required in the OCM
    # (Property that is expected/not expected in the OCM record)
    Examples:
      | uhgSite       |
      | UHN Northeast |
      | UHN Southeast |
      | UHN West      |
      | UHN Central   |
      | UHN National  |
    # Note: for reference, NDB products list: IS A1, A2, A3, AA, AC, C0, C1, C2, EA, EB, EC, ED, EE, EF, EG, EH, EI, R0, S0, S1, S2, S7, S8, S9, SG, SH, SI, SX, SY, SZ, L1, L3, V1, V2, V3, EJ, EK, EL, EM, EO, ER,

