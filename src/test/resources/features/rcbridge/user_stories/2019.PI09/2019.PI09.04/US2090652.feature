# Last updated on 
@US2090652
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationFuture
Feature: US2090652 - Create microservice to display the Type 2 Message Catalog

  @TC1013515
  @Manual
  @Functional
  Scenario: TC1013515 - [RL0]
    Given the Type 2 Error Resolution User Guide table exists in the database
    When record details from the table are needed
    Then a service is available to provide table record details
    ###

