# Last updated on 
@Contract_Rules
@US1439048
@2018.PI04
@2018.PI04.04
@MVP
@10/1_Physician
@Priority_1
@kumar,_Sachin
@CMD
@releasePresent
@iterationPast
Feature: US1439048 - HERITAGE PRODUCT SILENT INCLUSION correction

  @TC644181
  @Manual
  @Functional
  @Contract_Rules
  Scenario: TC644181 - [RL1]
    Given "uhgSite" contains "<site>"
    And "marketNumber" = "03413"
    When "productServicesExcluded" does contain the word "Heritage"
    Then "marketProductGroups" silent inclusion criteria has NOT been met for ""| HRTG CHOICE RV | HRTG OPTIONS RV |"

  @TC644179
  @Manual
  @Functional
  @Contract_Rules
  Scenario Outline: TC644179 - [RL0]
    Given "uhgSite" contains "<site>"
    And "marketNumber" = "03413"
    When "productServicesExcluded" does NOT contain the word "Heritage"
    Then "marketProductGroups" silent inclusion criteria has been met for "| HRTG CHOICE RV | HRTG OPTIONS RV |"
    Examples:
      | HRTG CHOICE RV  |
      | HRTG OPTIONS RV |

