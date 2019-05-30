# Last updated on 
@US1801929
@2019.PI07
@2019.PI07.04
@releasePresent
@iterationPresent
Feature: US1801929 - Create Mass Actions display view (UI) (Exari Integration)

  @TC823903
  @Manual
  @Functional
  Scenario: TC823903 - [RL0]
    Given that one or Mass Update project is actively running and updating Optum legacy systems
    When the CMD dashboard for 'Active' Mass Updates is viewed
    Then demonstrate that a 'top-level' view of all active Mass Update projects is displayed
    And the data columns displayed include:[Mass Update Id + ???? + ????]

  @TC823904
  @Manual
  @Functional
  Scenario: TC823904 - [RL1]
    Given that the CMD dashboard is displaying more than one Active Mass Update project
    When the user selects one of the Active Mass Update projects
    Then a window is opened showing transaction details for that Active Mass Update project including: [Successful + Error + Needs Action + Underway (sp?) ]

  @TC823905
  @Manual
  @Functional
  Scenario: TC823905 - [RL2]
    Given that one or Mass Update project is completed
    When the CMD dashboard for 'Completed' Mass Updates is viewed
    Then demonstrate that a 'top-level' view of all 'Completed' Mass Update projects is displayed
    And the data columns displayed include:[Mass Update Id + ???? + ????]

  @TC823906
  @Manual
  @Functional
  Scenario: TC823906 - [RL3]
    Given that the CMD dashboard is displaying more than one Completed Mass Update projects
    When the user selects one of the Completed Mass Update projects
    Then a window is opened showing transaction details for that Completed Mass Update project including: [Successful + Error + Needs Action + Underway (sp?) ]

