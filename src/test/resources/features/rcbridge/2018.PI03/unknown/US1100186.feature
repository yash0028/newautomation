# Last updated on
@US1100186
@2018.PI03
@MVP
@Parity
@F185547
@releasePast
@iterationUnknown
Feature: US1100186 - Edit the amendment document

  @TC565647
  @Automated
  @Functional
  @US1100186
  @2018.PI03
  Scenario: TC565647 - [RL0]
    Given the amendment document has been generated
    When the User determines edits are required
    Then Exari allows Acceptable Edits to occur
    And presents the User with the refined document
    And the User determines if Edits are required

