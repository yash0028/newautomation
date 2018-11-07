# Last updated on 
@US861079
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US861079 - Update and Validate Entity Data

  @TC565650
  @Automated
  @Functional
  Scenario: TC565650 - [RL0]
    Given I am a User with access to maintain Entity information
    When I receive Entity data consolidated through automated process
    Then I can update and validate the Entity data
    And I can submit for approval

