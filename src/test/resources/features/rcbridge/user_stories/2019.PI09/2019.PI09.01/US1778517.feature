# Last updated on 
@Sheham
@US1778517
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US1778517 - [Continued] Update email text

  @TC815270
  @Manual
  @Functional
  @Sheham
  Scenario: TC815270 - [RL0]
    Given an email exists
    When it is sent
    Then it contains the updated text in the attached file

