# Last updated on 
@US1398051
@F237915
@releaseUnknown
@iterationUnknown
Feature: US1398051 - Create initial ui tests

  @TC620095
  @Manual
  @Acceptance
  @US1398051
  Scenario Outline: TC620095 - [RL0] Check for  template create button on
    # Scenario 1: test for contract templates on each site
    Given I am logged into Exari Dev as a valid user
    And I am on the "<site>" site
    Then I find the create new button for "<type>"
    Examples:
      | site | type |
      | test              | GetPaperTypes.xml |
      | test     | SMGA.xml |
      | central uhn       | GetPaperTypes.xml |
      | central uhn | SMGA.xml    |
      | northeast uhn     | GetPaperTypes.xml |
      | northeast uhn | SMGA.xml      |
      | southeast uhn     | GetPaperTypes.xml |
      | southeast uhn | SMGA.xml      |
      | west              | GetPaperTypes.xml |
      | west     | SMGA.xml |
      | national          | GetPaperTypes.xml |
      | national | SMGA.xml |

