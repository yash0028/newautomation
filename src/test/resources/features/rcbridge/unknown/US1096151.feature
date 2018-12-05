# Last updated on 
@MVP
@CLM_UAT
@US1096151
@MVP
@Plus
@releaseUnknown
@iterationUnknown
Feature: US1096151 - Migrate BIC Entity Components

  @TC565543
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  Scenario: TC565543 - [RL0]
    Given I am a User with access to maintain Entity information
    When I view an Umbrella Entity in the Entity Management Solution
    Then all Organizational Unit Entities from BIC roll up to the correct Umbrella Entity in the Entity Management Solution

