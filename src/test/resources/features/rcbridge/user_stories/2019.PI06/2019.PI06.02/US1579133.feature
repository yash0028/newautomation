# Last updated on 
@ndb-facility-feed-api
@US1579133
@2019.PI06
@2019.PI06.02
@releaseUnknown
@iterationUnknown
Feature: US1579133 - [Continued] Create an API on the CLM side to receive the facility contract load 2nd acknowledgement from NDB

  @TC727178
  @Automated
  @Functional
  @ndb-facility-feed-api
  Scenario: TC727178 - [RL0]
    Given NDB is ready to send the 2nd Acknowledgment of the facility contract
    When NDB calls the CLM API
    Then CLM receives the data, validates the data and sends back the return status message.

  @TC732430
  @Automated
  @Functional
  @ndb-facility-feed-api
  Scenario: TC732430 - [RL1]
    Given NDB calls the CLM API with data
    When input data of the following fields is sent to CLM:
      | transactionId  | 838f6f26-10bd-4cd3-9a71-32c202e27673 |
      | contractId     | 000573623                            |
      | contractLineId | 0773228b-34aa-4c90-86c3-bff5ff79d5d7 |
      | mpin           | 76416                                |
      | tin            | 860815366                            |
      | exrDocId       | 00000000000000000000000000084889     |
      | prodOfrId      | A1                                   |
    And the fields match with a single record in the CLM table "NDB Fac Feed Test Table"
    Then CLM returns "Success" message and return code "G" as response to NDB request

  @TC732612
  @Manual
  @Functional
  @ndb-facility-feed-api
  Scenario: TC732612 - [RL2]
    Given NDB calls the CLM API with data
    When input data of the following fields is sent to CLM:
      | transactionId  | 838f6f26-10bd-4cd3-9a71-32c202e27673 |
      | contractId     | 000573623                            |
      | contractLineId | 0773228b-34aa-4c90-86c3-bff5ff79d5d7 |
      | mpin           | 76416                                |
      | tin            | 860815366                            |
      | exrDocId       | 00000000000000000000000000084889     |
      | prodOfrId      | A1                                   |
    And the fields match with a single record in the CLM table "NDB Fac Feed Test Table"
    Then CLM saves the data of the following fields in the CLM table "NDB Fac Feed Test Table":
    # below, do we need to verify the contents of the fields or just the existence of the fields?
      | ioRatesTable  |
      | marketNumber  |
      | pcpInd        |
      | prodRdyInd    |
      | ppiTblNmbr    |
      | statusMessage |

  @TC732613
  @Automated
  @Functional
  @ndb-facility-feed-api
  Scenario: TC732613 - [RL3]
    Given NDB calls the CLM API with data
    When input data of the following fields is sent to CLM:
      | transactionId  | 838f6f26-10bd-4cd3-9a71-32c202e2773 |
      | contractId     | 00057362                            |
      | contractLineId | 0773228b-34aa-4c90-86c3-bff5ff79d5d |
      | mpin           | 7641                                |
      | tin            | 86081536                            |
      | exrDocId       | 0000000000000000000000000008488     |
      | prodOfrId      | A                                   |
    And the fields DO NOT match with a single record in the CLM table "NDB Fac Feed Test Table"
    Then CLM returns "Record not found in CLM" message and return code "F" as response to NDB request

  @TC732614
  @Automated
  @Functional
  @ndb-facility-feed-api
  Scenario: TC732614 - [RL4]
    Given NDB calls the CLM API with data
    # When input data of the field "Transaction ID" not found in the CLM table "NDB Fac Feed Test Table"
    When input data of the following fields is sent to CLM:
      | transactionId  | EMPTY_STRING                         |
      | contractId     | 000573623                            |
      | contractLineId | 0773228b-34aa-4c90-86c3-bff5ff79d5d7 |
      | mpin           | 76416                                |
      | tin            | 860815366                            |
      | exrDocId       | 00000000000000000000000000084889     |
      | prodOfrId      | A1                                   |
    Then CLM returns "No Data Found - Invalid Transaction ID" message and return code "F" as response to NDB request

  @TC732615
  @Automated
  @Functional
  @ndb-facility-feed-api
  Scenario: TC732615 - [RL5]
    Given NDB calls the CLM API with data
    # When input data of the field "Contract Line ID" not found in the CLM table "NDB Fac Feed Test Table"
    When input data of the following fields is sent to CLM:
      | transactionId  | 838f6f26-10bd-4cd3-9a71-32c202e27673 |
      | contractId     | 000573623                            |
      | contractLineId | EMPTY_STRING                         |
      | mpin           | 76416                                |
      | tin            | 860815366                            |
      | exrDocId       | 00000000000000000000000000084889     |
      | prodOfrId      | A1                                   |
    Then CLM returns "No Data Found - Invalid Contract Line ID" message and return code "F" as response to NDB request

  @TC732616
  @Automated
  @Functional
  @ndb-facility-feed-api
  Scenario: TC732616 - [RL6]
    Given NDB calls the CLM API with data
    # When input data of the field "MPIN" not found in the CLM table "NDB Fac Feed Test Table"
    When input data of the following fields is sent to CLM:
      | transactionId  | 838f6f26-10bd-4cd3-9a71-32c202e27673 |
      | contractId     | 000573623                            |
      | contractLineId | 0773228b-34aa-4c90-86c3-bff5ff79d5d7 |
      | mpin           | EMPTY_STRING                         |
      | tin            | 860815366                            |
      | exrDocId       | 00000000000000000000000000084889     |
      | prodOfrId      | A1                                   |
    Then CLM returns "No Data Found - Invalid MPIN" message and return code "F" as response to NDB request

  @TC732617
  @Automated
  @Functional
  @ndb-facility-feed-api
  Scenario: TC732617 - [RL7]
    Given NDB calls the CLM API with data
    # When input data of the field "Tax ID NBR" not found in the CLM table "NDB Fac Feed Test Table"
    When input data of the following fields is sent to CLM:
      | transactionId  | 838f6f26-10bd-4cd3-9a71-32c202e27673 |
      | contractId     | 000573623                            |
      | contractLineId | 0773228b-34aa-4c90-86c3-bff5ff79d5d7 |
      | mpin           | 76416                                |
      | tin            | EMPTY_STRING                         |
      | exrDocId       | 00000000000000000000000000084889     |
      | prodOfrId      | A1                                   |
    Then CLM returns "No Data Found - Invalid Tax ID Number" message and return code "F" as response to NDB request

  @TC732618
  @Automated
  @Functional
  @ndb-facility-feed-api
  Scenario: TC732618 - [RL8]
    Given NDB calls the CLM API with data
    # When input data of the field "EXR DOC ID" not found in the CLM table "NDB Fac Feed Test Table"
    When input data of the following fields is sent to CLM:
      | transactionId  | 838f6f26-10bd-4cd3-9a71-32c202e27673 |
      | contractId     | 000573623                            |
      | contractLineId | 0773228b-34aa-4c90-86c3-bff5ff79d5d7 |
      | mpin           | 76416                                |
      | tin            | 860815366                            |
      | exrDocId       | EMPTY_STRING                         |
      | prodOfrId      | A1                                   |
    Then CLM returns "No Data Found - Invalid Exari Doc ID" message and return code "F" as response to NDB request

  @TC732619
  @Automated
  @Functional
  @ndb-facility-feed-api
  Scenario: TC732619 - [RL9]
    Given NDB calls the CLM API with data
    # When input data of the field "PROD OFR ID" not found in the CLM table "NDB Fac Feed Test Table"
    When input data of the following fields is sent to CLM:
      | transactionId  | 838f6f26-10bd-4cd3-9a71-32c202e2773 |
      | contractId     | 000573623                           |
      | contractLineId | 0773228b-34aa-4c90-86c3-bff5ff79d5d |
      | mpin           | 7641                                |
      | tin            | 860815366                           |
      | exrDocId       | 00000000000000000000000000084889    |
      | prodOfrId      | EMPTY_STRING                        |
    Then CLM returns "No Data Found - Invalid Contract Line ID" message and return code "F" as response to NDB request

