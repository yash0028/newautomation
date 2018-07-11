# Last updated on 2018-07-10T16:12:03.290Z
@MVP
@PI03
Feature: F205542 - Exari Contract Event processing using Alfresco

  @2018.PI03
  @2018.PI03.02
  Scenario: US1208692
    Given there exists custom alfresco scripts to capture the system/user events within Exari system.
    When the event is initiated within Exari system
    Then the custom script must be able to capture the event and identify the event type.
    And call the Exari contract API to retrieve the contract details.
    And create the custom payload that contains information regarding event type and contract details
    And then push the event to Optum Contract API in order to process the event within Optum System
    And then receive the transaction id after successful event processing
    And then update the contract along with transaction id so that it can be used to retrieve the contract status later using transaction id.

  @2018.PI03
  @2018.PI03.03
  Scenario: US1208696
    Given there exists custom alfresco scripts to capture the system/user events within Exari system.
    When the event is initiated within Exari system
    Then the custom script must be able to capture the event and identify the event type.
    And call the Exari contract API to retrieve the contract details.
    And create the custom payload that contains information regarding event type and contract details
    And then push the event to Optum Contract API in order to process the event within Optum System
    And then receive the transaction id after successful event processing
    And then update the contract along with transaction id so that it can be used to retrieve the contract status later using transaction id.

  @2018.PI03
  @2018.PI03.03
  Scenario: US1208699
    Given there exists custom alfresco scripts to capture the system/user events within Exari system.
    When the event is initiated within Exari system
    Then the custom script must be able to capture the event and identify the event type.
    And call the Exari contract API to retrieve the contract details.
    And create the custom payload that contains information regarding event type and contract details
    And then push the event to Optum Contract API in order to process the event within Optum System
    And then receive the transaction id after successful event processing
    And then update the contract along with transaction id so that it can be used to retrieve the contract status later using transaction id.

  @2018.PI03
  @2018.PI03.04
  Scenario: US1208686
    Given there exists custom alfresco scripts to capture the system/user events within Exari system.
    When the event is initiated within Exari system
    Then the custom script must be able to capture the event and identify the event type.
    And call the Exari contract API to retrieve the contract details.
    And create the custom payload that contains information regarding event type and contract details
    And then push the event to Optum Contract API in order to process the event within Optum System
    And then receive the transaction id after successful event processing
    And then update the contract along with transaction id so that it can be used to retrieve the contract status later using transaction id.

  @2018.PI03
  @2018.PI03.02
  Scenario: US1208680
    Given there exists custom alfresco scripts to capture the system/user events within Exari system.
    When the event is initiated within Exari system
    Then the custom script must be able to capture the event and identify the event type.
    And call the Exari contract API to retrieve the contract details.
    And create the custom payload that contains information regarding event type and contract details
    And then push the event to Optum Contract API in order to process the event within Optum System
    And then receive the transaction id after successful event processing
    And then update the contract along with transaction id so that it can be used to retrieve the contract status later using transaction id.

  @2018.PI03
  @2018.PI03.03
  Scenario: US1208693
    Given there exists custom alfresco scripts to capture the system/user events within Exari system.
    When the event is initiated within Exari system
    Then the custom script must be able to capture the event and identify the event type.
    And call the Exari contract API to retrieve the contract details.
    And create the custom payload that contains information regarding event type and contract details
    And then push the event to Optum Contract API in order to process the event within Optum System
    And then receive the transaction id after successful event processing
    And then update the contract along with transaction id so that it can be used to retrieve the contract status later using transaction id.

  @2018.PI03
  @2018.PI03.04
  Scenario: US1208690
    Given there exists custom alfresco scripts to capture the system/user events within Exari system.
    When the event is initiated within Exari system
    Then the custom script must be able to capture the event and identify the event type.
    And call the Exari contract API to retrieve the contract details.
    And create the custom payload that contains information regarding event type and contract details
    And then push the event to Optum Contract API in order to process the event within Optum System
    And then receive the transaction id after successful event processing
    And then update the contract along with transaction id so that it can be used to retrieve the contract status later using transaction id.

