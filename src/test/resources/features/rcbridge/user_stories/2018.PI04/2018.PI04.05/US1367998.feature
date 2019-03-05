# Last updated on 
@Contract_Rules
@US1367998
@2018.PI04
@2018.PI04.05
@releasePast
@iterationPast
Feature: US1367998 - Determine Product Penalty Table requirement

  @TC600540
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC600540 - [RL0]
    Given "uhgSite" includes "<uhgSite>"
    When "productServices" value includes one or more of "<product>"
    Then Penalty Notification Table is required in the OCM
    # (Property that is expected/not expected in the OCM record)
    Examples:
      | uhgSite                           | product                           |
      | Northeast UHN                     | Core                              |
      | Northeast UHN                     | CommercialproductsrequiringPCP    |
      | Northeast UHN                     | CommercialproductsnotrequiringPCP |
      | Northeast UHN                     | Navigate                          |
      | Northeast UHN                     | Nexus-OA                          |
      | Northeast UHN                     | Nexus-R                           |
      | Northeast UHN                     | Nexus-NR                          |
      | Northeast UHN                     | Compass                           |
      | Northeast UHN                     | Charter                           |
      | Northeast UHN                     | Heritage                          |
      | Northeast UHN                     | HeritageChoice                    |
      | Northeast UHN                     | NHP                               |
      | Northeast UHN                     | AllRiverValleyproducts            |
      | Southeast UHN                     | Core                              |
      | Southeast UHN                     | CommercialproductsrequiringPCP    |
      | Southeast UHN                     | CommercialproductsnotrequiringPCP |
      | Southeast UHN                     | Navigate                          |
      | Southeast UHN                     | Nexus-OA                          |
      | Southeast UHN                     | Nexus-R                           |
      | Southeast UHN                     | Nexus-NR                          |
      | Southeast UHN                     | Compass                           |
      | Southeast UHN                     | Charter                           |
      | Southeast UHN                     | Heritage                          |
      | Southeast UHN                     | HeritageChoice                    |
      | Southeast UHN                     | NHP                               |
      | Southeast UHN                     | AllRiverValleyproducts            |
      | West UHN                          | Core                              |
      | West UHN                          | CommercialproductsrequiringPCP    |
      | West UHN                          | CommercialproductsnotrequiringPCP |
      | West UHN                          | Navigate                          |
      | West UHN                          | Nexus-OA                          |
      | West UHN                          | Nexus-R                           |
      | West UHN                          | Nexus-NR                          |
      | West UHN                          | Compass                           |
      | West UHN                          | Charter                           |
      | West UHN                          | Heritage                          |
      | West UHN                          | HeritageChoice                    |
      | West UHN                          | NHP                               |
      | West UHN                          | AllRiverValleyproducts            |
      | Central UHN                       | Core                              |
      | Central UHN                       | CommercialproductsrequiringPCP    |
      | Central UHN                       | CommercialproductsnotrequiringPCP |
      | Central UHN                       | Navigate                          |
      | Central UHN                       | Nexus-OA                          |
      | Central UHN                       | Nexus-R                           |
      | Central UHN                       | Nexus-NR                          |
      | Central UHN                       | Compass                           |
      | Central UHN                       | Charter                           |
      | Central UHN                       | Heritage                          |
      | Central UHN                       | HeritageChoice                    |
      | Central UHN                       | NHP                               |
      | Central UHN                       | AllRiverValleyproducts            |
      | National UHN                      | Core                              |
      | National UHN                      | CommercialproductsrequiringPCP    |
      | National UHN                      | CommercialproductsnotrequiringPCP |
      | National UHN                      | Navigate                          |
      | National UHN                      | Nexus-OA                          |
      | National UHN                      | Nexus-R                           |
      | National UHN                      | Nexus-NR                          |
      | National UHN                      | Compass                           |
      | National UHN                      | Charter                           |
      | National UHN                      | Heritage                          |
      | National UHN                      | HeritageChoice                    |
      | National UHN                      | NHP                               |
      | National UHN                      | AllRiverValleyproducts            |

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

