# Last updated on 
@Contract_Rules
@US1368002
@2018.PI04
@2018.PI04.04
@releasePast
@iterationPast
Feature: US1368002 - HERITAGE PRODUCT SILENT INCLUSION

  @TC600549
  @Manual
  @Functional
  @Contract_Rules
  Scenario Outline: TC600549 - [RL0] Validate Silent Inclusion Met
    Given "uhgSite" contains "<site>"
    And "marketNumber" = "03413"
    When "productServicesExcluded" does NOT contain the word "Heritage"
    Then silent inclusion criteria has been met is "true"
    Examples:
      | site      | marketProduct       |
      | Northeast | HRTG CHOICE RV      |
      | Central   | HRTG OPTIONS RV     |
      | West      | HRTG SEL ADV CHOICE |
      | Southeast | HRTG SEL ADV OPTION |

  @TC608275
  @Manual
  @Functional
  @Contract_Rules
  Scenario Outline: TC608275 - [RL1] Validate Silent Inclusion Not Met
    Given "uhgSite" contains "<site>"
    And "marketNumber" = "03413"
    When "productServicesExcluded" does contain the word "Heritage"
    Then "marketProductGroups" silent inclusion criteria has NOT been met for "<marketProduct>"
    Examples:
      | site      | marketProduct       |
      | Northeast | HRTG CHOICE RV      |
      | Central   | HRTG OPTIONS RV     |
      | West      | HRTG SEL ADV CHOICE |
      | Southeast | HRTG SEL ADV OPTION |

