# Last updated on 
@Exari
@US1531933
@Exari_R_8.0
@EXARI-13133
@releasePresent
@iterationUnknown
Feature: US1531933 - Designate a Mass Action project for paper mail distribution

  @TC700961
  @Manual
  @Functional
  @Exari
  Scenario: TC700961 - [RL0]
    Given a Mass Action project has been created
    When the project Definition includes document creation
    Then the UI will include mandatory space to capture "Mail Type" and "Mail Date"

