# Last updated on 
@US1782846
@2019.PI07
@2019.PI07.03
@releasePast
@iterationPast
Feature: US1782846 - Update OCM Silent Inclusion

  @TC818957
  @Automated
  @Functional
  Scenario Outline: TC818957 - [RL0] Verify Contract Rules Product Groups
    Given "uhgSite" contains "<site>"
    And "marketNumber" = "03413"
    When "productServicesExcluded" does NOT contain the word "Heritage"
    Then silent inclusion criteria has been met is "true"
    And the result contains "productMarketGroups" of:
      | HRTG CHOICE  |
      | HRTG OPTIONS |
      | HRTG SA CH   |
      | HRTG SA OP   |
    Examples:
      | site          |
      | Northeast UHN |
      | Southeast UHN |

