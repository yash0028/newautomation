# Last updated on 
@Adele_R
@US1987903
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US1987903 - Submit for loading

  @TC938302
  @Manual
  @Functional
  @Adele_R
  Scenario: TC938302 - [RL0]
    Given a rate escalator exist
    When the "Submit Fee Schedules on the MSPS site" task is completed for region as West
    Then a task "Submit for loading" is assigned to the contractor or process initiator
    And the text displayed in the form is "Please complete this task after you have submitted the rate escalator details for loading the in the downstream systems."

