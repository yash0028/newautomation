# Last updated on 
@MVP
@CLM_UAT
@EXARI-11399
@US1096149
Feature: US1096149 - Migrate Owned TINs

  @TC564706
  @Automated
  @Functional
  Scenario: TC564706 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to maintain a BIC Owned TIN
    Then I maintain the BIC Owned TIN in the Entity Management Solution

