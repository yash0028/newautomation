# Last updated on 
@US1270130
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationFuture
Feature: US1270130 - Enhance OCM to capture and store Financial Penalty Table exceptions provided in PES Contracts API

  @TC868378
  @Manual
  @Functional
  Scenario: TC868378 - [RL0]
    Given the PES contracts API response was received
    When the response includes financial penalty table
    And the value includes pnc_pnlty_ntfy_id
    Then the financial penalty table id is stored in the OCM
    And the id is part of the contract config record
    And the id is stored at the contract/deal level of the OCM
    ###

