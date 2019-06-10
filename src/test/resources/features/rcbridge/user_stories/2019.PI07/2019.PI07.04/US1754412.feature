# Last updated on 
@US1754412
@2019.PI07
@2019.PI07.04
@releaseUnknown
@iterationUnknown
Feature: US1754412 - Enhance validation edits to allow all Professional/Group (HCFA) contract paper types for Integrations

  @TC804731
  @Manual
  @Functional
  Scenario Outline: TC804731 - [RL0]
    Given a valid Exari contract transaction is received of the paper type "<paperType>"
    When the contract paper type is present in the UCM
    Then the contract passes validation
    Examples:
      | paper Type |
      | SPA        |
      | PAT        |
      | SMGA       |
      | SPGA       |
      | MGA        |
      | IPA        |

