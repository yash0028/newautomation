# Last updated on 
@A_UI_Story
@US1398051
@Exari_UI_Test
@F237915
@releaseUnknown
@iterationUnknown
Feature: US1398051 - Create initial ui tests

  @TC620112
  @Automated
  @Functional
  @A_UI_Story
  @US1398051
  Scenario Outline: TC620112 - [RL1] Check for template create button on site
    # Scenario 1: test for contract templates on each site
    Given I am logged into Exari Dev as a valid user
    And I am on the "<site>" site
    Then I find the create new button for "<type>"
    Examples:
    #| southeast uhn |
    #| west |
    #| national |
      | site | type |
      | test              | GetPaperTypes.xml |
      | test     | SMGA.xml |
      | central uhn       | GetPaperTypes.xml |
      | central uhn | SMGA.xml    |
      | northeast uhn     | GetPaperTypes.xml |
      | northeast uhn | SMGA.xml      |

  @TC620095
  @Automated
  @Functional
  @A_UI_Story
  @US1398051
  Scenario Outline: TC620095 - [RL0] Connect to site
    Given I am logged into Exari Dev as a valid user
    And I am on the "<site>" site
    Then I confirm on am on the "<site>" landing page
    Examples:
      | site |
      | test |
      | central uhn |
      | northeast uhn |
    #| southeast uhn |
    #| west |
    #| national |

