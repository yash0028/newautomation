# Last updated on 
@US1678207
@releaseUnknown
@iterationUnknown
Feature: US1678207 - Setup Database

  @TC765387
  @Manual
  @Functional
  Scenario: TC765387 - [RL0]
    #Scenario 1: Setup Database
    Given I am a needing to reference data that currently housed in the Existing NCC Medical Salesforce, New NCC Medical Salesforce or Committee Grids (which are housed on a Sharepoint at this moment)
    When I access that information in order to either make credentialing decisions, report as needed by the business, or use as an inventory report to then assign work to Users
    Then I will be able to send this information through the PDP API (to be handled in a separate Feature) and have it stored in the PDP Database

