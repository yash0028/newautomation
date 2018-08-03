# Last updated on 2018-08-02T20:56:05.445Z

Feature: F194839 - CLM DevOps PI02

  @2018.PI02
  Scenario: US1159428::0
    Given that the job is running
    When there is an old replication controller
    Then the job will delete it within a 1 hour window

  @2018.PI02
  Scenario: US1159428::1
    Given that the job is running
    When there is an old failed pod
    Then the job will delete it within a 1 hour window

  @2018.PI02
  Scenario: US1172701
    Given a user wants to test a CLM service,
    When the user hits the stage layer 7 proxy,
    Then they will get a consistent response.

