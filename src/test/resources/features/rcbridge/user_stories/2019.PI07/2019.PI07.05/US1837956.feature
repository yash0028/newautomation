# Last updated on 
@US1837956
@2019.PI07
@2019.PI07.05
@releasePast
@iterationPast
Feature: US1837956 - Fields report from Alfresco

  @TC841779
  @Manual
  @Functional
  Scenario: TC841779 - [RL0]
    Given an admin wants to know all of the fields in Activity Manager
    When they request the information
    Then a report can be generated, upon demand
    And it contains the Process Name
    And it contains the Form Name
    And it contains the Field name
    And it contains the Field options (what can a person choose - Yes/No, List of fields)
    And it contains the Variable Name
    And the report can be viewed in Excel
    And the report is for all of the processes
    And the report can be run in each environment (dev, test, stage, training, prod)

