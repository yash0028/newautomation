# Last updated on 
@US1425656
@2018.PI05
@2018.PI05.01
@MVP
@Priority_2
@NDB
@CMD
@releaseFuture
@iterationFuture
Feature: US1425656 - UI/UX- Enable resend select button from CMD errror page

  @RC_unlinked
  @TC634366
  @Manual
  @Functional
  Scenario: TC634366 - [RL2]
    ###Scenario 4 (Add resolution text field in transaction database):
    Given I have entered information in the resolution text box for a contract master type 2 or 3 error
    When I have clicked the Resolution button
    And The error is removed from the CMD error UI
    Then The information I have entered in the resolution text box is added to the Resolution Text box in the TBD (need name) database.

