# Last updated on 2018-06-18T15:20:37.459Z
@MVP
Feature: F154532 - Setup Optum Dev and Training Environment - Optum

  @2018.PI01
  @2018.PI01.04
  Scenario: US1054141
    Given that the RC Bridge pulls in data from Rally to be sent to Cucumber
    Then the QA team needs to develop and refine the RC Bridge

  @CLM_UAT
  @2018.PI01
  @2018.PI01.03
  Scenario: US1033247
    Given Microservice URI
    When Interacting with Integration Systems
    Then REST API Automation should be performed to connect and obtain information based on GET, POST and PUT Methods

  @Provider_Demographics
  @PES
  @2018.PI01
  @2018.PI01.02
  Scenario: US977596
    Given that a user wants to get provider details from PES service
    When a request is sent with MPN andTIN to CLM microservice
    Then provider details will be returned to user

  @MVP
  @Infrastructure
  @2018.PI01
  @2018.PI01.01
  Scenario: US977620
    Given that the Kafka infrastructure will be in CORE
    Then we need to make engineering decisions on where the Virtual Machines (VMs) will live in DMZ or CORE

  @2018.PI01
  @2018.PI01.04
  Scenario: US1055361
    Given Exari will need to connect to the MSG DB
    Then the developer will need to research a solution to connect to the Access DB.

  @MVP
  @Infrastructure
  @2018.PI01
  @2018.PI01.02
  Scenario: US977681
    Given that code needs to be moved to dev environment
    When dev pushes code to release branch on Github
    Then it auto initiates the Jenkins job to create a maven build,
    And s2i build
    And a deployment to OpenShift

  @MVP
  @CLM_Exari
  @2018.PI01
  @2018.PI01.02
  Scenario: US948994
    Given a user wants to lookup a contract in Exam
    When request is sent to CLM microservice with contract ID
    Then the service will handle authorization, errors, and returns contract details it found.

  @Integration
  @2018.PI01
  @2018.PI01.04
  Scenario: US1055310
    Given spring based Jenkins file already has all the steps required in our pipeline
    Then a developer will configure the docker plugin to enable pushing docker images to Optum's docker hub.

  @CLM_UAT
  @2018.PI01
  @2018.PI01.04
  Scenario: US1055237
    Given Optum wants to know how well the team is practicing agile methodology
    When the team completes the Assessment,
    Then the team will know how well the team is practicing agile methodology.

  @2018.PI01
  @2018.PI01.04
  Scenario: US1055343
    Given the created images need to be pushed onto the Dev environment,
    Then the images should be pushed to Openshift via the Jenkins Pipeline.

  @MVP
  @2018.PI01
  @2018.PI01.02
  Scenario: US983405
    Given information that needs to get back to rally
    When the report is available on Jenkins
    Then Rally is updated with the results

  @CLM_UAT
  @2018.PI01
  @2018.PI01.04
  Scenario: US1055871
    Given the automation framework will be used in CI/CD. pipeline
    Then the QA team will write example tests to ensure the validity of the automation framework.

