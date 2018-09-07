# Last updated on 
@Transaction_Mgmt
@US980176
@2018.PI01
Feature: US980176 - (TxMgr) Create Transaction Management Service

  @TC564426
  @Manual
  @Functional
  Scenario: TC564426 - [RL0]
    Given a user wants the ability to track a transaction
    When new information about the transaction I posted to Kafka brokers
    Then the service will consume the new information and log it to a unique place (for this sprint a text file on the container).

