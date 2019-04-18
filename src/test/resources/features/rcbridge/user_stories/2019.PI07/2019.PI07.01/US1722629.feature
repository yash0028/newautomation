# Last updated on 
@US1722629
@2019.PI07
@2019.PI07.01
@releasePresent
@iterationPresent
Feature: US1722629 - Create Mass Actions display view for Mailing Status (UI) - continuation

  @TC792585
  @Manual
  @Functional
  Scenario: TC792585 - [RL0]
    Given that one or Mass Update project is actively running and updating Optum legacy systems
    When the CMD dashboard for 'Active' Mass Updates is viewed
    Then demonstrate that a 'top-level' view of all active Mass Update projects is displayed
    And the data columns displayed include:[Mass Update Id + ???? + ????]

  @TC792587
  @Manual
  @Functional
  Scenario: TC792587 - [RL1]
    Given that the CMD dashboard is displaying more than one Mass Update project
    When the user selects one of the Mass Update projects
    Then a window is opened showing transaction details for that Mass Update project including: [Successful + Error + Needs Action + Underway (sp?) ]

  @TC792588
  @Manual
  @Functional
  Scenario: TC792588 - [RL2]
    Given that one or Mass Update project is completed
    When the CMD dashboard for 'Completed' Mass Updates is viewed
    Then demonstrate that a 'top-level' view of all 'Completed' Mass Update projects is displayed
    And the data columns displayed include:[Mass Update Id + ???? + ????]

  @TC792589
  @Manual
  @Functional
  Scenario: TC792589 - [RL3]
    Given that the CMD dashboard is displaying more than one Completed Mass Update projects
    When the user selects one of the Completed Mass Update projects
    Then a window is opened showing transaction details for that Completed Mass Update project including: [Successful + Error + Needs Action + Underway (sp?) ]

