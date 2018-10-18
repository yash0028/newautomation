# Last updated on 
@MVP
@CLM_UAT
@US1171451
@MVP
@Plus
@Priority_2
@F198810
@releaseUnknown
@iterationUnknown
Feature: US1171451 - Upload Tax ID File

  @TC564926
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @US1171451
  Scenario: TC564926 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to validate Tax ID information for multiple Tax IDs
    Then I can upload a file of validated Tax IDs into the Entity Management Solution
    And the Entity Management Solution updates Tax ID validation information

