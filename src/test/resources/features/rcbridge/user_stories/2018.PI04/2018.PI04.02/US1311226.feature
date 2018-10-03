# Last updated on 
@US1311226
@2018.PI04
@2018.PI04.02
Feature: US1311226 - Identify Contract Product Rate Group - Medicare

  @TC572194
  @Automated
  @Functional
  Scenario: TC572194 - [RL2]
    Given 'contractDetails.transactionType' property has value 'Create Contract'
    When 'contractDetails.storageNode.properties.UHG_Payment_Appendix' includes only "Payment Appendix Medicare"
    Then Contract [ProductGroupRate.name] value Medicare is recorded in the CMD contract record
    And the process is complete

  @TC572193
  @Automated
  @Functional
  Scenario: TC572193 - [RL1]
    Given 'contractDetails.transactionType' property has value 'Create Contract'
    When 'contractDetails.storageNode.properties.UHG_Payment_Appendix' DOES NOT have value "Payment Appendix [ProductGroupRate.name]"
    Then a Contract [ProductGroupRate.name] is not recorded in the CMD contract record
    And the process repeats for all remaining values available in 'contractDetails.storageNode.properties.UHG_Payment_Appendix'

  @TC572192
  @Automated
  @Functional
  Scenario: TC572192 - [RL0]
    Given 'contractDetails.transactionType' property has value 'Create Contract'
    When 'contractDetails.storageNode.properties.UHG_Payment_Appendix' DOES have value "Payment Appendix [ProductGroupRate.name]"
    Then the Contract [ProductGroupRate.name] is recorded in the CMD contract record
    And the process repeats for all remaining values available in contractDetails.storageNode.properties.UHG_Payment_Appendix'

