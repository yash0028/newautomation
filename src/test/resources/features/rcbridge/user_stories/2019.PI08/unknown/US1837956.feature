# Last updated on 
@US1837956
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1837956 - Fields report from Alfresco

  @TC841779
  @Manual
  @Functional
  Scenario: TC841779 - [RL0]
    Given an admin wants to know all of the fields in Actvity Manager
    When they request the information
    Then a report can be generated, upon demand
    And it contains the Process Name
    And it contains the Task Name
    And it contains the Form Name
    And it contains the Field name
    And it contains the Field options (what can a person choose - Yes/No, List of fields)
    And it contains the Variable Name
    And it contains the Last updated date
    And the report can be viewed in Excel
    And the report is for all of the processes

