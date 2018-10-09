# Last updated on 
@Exari_Automation
@US1367884
@2018.PI04
@2018.PI04.02
Feature: US1367884 - Automate Exari Testing - SPA

  @TC600539
  @Automated
  @Functional
  @Exari_Automation
  @US1367884
  @2018.PI04
  @2018.PI04.02
  Scenario Outline: TC600539 - [RL0] Verify Fields of Exari Contract JSON
    Given a contract with Contract ID of "<contractId>"
    When hitting the Exari API for Contract JSON Data
    Then the fields from file "ExariContractJsonFields.txt" are returned
    Examples:
      | contractId |
      | 83912326 |
      | 54832293 |
      | 61101243 |
      | 41730707 |
      | 78522500 |
      | 39385755 |
      | 39156795 |
      | 47992548 |
      | 47541909 |
      | 97318644 |

