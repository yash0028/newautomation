# Last updated on 
@US1579133
@2019.PI06
@2019.PI06.02
@releasePresent
@iterationPresent
Feature: US1579133 - [Continued] Create an API on the CLM side to receive the facility contract load 2nd acknowledgement from NDB

  @TC727178
  @Manual
  @Functional
  Scenario: TC727178 - [RL0]
    Given NDB is ready to send the 2nd Acknowledgment of the facility contract
    When NDB calls the CLM API
    Then CLM receives the data, validates the data and sends back the return status message.

  @TC732430
  @Manual
  @Functional
  Scenario: TC732430 - [RL1]
    Given NDB calls the CLM API with data
    When input data of the following fields is sent to CLM:
      | Transaction ID            | placeholderTransactionID  |
      | Contract Line ID          | placeholderContractLineID |
      | MPIN                      | placeholderMPIN           |
      | Tax ID NBR                | placeholderTaxIdNbr       |
      | EXR DOC ID                | placeholderExrDocId       |
      | PROD OFR ID               | placeholderProdOfrId      |
    And the fields match with a single record in the CLM table "NDB Fac Feed Test Table"
    Then CLM returns "Success" message and return code "G" as response to NDB request

  @TC732612
  @Manual
  @Functional
  Scenario: TC732612 - [RL2]
    Given NDB calls the CLM API with data
    When input data of the following fields is sent to CLM:
      | Transaction ID            | placeholderTransactionID  |
      | Contract Line ID          | placeholderContractLineID |
      | MPIN                      | placeholderMPIN           |
      | Tax ID NBR                | placeholderTaxIdNbr       |
      | EXR DOC ID                | placeholderExrDocId       |
      | PROD OFR ID               | placeholderProdOfrId      |
    And the fields match with a single record in the CLM table "NDB Fac Feed Test Table"
    Then CLM saves the data of the following fields in the CLM table "NDB Fac Feed Test Table":
    # below, do we need to verify the contents of the fields or just the existence of the fields?
      | I-O RATES TBL |
      | MKT #         |
      | PCP IND       |
      | PROD RDY IND  |
      | PPI TBL NBR   |
      | STATUS MSG    |

  @TC732613
  @Manual
  @Functional
  Scenario: TC732613 - [RL3]
    Given NDB calls the CLM API with data
    When input data of the following fields is sent to CLM:
      | Transaction ID            | placeholderTransactionID  |
      | Contract Line ID          | placeholderContractLineID |
      | MPIN                      | placeholderMPIN           |
      | Tax ID NBR                | placeholderTaxIdNbr       |
      | EXR DOC ID                | placeholderExrDocId       |
      | PROD OFR ID               | placeholderProdOfrId      |
    And the fields DO NOT match with a single record in the CLM table "NDB Fac Feed Test Table"
    Then CLM returns "Record not found in CLM" message and return code "F" as response to NDB request

  @TC732614
  @Manual
  @Functional
  Scenario: TC732614 - [RL4]
    Given NDB calls the CLM API with data
    When input data of the field "Transaction ID" not found in the CLM table "NDB Fac Feed Test Table"
    Then CLM returns "No Data Found - Invalid Transaction ID" message and return code "F" as response to NDB request

  @TC732615
  @Manual
  @Functional
  Scenario: TC732615 - [RL5]
    Given NDB calls the CLM API with data
    When input data of the field "Contract Line ID" not found in the CLM table "NDB Fac Feed Test Table"
    Then CLM returns "No Data Found - Invalid Contract Line ID" message and return code "F" as response to NDB request

  @TC732616
  @Manual
  @Functional
  Scenario: TC732616 - [RL6]
    Given NDB calls the CLM API with data
    When input data of the field "MPIN" not found in the CLM table "NDB Fac Feed Test Table"
    Then CLM returns "No Data Found - Invalid MPIN" message and return code "F" as response to NDB request

  @TC732617
  @Manual
  @Functional
  Scenario: TC732617 - [RL7]
    Given NDB calls the CLM API with data
    When input data of the field "Tax ID NBR" not found in the CLM table "NDB Fac Feed Test Table"
    Then CLM returns "No Data Found - Invalid Tax ID NBR" message and return code "F" as response to NDB request

  @TC732618
  @Manual
  @Functional
  Scenario: TC732618 - [RL8]
    Given NDB calls the CLM API with data
    When input data of the field "EXR DOC ID" not found in the CLM table "NDB Fac Feed Test Table"
    Then CLM returns "No Data Found - Invalid EXR DOC ID" message and return code "F" as response to NDB request

  @TC732619
  @Manual
  @Functional
  Scenario: TC732619 - [RL9]
    Given NDB calls the CLM API with data
    When input data of the field "PROD OFR ID" not found in the CLM table "NDB Fac Feed Test Table"
    Then CLM returns "No Data Found - Invalid PROD OFR ID" message and return code "F" as response to NDB request

