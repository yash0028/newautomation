# Last updated on 
@Go_Live
@US1559392
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationFuture
Feature: US1559392 - Notify retro process when "Track Status of Physician Contract Installation" is completed

  @TC714608
  @Manual
  @Functional
  @Go_Live
  Scenario: TC714608 - [RL0]
    Given a physician workflow has an associated retro workflow
    When the "Track Status of Physician Contract Installation" is completed
    Then the associated retro process is notified

