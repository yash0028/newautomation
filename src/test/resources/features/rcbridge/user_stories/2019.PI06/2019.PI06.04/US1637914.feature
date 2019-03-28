# Last updated on 
@US1637914
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationPresent
Feature: US1637914 - External Data Query

  @TC747951
  @Manual
  @Functional
  Scenario: TC747951 - [RL0]
    Given I supply a FS that has a rate Escalator attachments.
    When I search FS API
    Then the zip file will be unzipped and multiple PDF's would need to be combined and output in 1 file

