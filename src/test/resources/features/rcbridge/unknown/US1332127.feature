# Last updated on 
@MOCK_COSMOS
@MOCK_NDB
@US1332127
@F232975
@releaseUnknown
@iterationUnknown
Feature: US1332127 - Create NDB/Cosmos Mock Service

  @TC586011
  @Manual
  @Functional
  @MOCK_COSMOS
  @MOCK_NDB
  @US1332127
  Scenario: TC586011 - [RL1]
    When querying the mock Cosmos service with parameters of:
      | ps624_i_cosmos_cont_nbr | 6214                    |
      | cosmos_userid | 91199         |
      | cosmos_trancode | PS624           |
    Then the mock service returns a "200" status code
    And searching for the Cosmos "ps624_i_cosmos_cont_nbr" with value "012345682" returns JSON containing:
      | ps624_i_cosmos_cont_nbr | 6214                    |
      | cosmos_userid | 91199         |
      | cosmos_trancode | PS624           |

  @TC586010
  @Manual
  @Functional
  @MOCK_COSMOS
  @MOCK_NDB
  @US1332127
  Scenario: TC586010 - [RL0]
    When querying the mock NDB service with parameters of:
      | taxIdNumber | 976543236   |
      | mpinNumber | 6484928    |
      | contractNumber | 012345682      |
    Then the mock service returns a "200" status code
    And searching for the NDB "contractNumber" with value "012345682" returns JSON containing:
      | taxIdNumber | 976543236   |
      | mpinNumber | 6484928    |
      | contractNumber | 012345682      |

