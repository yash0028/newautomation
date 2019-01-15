# Last updated on 
@Contract_Rules
@US1439048
@2018.PI04
@2018.PI04.05
@releasePast
@iterationPast
Feature: US1439048 - HERITAGE PRODUCT SILENT INCLUSION correction

  @TC644179
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC644179 - [RL0] Verify has been met
    Given "uhgSite" contains "<site>"
    And "marketNumber" = "03413"
    When "productServicesExcluded" does NOT contain the word "Heritage"
    Then silent inclusion criteria has been met is "true"
    Examples:
      | site      |
      | Northeast |
      | Southeast |
      | Central   |
      | West      |

  @TC644181
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC644181 - [RL1] Verify has not been met
    Given "uhgSite" contains "<site>"
    And "marketNumber" = "03413"
    When "productServicesExcluded" does contain the word "Heritage"
    Then silent inclusion criteria has been met is "false"
    Examples:
      | site      |
      | Northeast |
      | Southeast |
      | Central   |
      | West      |

