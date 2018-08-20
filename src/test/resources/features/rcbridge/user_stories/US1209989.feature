# Last updated on 
@CLM_UAT
@MEG
@US1209989
@2018.PI03
Feature: US1209989 - [Continued] (MEG) Create microservice exposing Market Exception grid data

  @TC536741
  @Automated
  @Acceptance
  Scenario: TC536741 - Happy Path Validation for MEG
    # As a consumer of MEG data
    Given I have the ability to read the MS SQL
    When I make a request to the microservice to read a record
    Then I receive data that I would get from reading SQL db directly
    # SID Link.
