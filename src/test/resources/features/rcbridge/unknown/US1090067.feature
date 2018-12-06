# Last updated on 
@MVP
@US1090067
@MVP
@Plus
@Priority_1
@releaseUnknown
@iterationUnknown
Feature: US1090067 - Set Relationship Expiration Date

  @TC565142
  @Automated
  @Functional
  @MVP
  Scenario: TC565142 - [RL0]
    Given I am a User with access to maintain Entity information
    When I end a relationship
    Then I must enter expiration date
    And expiration date applies only to the relationship
    And expiration date can be in the future or retroactive
    And each Entity in the relationship retains the effective and end dates of the relationship

