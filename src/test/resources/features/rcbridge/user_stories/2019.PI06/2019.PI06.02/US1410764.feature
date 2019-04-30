# Last updated on 
@US1410764
@2019.PI06
@2019.PI06.02
@releasePast
@iterationPast
Feature: US1410764 - Handle Roster Update Event --> Happy path (Compare Service)

  @TC737466
  @Manual
  @Functional
  Scenario: TC737466 - [RL0] add contract
    Given the provider roster is updated
    When we add a provider corresponding to a contract
    Then provider roster needs to be updated with add provider
    #Api Semantecs:
    #Get (Contract ID)
    #Response:
    #{List <Provider, Action Type (add or cancel)>}

  @TC701599
  @Manual
  @Functional
  Scenario: TC701599 - [RL1] remove contract
    Given the provider roster is updated
    When we cancel a provider corresponding to a contract
    Then provider roster needs to be updated with cancel provider

