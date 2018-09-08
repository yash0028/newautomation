# Last updated on 
@CMD2
@#MVP
@10/1_Physician
@CMD
@F205772
Feature: F205772 - Contract Meta Data (CMD) ProductGroup Rate Condition Category Sets

  @US1311226
  @2018.PI04
  Scenario: US1311226::0 - Identify Contract Product Rate Group - Medicare
    Given 'contractDetails.transactionType' property has value 'Create Contract'
    When 'contractDetails.storageNode.properties.UHG_Payment_Appendix' DOES have value "Payment Appendix [ProductGroupRate.name]"
    Then the Contract [ProductGroupRate.name] is recorded in the CMD contract record
    And the process repeats for all remaining values available in contractDetails.storageNode.properties.UHG_Payment_Appendix'

  @US1311226
  @2018.PI04
  Scenario: US1311226::1 - Identify Contract Product Rate Group - Medicare
    Given 'contractDetails.transactionType' property has value 'Create Contract'
    When 'contractDetails.storageNode.properties.UHG_Payment_Appendix' DOES NOT have value "Payment Appendix [ProductGroupRate.name]"
    Then a Contract [ProductGroupRate.name] is not recorded in the CMD contract record
    And the process repeats for all remaining values available in 'contractDetails.storageNode.properties.UHG_Payment_Appendix'

  @US1311226
  @2018.PI04
  Scenario: US1311226::2 - Identify Contract Product Rate Group - Medicare
    Given 'contractDetails.transactionType' property has value 'Create Contract'
    When 'contractDetails.storageNode.properties.UHG_Payment_Appendix' includes only "Payment Appendix Medicare"
    Then Contract [ProductGroupRate.name] value Medicare is recorded in the CMD contract record
    And the process is complete

  @US1311231
  @2018.PI04
  Scenario: US1311231 - Identify Rate Process rule during roster event process
    Given 'UHG_ProviderRoster_GeneratedRosterEvent' has value 'Add' or 'Cancel'
    When 'ProductGroup' has a Rate available from the CMD Contract database for the contract
    Then a Rate Process rule will be used for each ProductGroup applicable to the contract for the provider record
    #####

  @US1311228
  @2018.PI04
  Scenario: US1311228 - Identify ProductGroup Rate Conditions - Physician and Professional Rates
    Given Contract [ProductGroupRate.name] is available in the CMD contract record
    When 'contractDetails.storageNode.properties.UHG_[ProductGroupRate.name]_Fee_Schedule_ID' does have value
    And value IS present in 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Fee_Schedule_ID_NPPA',
    And value IS NOT present for any 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Specialty_Sched_ID', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID', 'UHG_ [same ProductGroupRate.name]_Specialty_Sched_ID_NPPA', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID_NPPA'
    Then Physician and Professional Rate Conditions apply to the ProductGroup
    And the value for 'UHG_[ProductGroupRate.name]_Fee_Schedule_ID' is recorded in the CMD contract record as the ProductGroup Physician Rate
    And 'UHG_[ProductGroupRate.name]_Fee_Schedule_ID_NPPA' is recorded in the CMD contract record as the ProductGroup Professional Rate
    And the capture process is complete for the ProductGroup
    #####

  @US1311225
  @2018.PI04
  Scenario: US1311225::0 - Identify Contract Product Rate Group  - Commercial
    Given 'contractDetails.transactionType' property has value 'Create Contract' When 'contractDetails.storageNode.properties.UHG_Payment_Appendix' DOES have value "Payment Appendix [ProductGroupRate.name]"
    Then the Contract [ProductGroupRate.name] is recorded in the CMD contract record
    And the process repeats for all remaining values available in contractDetails.storageNode.properties.UHG_Payment_Appendix'

  @US1311225
  @2018.PI04
  Scenario: US1311225::1 - Identify Contract Product Rate Group  - Commercial
    Given 'contractDetails.transactionType' property has value 'Create Contract' When 'contractDetails.storageNode.properties.UHG_Payment_Appendix' DOES NOT have value "Payment Appendix [ProductGroupRate.name]"
    Then a Contract [ProductGroupRate.name] is not recorded in the CMD contract record
    And the process repeats for all remaining values available in 'contractDetails.storageNode.properties.UHG_Payment_Appendix'

  @US1311225
  @2018.PI04
  Scenario: US1311225::2 - Identify Contract Product Rate Group  - Commercial
    Given 'contractDetails.transactionType' property has value 'Create Contract'
    When 'contractDetails.storageNode.properties.UHG_Payment_Appendix' includes only "Payment Appendix All Payer"
    Then Contract [ProductGroupRate.name] value All Payer is recorded in the CMD contract record
    And the process is complete

  @US1311229
  @2018.PI04
  Scenario: US1311229::0 - Identify ProductGroup Rate Conditions - Physician Specialty and Physician Other Specialty Rate
    Given Contract [ProductGroupRate.name] is available in the CMD contract record
    When value is present in 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Specialty_Sched_ID', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID'
    Then Physician Specialty Rate Conditions apply to the ProductGroup
    And the value for 'UHG_[ProductGroupRate.name]_Specialty_Sched_ID' is recorded in the CMD contract record as the ProductGroup Physician Specialty Rate
    And the value for 'UHG_[ProductGroupRate.name]_All_Spec_Sched_ID' is recorded in the CMD contract record as the ProductGroup Physician Other Specialty Rate
    And the capture process is not complete for Physician Specialty Rate conditions

  @US1311229
  @2018.PI04
  Scenario: US1311229::1 - Identify ProductGroup Rate Conditions - Physician Specialty and Physician Other Specialty Rate
    Given Physician Specialty Rate Conditions apply to the ProductGroup
    When Product Group Physician Specialty Rate has been recorded
    Then the values for 'UHG_[ProductGroupRate.name]_Specialty' are recorded in the CMD contract record as the Product Group Physician Specialty Rate qualifiers
    And the capture process is complete for Physician Specialty Rate conditions

  @US1311234
  @2018.PI04
  Scenario: US1311234::0 - Apply Professional Rate process rule  during roster event process
    Given 'UHG_ProviderRoster_GeneratedRosterEvent' has value 'Add' or 'Cancel'
    When 'ProductGroup Professional Rate' is available from the CMD Contract database for the contract
    Then the 'Professional' rate process rule will be used to determine conditions appropriate to apply specified condition rate for ProductGroup

  @US1311234
  @2018.PI04
  Scenario: US1311234::1 - Apply Professional Rate process rule  during roster event process
    Given 'Professional' rate process rule successfully processed
    When the outcome result successfully slotted to the table record
    Then the ProductGroup Professional Rate is applied to the provider record

  @US1311234
  @2018.PI04
  Scenario: US1311234::2 - Apply Professional Rate process rule  during roster event process
    Given 'Professional' rate process rule successfully processed
    When the outcome result did not successfully slot to the table record
    Then the ProductGroup Professional Rate is not applied to the provider record
    And the transaction is logged as complete in the transaction database
    And a transaction message generated of 'Professional Record did not meet qualification for Loading'
    And the transaction record details including table, table record, and warning message generated are made available should users need to review

  @US1311227
  @2018.PI04
  Scenario: US1311227::0 - Identify ProductGroup Rate Conditions - Provider Rate
    Given Contract [ProductGroupRate.name] is available in the CMD contract record
    When 'contractDetails.storageNode.properties.UHG_[ProductGroupRate.name]_Fee_Schedule_ID' does have value
    And value IS NOT present in any 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Fee_Schedule_ID_NPPA', 'UHG_[same ProductGroupRate.name]_Specialty_Sched_ID', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID', 'UHG_ [same ProductGroupRate.name]_Specialty_Sched_ID_NPPA', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID_NPPA'
    Then Provider Rate Conditions do not apply to the ProductGroup
    And the value for 'UHG_[ProductGroupRate.name]_Fee_Schedule_ID' is recorded in the CMD contract record as the ProductGroup Provider Rate
    And the capture process is complete for the ProductGroup

  @US1311235
  @2018.PI04
  Scenario: US1311235::0 - Apply Physician Specialty Rate process rule  during roster event process
    Given 'UHG_ProviderRoster_GeneratedRosterEvent' has value 'Add' or 'Cancel'
    When 'ProductGroup Physician Specialty Rate' is available from the CMD Contract database for the contract
    Then the 'Physician Specialty' rate process rule will be used to determine conditions appropriate to apply specified condition rate for ProductGroup

  @US1311235
  @2018.PI04
  Scenario: US1311235::1 - Apply Physician Specialty Rate process rule  during roster event process
    Given 'Physician Specialty' rate process rule successfully processed
    When the outcome result successfully slotted to the table record
    Then the ProductGroup Physician Specialty Rate is applied to the provider record

  @US1311235
  @2018.PI04
  Scenario: US1311235::2 - Apply Physician Specialty Rate process rule  during roster event process
    Given 'Physician Specialty' rate process rule successfully processed
    When the outcome result did not successfully slot to the table record
    Then the Physician Specialty rate process rule continues to the next record in the table

  @US1311235
  @2018.PI04
  Scenario: US1311235::3 - Apply Physician Specialty Rate process rule  during roster event process
    Given 'Physician Specialty' rate process rule continues to the next record in the table
    When the outcome result successfully slotted to the table record
    Then the ProductGroup Physician Other Specialty Rate is applied to the provider record.

  @US1311235
  @2018.PI04
  Scenario: US1311235::4 - Apply Physician Specialty Rate process rule  during roster event process
    Given 'Physician Specialty' rate process rule successfully processed
    When the outcome result did not successfully slot to either record on the table
    Then ProductGroup Physician Specialty Rate or ProductGroup Physician Other Specialty Rate are not applied to the provider record
    And the transaction is logged as complete in the transaction database
    And a transaction message generated of 'Physician Record did not meet qualification for Loading'
    And the transaction record details including table, table record, and warning message generated are made available should users need to review

  @US1311230
  @2018.PI04
  Scenario: US1311230::0 - Identify ProductGroup Rate Conditions - Professional Specialty and Professional Other Specialty Rate
    Given Contract [ProductGroupRate.name] is available in the CMD contract record
    When value is present in 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Specialty_Sched_ID_NPPA', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID_NPPA'
    Then Professional Specialty Rate Conditions apply to the ProductGroup
    And the value for 'UHG_[ProductGroupRate.name]_Specialty_Sched_ID_NPPA' is recorded in the CMD contract record as the ProductGroup Professional Specialty Rate
    And the value for 'UHG_[ProductGroupRate.name]_All_Spec_Sched_ID_NPPA' is recorded in the CMD contract record as the ProductGroup Professional Other Specialty Rate
    And the capture process is not complete for Professional Specialty Rate conditions

  @US1311230
  @2018.PI04
  Scenario: US1311230::1 - Identify ProductGroup Rate Conditions - Professional Specialty and Professional Other Specialty Rate
    Given Professional Specialty Rate Conditions apply to the ProductGroup
    When ProductGroup Professional Specialty Rate has been recorded
    Then the values for 'UHG_[ProductGroupRate.name]_Specialty_NPPA' are recorded in the CMD contract record as the ProductGroup Professional Specialty Rate qualifiers
    And the capture process is complete for Professional Specialty Rate conditions

  @US1311233
  @2018.PI04
  Scenario: US1311233::0 - Apply Physician Rate process rule  during roster event process
    Given 'UHG_ProviderRoster_GeneratedRosterEvent' has value 'Add' or 'Cancel'
    When 'ProductGroup Physician Rate' is available from the CMD Contract database for the contract
    Then the 'Physician' rate process rule will be used for all provider records to determine qualifications for applying rate

  @US1311233
  @2018.PI04
  Scenario: US1311233::1 - Apply Physician Rate process rule  during roster event process
    Given 'Physician' rate process rule successfully processed
    When the outcome result successfully slotted to the table record
    Then the ProductGroup Physician Rate is applied to the provider record

  @US1311233
  @2018.PI04
  Scenario: US1311233::2 - Apply Physician Rate process rule  during roster event process
    Given 'Physician' rate process rule successfully processed
    When the outcome result did not successfully slot to the table record
    Then the ProductGroup Physician Rate is not applied to the provider record
    And the transaction is logged as complete in the transaction database
    And a transaction message generated of 'Physician Record did not meet qualification for Loading'
    And the transaction record details including table, table record, and warning message generated are made available should users need to review

  @US1311232
  @2018.PI04
  Scenario: US1311232::0 - Apply Provider Rate process rule during roster event process
    Given 'UHG_ProviderRoster_GeneratedRosterEvent' has value 'Add' or 'Cancel'
    When 'ProductGroup Provider Rate' is available from the CMD Contract database for the contract
    Then the 'Provider' rate process rule will be used for all provider records to determine qualifications for applying rate

  @US1311232
  @2018.PI04
  Scenario: US1311232::1 - Apply Provider Rate process rule during roster event process
    Given 'Provider' rate process rule successfully processed
    When the outcome result successfully slotted to the table record
    Then the ProductGroup Provider Rate is applied to the provider record

  @US1311232
  @2018.PI04
  Scenario: US1311232::2 - Apply Provider Rate process rule during roster event process
    Given 'Provider' rate process rule successfully processed
    When the outcome result did not successfully slot to the table record
    Then the ProductGroup Provider Rate is not applied to the provider record
    And the transaction is logged as complete in the transaction database
    And a transaction message generated of 'Provider Record did not meet qualification for Loading'
    And the transaction record details including table, table record, and warning message generated are made available should users need to review

  @US1311236
  @2018.PI04
  Scenario: US1311236::0 - Apply Professional Specialty Rate process rule  during roster event process
    Given 'UHG_ProviderRoster_GeneratedRosterEvent' has value 'Add' or 'Cancel'
    When 'ProductGroup Professional Specialty Rate' is available from the CMD Contract database for the contract
    Then the 'Professional Specialty' rate process rule will be used to determine conditions appropriate to apply specified condition rate for ProductGroup

  @US1311236
  @2018.PI04
  Scenario: US1311236::1 - Apply Professional Specialty Rate process rule  during roster event process
    Given 'Professional Specialty' rate process rule successfully processed
    When the outcome result successfully slotted to the table record
    Then the ProductGroup Professional Specialty Rate is applied to the provider record

  @US1311236
  @2018.PI04
  Scenario: US1311236::2 - Apply Professional Specialty Rate process rule  during roster event process
    Given 'Professional Specialty' rate process rule successfully processed
    When the outcome result did not successfully slot to the table record
    Then the Professional Specialty rate process rule continues to the next record in the table

  @US1311236
  @2018.PI04
  Scenario: US1311236::3 - Apply Professional Specialty Rate process rule  during roster event process
    Given 'Professional Specialty' rate process rule continues to the next record in the table
    When the outcome result successfully slotted to the table record
    Then the ProductGroup Professional Other Specialty Rate is applied to the provider record.

  @US1311236
  @2018.PI04
  Scenario: US1311236::4 - Apply Professional Specialty Rate process rule  during roster event process
    Given 'Professional Specialty' rate process rule successfully processed
    When the outcome result did not successfully slot to either record on the table
    Then ProductGroup Professional Specialty Rate or ProductGroup Professional Other Specialty Rate are not applied to the provider record
    And the transaction is logged as complete in the transaction database
    And a transaction message generated of 'Professional Record did not meet qualification for Loading'
    And the transaction record details including table, table record, and warning message generated are made available should users need to review

