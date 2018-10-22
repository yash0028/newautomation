# Last updated on 
@Exari_Automation
@US1384733
@2018.PI04.03
@releaseUnknown
@iterationPresent
Feature: US1384733 - Exari API Testing for New Contract JSON

  @TC612451
  @Manual
  @Functional
  @Exari_Automation
  @US1384733
  @2018.PI04.03
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

