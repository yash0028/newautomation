# Last updated on 
@US1553599
@2018.PI05
@2018.PI05.04
@releasePast
@iterationPast
Feature: US1553599 - Pull From Optum Docker Repo Base

  @TC712517
  @Manual
  @Functional
  Scenario: TC712517 - [RL0]
    Given a new service is created,
    When the Docker image is built,
    Then all image layers come from Optum owned Docker images

