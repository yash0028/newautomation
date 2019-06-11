# Last updated on 
@MVP
@Infrastructure
@US977681
@2018.PI01
@2018.PI01.02
@releasePast
@iterationPast
Feature: US977681 - Setup Jenkins and CI/CD pipeline

  @TC564859
  @Manual
  @Functional
  @MVP
  @Infrastructure
  Scenario: TC564859 - [RL0]
    Given that code needs to be moved to dev environment
    When dev pushes code to release branch on Github
    Then it auto initiates the Jenkins job to create a maven build,
    And s2i build
    And a deployment to OpenShift

