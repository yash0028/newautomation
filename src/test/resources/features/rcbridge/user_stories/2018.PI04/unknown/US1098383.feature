# Last updated on 
@MVP
@Parity
@US1098383
@2018.PI04
@MVP
@Parity
@F185543
Feature: US1098383 - Upload spreadsheet to identify target providers

  @TC564950
  @Automated
  @Functional
  @MVP
  @Parity
  @US1098383
  @2018.PI04
  Scenario: TC564950 - [RL0]
    Given I am a user with access to the Mass Actions UI
    When I have populated a mass actions template with target providers
    Then I can upload the Mass Action template/spreadsheet
    And target providers are scrubbed against integration points

