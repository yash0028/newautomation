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

  @TC634359
  @Manual
  @Functional
  Scenario: TC634359 - [RL1]
    Given a user has updated the failed transaction status in CMD for a qualified type 2 error
    When a user has determined NOT TO resend/retry the transaction
    Then an means to NOT initiate a resend/retry the installation is made available to the user

  @TC635115
  @Manual
  @Functional
  Scenario: TC635115 - [RL2]
    Given a user has NOT updated the failed transaction status in CMD for a qualified type 2 error
    When a user has determined the need to resend/retry the transaction
    Then an means to initiate a resend/retry the installation is NOT made available to the user

  @TC634353
  @Manual
  @Functional
  Scenario: TC634353 - [RL0]
    Given a user has updated the failed transaction status in CMD for a qualified type 2 error
    When a user has determined the need to resend/retry the transaction
    Then an means to initiate a resend/retry the installation is made available to the user

