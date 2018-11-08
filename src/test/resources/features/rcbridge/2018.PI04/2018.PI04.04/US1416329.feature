# Last updated on 
@US1416329
@2018.PI04
@2018.PI04.04
@Priority_1
@Scrum_Team_1
@releasePresent
@iterationPresent
Feature: US1416329 - Changes to Counter Party Search

  @TC634260
  @Manual
  @Functional
  Scenario Outline: TC634260 - [RL0]
    Given a user wants to find a Counter Party
    When they search using a combo input parameter "<input1>" "<input2>"
    Then they get back all of the possible providers and each providers associated Corp MPIN number
    Examples:
      | input1   | input2   |
      | mpin     | tin      |
      | mpin     | npi      |
      | mpin     | zip      |
      | mpin     | city     |
      | mpin     | lastName |
      | mpin     | state    |

