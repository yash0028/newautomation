# Last updated on 
@US1649743
@2019.PI07
@2019.PI07.01
@releaseFuture
@iterationFuture
Feature: US1649743 - View denied retro via email link

  @TC753943
  @Manual
  @Functional
  Scenario: TC753943 - [RL0]
    Given a regional lead has received a denial/Requested more info email
    When they click on the <Retro ID# link)
    Then they can view the details of the retro within Activity Manager

  @TC753944
  @Manual
  @Functional
  Scenario: TC753944 - [RL1]
    Given the NPPP user group has received a denial/Requested more info email
    When they click on the <Retro ID# link)
    Then they can view the details of the retro within Activity Manager

  @TC753945
  @Manual
  @Functional
  Scenario: TC753945 - [RL2]
    Given a Market Lead has received a denial/Requested more info email
    When they click on the <Retro ID# link)
    Then they can view the details of the retro within Activity Manager

