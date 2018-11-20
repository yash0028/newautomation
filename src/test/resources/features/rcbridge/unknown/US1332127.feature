# Last updated on 
@MOCK_COSMOS
@MOCK_NDB
@US1332127
@releaseUnknown
@iterationUnknown
Feature: US1332127 - Create NDB/Cosmos Mock Service

  @TC586010
  @Automated
  @Functional
  @MOCK_COSMOS
  @MOCK_NDB
  Scenario: TC586010 - [RL0] Verify NDB request/response
    When querying the mock NDB service with a request from file "ndb_request.json"
    Then the mock service returns a "200" status code
    And the mock service returns a response identical to file "ndb_response.json"

  @TC586011
  @Automated
  @Functional
  @MOCK_COSMOS
  @MOCK_NDB
  Scenario: TC586011 - [RL1] Verify COSMOS request/response
    When querying the mock Cosmos service with a request from file "cosmos_request.xml"
    Then the mock service returns a "200" status code
    And the mock service returns a response identical to file "cosmos_response.xml"

