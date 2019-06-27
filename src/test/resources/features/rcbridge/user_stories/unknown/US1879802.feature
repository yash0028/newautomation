# Last updated on 
@Shiva
@US1879802
@releaseUnknown
@iterationUnknown
Feature: US1879802 - Update email text

  @TC868379
  @Manual
  @Functional
  @Shiva
  Scenario: TC868379 - [RL0]
    Given an email exists
    When it is sent
    Then it contains the updated text in the attached file

