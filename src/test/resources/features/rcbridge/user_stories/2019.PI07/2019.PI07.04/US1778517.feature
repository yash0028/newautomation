# Last updated on 
@US1778517
@2019.PI07
@2019.PI07.04
@releasePresent
@iterationFuture
Feature: US1778517 - Update email text

  @TC815270
  @Manual
  @Functional
  Scenario: TC815270 - [RL0]
    Given an email exists
    When it is sent
    Then it contains the updated text in the attached file

