# Last updated on
@MVP
@EXARI-11273
@US858618
@MVP
@Plus
@Priority_1
@F137660
@releaseUnknown
@iterationUnknown
Feature: US858618 - Capture Time Lining History

  @TC565563
  @Automated
  @Functional
  @MVP
  @EXARI-11273
  @US858618
  Scenario: TC565563 - [RL0]
    Given I am the Entity Management solution
    When User adds or updates an Identifier relationship to an Entity
    Then I capture the Identifier
    And I capture the Identifier Type
    And I capture the Identifier Effective Date
    And I capture the Identifier Expiration Date
    And I capture User who performed the value change
    And I capture the date and time on which the User performed the value change

