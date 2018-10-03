# Last updated on 
@US1311225
@2018.PI04
@2018.PI04.02
Feature: US1311225 - Identify Contract Product Rate Group  - Commercial

  @TC572213
  @Automated
  @Functional
  Scenario: TC572213 - [RL2]
    Given 'contractDetails.transactionType' property has value 'Create Contract'
    When 'contractDetails.storageNode.properties.UHG_Payment_Appendix' includes only "Payment Appendix All Payer"
    Then Contract [ProductGroupRate.name] value All Payer is recorded in the CMD contract record
    And the process is complete

  @TC572211
  @Automated
  @Functional
  Scenario: TC572211 - [RL0]
    Given 'contractDetails.transactionType' property has value 'Create Contract' When 'contractDetails.storageNode.properties.UHG_Payment_Appendix' DOES have value "Payment Appendix [ProductGroupRate.name]"
    Then the Contract [ProductGroupRate.name] is recorded in the CMD contract record
    And the process repeats for all remaining values available in contractDetails.storageNode.properties.UHG_Payment_Appendix'

  @TC572212
  @Automated
  @Functional
  Scenario: TC572212 - [RL1]
    Given 'contractDetails.transactionType' property has value 'Create Contract' When 'contractDetails.storageNode.properties.UHG_Payment_Appendix' DOES NOT have value "Payment Appendix [ProductGroupRate.name]"
    Then a Contract [ProductGroupRate.name] is not recorded in the CMD contract record
    And the process repeats for all remaining values available in 'contractDetails.storageNode.properties.UHG_Payment_Appendix'

