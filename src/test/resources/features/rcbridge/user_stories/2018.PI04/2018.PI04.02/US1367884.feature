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
  Scenario: TC600539 - [RL0]
    Given a contract with Contract ID of "83912326"
    When hitting the Exari API for Contract JSON Data
    Then the following fields are returned:
      | test1 |
      | test2 |

