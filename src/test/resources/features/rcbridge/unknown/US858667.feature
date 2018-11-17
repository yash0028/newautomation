# Last updated on 
@MVP
@CLM_UAT
@EXARI-11696
@US858667
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US858667 - Expire Relationship

  @TC564583
  @Automated
  @Functional
  @MVP
  @CLM_UAT
  @EXARI-11696
  Scenario: TC564583 - [RL0]
    Given I am a User with access to maintain Entity information
    When I need to end a relationship between two Entities
    Then I can enter an expiration date on which to end the relationship
    And the relationship expiration date is stored on each Entity that was in the relationship

