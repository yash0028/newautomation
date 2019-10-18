# Last updated on 
@Raj_NJ
@Saikumar
@Ankur_Goel
@US2053730
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US2053730 - MSPS Specialty to SpecialtyGroup Crosswalk table (Upload Download UI Story)

  @TC1025762
  @Manual
  @Functional
  @Raj_NJ
  @Saikumar
  @Ankur_Goel
  Scenario: TC1025762 - [RL0]
    Given the MSPS SPECIALTY CROSSWALK table service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import is processed successfully
    Then The existing data is deleted
    And The content of spreadsheet is parsed and stored in a database table
    And The database is updated to indicate that the spreadsheet was processed successfully

  @TC1025769
  @Manual
  @Functional
  @Raj_NJ
  @Saikumar
  @Ankur_Goel
  Scenario: TC1025769 - [RL1]
    Given the MSPS SPECIALTY CROSSWALK service is up and running
    When A new spreadsheet is uploaded and stored in the database
    And The import fails
    Then The existing data is not deleted and not updated
    And The database is updated to indicate that the spreadsheet import failed
    And all messages of the reason for the failure are displayed in the UI

  @TC1025772
  @Manual
  @Functional
  @Raj_NJ
  @Saikumar
  @Ankur_Goel
  Scenario: TC1025772 - [RL2]
    Given more than one MSPS SPECIALTY CROSSWALK table record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

  @TC1025774
  @Manual
  @Functional
  @Raj_NJ
  @Saikumar
  @Ankur_Goel
  Scenario: TC1025774 - [RL3]
    Given an update to the current version of the MSPS SPECIALTY CROSSWALK is needed
    When an administrator downloads a copy of the table template
    Then the table template is made available to the administrator

