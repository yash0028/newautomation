# Last updated on 
@activiti-api
@US1456884
@2018.PI05
@2018.PI05.01
@MVP
@Plus
@releasePresent
@iterationPast
Feature: US1456884 - Create API to store Activiti process data

  @TC659917
  @Automated
  @Functional
  @activiti-api
  Scenario Outline: TC659917 - [RL0] Verify POST to service
    When hitting the activiti-api with "contractId" of "<contractId>"
    And activiti field "processId" of "<processId>"
    And activiti field "processName" of "<processName>"
    Then a 201 response code is received from the activiti-api
    Examples:
      | contractId                     | processId                      | processName                    |
      | 23534123                       | df6sdf9-sdfk454453-sdfkjsd3434 | Retro                          |

