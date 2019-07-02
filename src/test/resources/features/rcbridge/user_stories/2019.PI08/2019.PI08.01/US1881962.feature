# Last updated on 
@US1881962
@2019.PI08
@2019.PI08.01
@releasePresent
@iterationPresent
Feature: US1881962 - Update CMD UI Application Documentation && Maintenance

  @TC868369
  @Manual
  @Functional
  Scenario: TC868369 - [RL0]
    Given the angular UI components are not in sync with the CMD structure document
    When there is a need to update the document
    Then the document structure is update

  @TC868380
  @Manual
  @Functional
  Scenario: TC868380 - [RL1]
    Given all the angular components in the CMD UI
    Then all angular components are represented in the document structure
    And a short description is provided in a separate below section in the CMD structure document

  @TC868382
  @Manual
  @Functional
  Scenario: TC868382 - [RL2]
    Given all the angular components in the CMD UI
    Then the code coverage on all components should be at least 70%

