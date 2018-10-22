# Last updated on 
@RCBridge
@US1176975
@F232975
@releaseUnknown
@iterationUnknown
Feature: US1176975 - RC Bridge Enhancement

  @TC569879
  @Automated
  @Functional
  @RCBridge
  @US1176975
  Scenario Outline: TC569879 - [RL1]
    Given a user story artifact with 2 valid acceptance criteria
    And that user story has 2 outdated RCLink test cases
    When rcbridge runs with "<data A>" and "<data B>"
    Then the RCLink test cases are updated
    Examples:
      | data A | data B |
      | A | B |
      | AA | BB |

  @TC557488
  @Automated
  @Functional
  @RCBridge
  @US1176975
  Scenario: TC557488 - [RL0] example test
    # Enhance Test Case Link
    Given a user story artifact with 2 valid acceptance criteria
    And that user story does not have test cases
    When rcbridge runs
    Then 2 test cases are created
