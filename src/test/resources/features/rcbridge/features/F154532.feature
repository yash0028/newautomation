# Last updated on 
@MVP
@F154532
Feature: F154532 - Setup Optum Dev and Training Environment - Optum

  @US1054141
  @2018.PI01
  Scenario: US1054141 - [Continued] Setup RC Bridge Automation Testing Component
    Given that the RC Bridge pulls in data from Rally to be sent to Cucumber
    Then the QA team needs to develop and refine the RC Bridge

  @Provider_Demographics
  @PES
  @US977596
  @2018.PI01
  Scenario: US977596 - (Provider) Create a microservice to connect to PES
    Given that a user wants to get provider details from PES service
    When a request is sent with MPN andTIN to CLM microservice
    Then provider details will be returned to user

  @MVP
  @Infrastructure
  @US977620
  @2018.PI01
  Scenario: US977620 - [Spike] Coordinate with Infrastructure Engineering Team
    Given that the Kafka infrastructure will be in CORE
    Then we need to make engineering decisions on where the Virtual Machines (VMs) will live in DMZ or CORE

  @US1055361
  @2018.PI01
  Scenario: US1055361 - [Spike] Investigate MSG DB Connection
    Given Exari will need to connect to the MSG DB
    Then the developer will need to research a solution to connect to the Access DB.

  @MVP
  @Infrastructure
  @US977681
  @2018.PI01
  Scenario: US977681 - Setup Jenkins and CI/CD pipeline
    Given that code needs to be moved to dev environment
    When dev pushes code to release branch on Github
    Then it auto initiates the Jenkins job to create a maven build,
    And s2i build
    And a deployment to OpenShift

  @MVP
  @CLM_Exari
  @US948994
  @2018.PI01
  Scenario: US948994 - Verify ability to hit Exari Dev environment
    Given a user wants to lookup a contract in Exam
    When request is sent to CLM microservice with contract ID
    Then the service will handle authorization, errors, and returns contract details it found.

  @Integration
  @US1055310
  @2018.PI01
  Scenario: US1055310 - Implement Docker push to Optum Docker Hub
    Given spring based Jenkins file already has all the steps required in our pipeline
    Then a developer will configure the docker plugin to enable pushing docker images to Optum's docker hub.

  @CLM_UAT
  @US1055237
  @2018.PI01
  Scenario: US1055237 - OSAM Assessment
    Given Optum wants to know how well the team is practicing agile methodology
    When the team completes the Assessment,
    Then the team will know how well the team is practicing agile methodology.

  @US1055343
  @2018.PI01
  Scenario: US1055343 - Integrate Openshift Deployments with Jenkins Pipeline
    Given the created images need to be pushed onto the Dev environment,
    Then the images should be pushed to Openshift via the Jenkins Pipeline.

  @MVP
  @US983405
  @2018.PI01
  Scenario: US983405 - [Continued] Setup RC Bridge Automation Testing Component
    Given information that needs to get back to rally
    When the report is available on Jenkins
    Then Rally is updated with the results

  @CLM_UAT
  @US1055871
  @2018.PI01
  Scenario: US1055871 - Implement Test Framework within Test Projects
    Given the automation framework will be used in CI/CD. pipeline
    Then the QA team will write example tests to ensure the validity of the automation framework.

