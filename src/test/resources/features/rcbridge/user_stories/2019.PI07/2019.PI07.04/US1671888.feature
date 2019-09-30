# Last updated on 
@Sheham
@US1671888
@2019.PI07
@2019.PI07.04
@releasePast
@iterationPast
Feature: US1671888 - Add attachments to retro request

  @TC781399
  @Manual
  @Functional
  @Sheham
  Scenario: TC781399 - [RL0]
    Given a retro request is being started
    When the details are being added
    Then there is a section Header "Supporting Documentation"
    And there is a field, "Supporting detail, if needed" to upload attachments
    And multiple attachments can be uploaded
    And the attachments can be viewed on all subsequent tasks (Market Lead, NPPP, LOB COO, Network COO and Operations COO)
    And on any initiator form, the files can be replaced with new documents

