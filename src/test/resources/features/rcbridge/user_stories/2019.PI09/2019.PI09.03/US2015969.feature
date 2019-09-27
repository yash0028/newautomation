# Last updated on 
@Arvind
@US2015969
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationFuture
Feature: US2015969 - Manual Rate Escalator

  @TC997018
  @Manual
  @Functional
  @Arvind
  Scenario: TC997018 - [RL1]
    Given the rate escalator pr
    When they are inputting information on the "Escalator Details table"
    Then the msps_number is a string (for example, IN 10650)

