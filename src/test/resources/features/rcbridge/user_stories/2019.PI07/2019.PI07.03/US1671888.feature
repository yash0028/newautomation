# Last updated on 
@US1671888
@2019.PI07
@2019.PI07.03
@releasePresent
@iterationPresent
Feature: US1671888 - Add attachments to retro request

  @TC781399
  @Manual
  @Functional
  Scenario: TC781399 - [RL0]
    Given a retro request is being started
    When the details are being added
    Then there is a section Header "Supporting Documentation"
    And there is a field, "Supporting detail, if needed" to upload attachments
    And there is a second field, "Supporting detail, if needed" to upload attachments
    And the attachments can be viewed on all subsequent tasks (Market Lead, NPPP, LOB COO, Network COO and Operations COO)
    And on any initiator form, the files can be replaced with new documents

