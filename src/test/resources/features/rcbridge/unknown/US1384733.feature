# Last updated on 
@Exari_Automation
@US1384733
@2018.PI04.03
@releaseUnknown
@iterationPast
Feature: US1384733 - Exari API Testing for New Contract JSON

  @TC612451
  @Automated
  @Regression
  @Exari_Automation
  Scenario Outline: TC612451 - [RL0] Verify Contracts are Using New JSON
    Given a contract with Contract ID of "<contractId>"
    When hitting the Exari API for Contract JSON Data
    Then the fields from file "ExariContractJsonFieldsNew.txt" are returned
    And the fields from file "ExariContractJsonFieldsNotNull.txt" are not null
    Examples:
      | contractId |
      | 45792546   |
      | 40433225   |
      | 35607806   |
      | 69494430   |

  @TC625885
  @Automated
  @Regression
  @Exari_Automation
  Scenario: TC625885 - [RL1] Verify Latest SPA Contracts Using New JSON and Do Null Checks
    Given the 10 latest "SPA" contract IDs from Exari
    When hitting Exari for each contract's JSON
    Then the fields from file "ExariContractJsonFieldsNew.txt" are returned for each contract
    And the fields from file "ExariContractJsonFieldsNotNull.txt" are not null for each contract

