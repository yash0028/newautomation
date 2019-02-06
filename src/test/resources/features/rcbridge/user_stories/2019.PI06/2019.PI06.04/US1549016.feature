# Last updated on 
@US1549016
@2019.PI06
@2019.PI06.04
@releaseFuture
@iterationFuture
Feature: US1549016 - Create Mass Actions display view (UI)

  @TC720665
  @Manual
  @Functional
  Scenario: TC720665 - [RL0]
    Given that one or Mass Update project is actively running and updating Optum legacy systems
    When the CMD dashboard for 'Active' Mass Updates is viewed
    Then demonstrate that a 'top-level' view of all active Mass Update projects is displayed
    And the data columns displayed include:[Mass Update Id + ???? + ????]

  @TC720676
  @Manual
  @Functional
  Scenario: TC720676 - [RL1]
    Given that the CMD dashboard is displaying more than one Mass Update project
    When the user selects one of the Mass Update projects
    Then a window is opened showing transaction details for that Mass Update project including: [Successful + Error + Needs Action + Underway (sp?) ]

  @TC720682
  @Manual
  @Functional
  Scenario: TC720682 - [RL2]
    Given that one or Mass Update project is completed
    When the CMD dashboard for 'Completed' Mass Updates is viewed
    Then demonstrate that a 'top-level' view of all 'Completed' Mass Update projects is displayed
    And the data columns displayed include:[Mass Update Id + ???? + ????]

  @TC720686
  @Manual
  @Functional
  Scenario: TC720686 - [RL3]
    Given that the CMD dashboard is displaying more than one Completed Mass Update projects
    When the user selects one of the Completed Mass Update projects
    Then a window is opened showing transaction details for that Completed Mass Update project including: [Successful + Error + Needs Action + Underway (sp?) ]

