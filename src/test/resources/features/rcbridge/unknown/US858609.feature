# Last updated on 
@MVP
@EXARI-11273
@US858609
@MVP
@Plus
@releaseUnknown
@iterationUnknown
Feature: US858609 - Capture Import Time Lining History

  @TC564497
  @Automated
  @Functional
  @MVP
  @EXARI-11273
  Scenario: TC564497 - [RL0]
    Given I am the Entity Management solution
    When A User imports Entity Structure or Entity Relationships from a template
    Then I capture Entity Name
    And I capture Entity ID
    And I capture the User who imported data
    And I capture the time and date when User imported data

