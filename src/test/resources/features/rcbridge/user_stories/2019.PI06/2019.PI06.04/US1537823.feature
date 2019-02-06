# Last updated on 
@US1537823
@2019.PI06
@2019.PI06.04
@releaseFuture
@iterationFuture
Feature: US1537823 - Search Contract Masters using ProductGroups from OCM using new fee schedule

  @TC710726
  @Manual
  @Functional
  Scenario: TC710726 - [RL0]
    Given a fee schedule / rate has been updated for a contract
    When the updated contract masters need to be identified
    Then existing CMD contract master search processes are used to identify the new contract masters
    ###

