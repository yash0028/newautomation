# Last updated on 
@RCBridge
@US1176975
@2018.PI03
Feature: US1176975 - RC Bridge Enhancement

  @TC520753
  @Automated
  @Functional
  Scenario Outline: TC520753 - [RL1] blah blah blah
    Given a user story artifact with 2 valid acceptance criteria
    And that user story has 2 outdated RCLink test cases
    When rcbridge runs
    Then the RCLink test cases are updated
    Examples:
      | data A | data B |
      | A | B |
      | AA | BB |

  @TC557488
  @Automated
  @Functional
  Scenario: TC557488 - [RL0] example test
    # Enhance Test Case Link
    Given a user story artifact with 2 valid acceptance criteria
    And that user story does not have test cases
    When rcbridge runs
    Then 2 test cases are created

