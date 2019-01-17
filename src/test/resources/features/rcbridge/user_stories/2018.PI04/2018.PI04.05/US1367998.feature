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
      | Northeast                         | Core                              |
      | Northeast                         | CommercialproductsrequiringPCP    |
      | Northeast                         | CommercialproductsnotrequiringPCP |
      | Northeast                         | Navigate                          |
      | Northeast                         | Nexus-OA                          |
      | Northeast                         | Nexus-R                           |
      | Northeast                         | Nexus-NR                          |
      | Northeast                         | Compass                           |
      | Northeast                         | Charter                           |
      | Northeast                         | Heritage                          |
      | Northeast                         | HeritageChoice                    |
      | Northeast                         | NHP                               |
      | Northeast                         | AllRiverValleyproducts            |
      | Southeast                         | Core                              |
      | Southeast                         | CommercialproductsrequiringPCP    |
      | Southeast                         | CommercialproductsnotrequiringPCP |
      | Southeast                         | Navigate                          |
      | Southeast                         | Nexus-OA                          |
      | Southeast                         | Nexus-R                           |
      | Southeast                         | Nexus-NR                          |
      | Southeast                         | Compass                           |
      | Southeast                         | Charter                           |
      | Southeast                         | Heritage                          |
      | Southeast                         | HeritageChoice                    |
      | Southeast                         | NHP                               |
      | Southeast                         | AllRiverValleyproducts            |
      | West                              | Core                              |
      | West                              | CommercialproductsrequiringPCP    |
      | West                              | CommercialproductsnotrequiringPCP |
      | West                              | Navigate                          |
      | West                              | Nexus-OA                          |
      | West                              | Nexus-R                           |
      | West                              | Nexus-NR                          |
      | West                              | Compass                           |
      | West                              | Charter                           |
      | West                              | Heritage                          |
      | West                              | HeritageChoice                    |
      | West                              | NHP                               |
      | West                              | AllRiverValleyproducts            |
      | Central                           | Core                              |
      | Central                           | CommercialproductsrequiringPCP    |
      | Central                           | CommercialproductsnotrequiringPCP |
      | Central                           | Navigate                          |
      | Central                           | Nexus-OA                          |
      | Central                           | Nexus-R                           |
      | Central                           | Nexus-NR                          |
      | Central                           | Compass                           |
      | Central                           | Charter                           |
      | Central                           | Heritage                          |
      | Central                           | HeritageChoice                    |
      | Central                           | NHP                               |
      | Central                           | AllRiverValleyproducts            |
      | National                          | Core                              |
      | National                          | CommercialproductsrequiringPCP    |
      | National                          | CommercialproductsnotrequiringPCP |
      | National                          | Navigate                          |
      | National                          | Nexus-OA                          |
      | National                          | Nexus-R                           |
      | National                          | Nexus-NR                          |
      | National                          | Compass                           |
      | National                          | Charter                           |
      | National                          | Heritage                          |
      | National                          | HeritageChoice                    |
      | National                          | NHP                               |
      | National                          | AllRiverValleyproducts            |

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
      | uhgSite   |
      | Northeast |
      | Southeast |
      | West      |
      | Central   |
      | National  |
    # Note: for reference, NDB products list: IS A1, A2, A3, AA, AC, C0, C1, C2, EA, EB, EC, ED, EE, EF, EG, EH, EI, R0, S0, S1, S2, S7, S8, S9, SG, SH, SI, SX, SY, SZ, L1, L3, V1, V2, V3, EJ, EK, EL, EM, EO, ER,

