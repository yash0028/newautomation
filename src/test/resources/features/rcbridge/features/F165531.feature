# Last updated on 
@MVP
@PI04
@Plus
@F165531
Feature: F165531 - Setup Rate Escalator Workflow

  @US1040747
  @Configuration_for_12/1/18
  Scenario: US1040747::0 - View Contract Summary to view Escalator Details
    Given a contract with an escalator
    When I view the Contract Summary
    Then I see Rate Escalator Summary

  @US1040747
  @Configuration_for_12/1/18
  Scenario: US1040747::1 - View Contract Summary to view Escalator Details
    Given a Rate Escalator Summary
    When I look at the details
    Then I see the Section with the Rate Escalator details (Usually Section 3.10 or 3.11)
    And I see The type of Escalator (CPI, Deescalator, Fixed Rate, Multi-Year Rates, Variable)
    And I see the Inpatient Escalator Percent
    And I see the Outpatient Escalator Percent
    And I see Cumulative or non-cumulative
    ------------------
    CMEs review for Rate Escalators that can be applicable to both UHN and legacy agreements and analyzes the contract language to determine the following:
    qHave there been any amendments between the original agreement and the Rate Escalator that would alter which products, platforms, or providers?
    qAre there split rates – or product rate differentials?
    qAre there any fee schedules that also need to have rates escalated?
    qDo the outlier thresholds need to be increased?
    qAre rates rounded to the nearest dollar?
    qDoes this Rate Escalator apply to all or just some of the providers?
    qDoes this Rate Escalator apply to all or just some of the products/platforms?
    <ol>
    <li>The effective date for this Rate Escalator is?
    <li>Is this provider supported by an HFA(Hospital Facility Advocate)?
    <li>Rate Escalator language is found in which part of the contract? (Section 3, Out Year APAs or other?)
    <li>Is this a multi-year agreement with Out Year APA's already created?
    <li>Will the provider have to sign an agreement to make this Rate Escalator effective?
    <li>Is the provider located in an eligible Compass market/county? To be eligible for Compass, both the market and County should be marked as eligible on the Market Matrix.
    <li>Does Compass need to be loaded to the providers on this submission? (Please note if Network requests Compass to be loaded to a provider in an ineligible service area it will be considered an exception. Network must provide rationale in an email to support loading). In addition, either an Amendment or language below the line in Appendix 2 is needed if Compass needs to be termed for a provider in the Compass service area. Amendments are not needed to remove Compass if provider is outside of Compass service area and Compass is going to be termed.
    <li>Is your impacted APA a Per Diem APA which included Table 1B or 1C? If so, you must ensure that your rate escalator event includes any newly added MSDRGs along with their applicable rates. (Please verify added/deleted MSDRGs utilizing the respective SACs: Rate Escalator Review and Creation - Non-Emptoris Contract and Rate Escalator Review and Creation - Emptoris Contract.)
    <li>The Emptoris APA IDs that I show need to be escalated are: (insert the providers specific APAs here) Can you confirm this is correct?
    <li>Are there any split rate APAs? Meaning different rates/APAs by product?
    <li>Is this the only contract paper in which a Rate Escalator is due? For example, are there any other legacy agreements that are also effective?
    <li>Have there been any amendments that altered or impacted the original Rate Escalator language?
    <li>Have there been any Emptoris corrections that could have resulted in new Emptoris APA IDs?
    <li>Will Charge Master updates or any Charge Master amendments impact the Rate Escalator?
    <li>Is there PBC language included in this agreement?
    <ol>
    <li>Note: If so, Network Management should ensure Network Pricing is aware if the contract is cumulative or non cumulative so rates are calculated correctly
    <li>Is there currently any amendment or open negotiations with this provider that would hold up the Rate Escalator submission? If so, should we proceed with preparing the submission in case the negotiations stall? (Renegotiation, adding PBC or other language impacting the rate escalator calculation or contract preparation).
    <li>Is there CPI-U language present?
    <li>Is this a straight percentage increase or decrease? If so, what is the increase or decrease amount?
    <li>Should all rates, PPR, Fixed, and Fee Schedules be escalated or only certain rates?
    <li>Should the Outlier Per Diem, Outlier threshold, Pass Through Threshold be escalated?
    <li>When calculating the rates, should I round to the nearest dollar?
    <li>Does this Rate Escalator apply to all products?
    <li>Does this Rate Escalator apply to all platforms?
    <li>If this is a non standard UHN agreement or legacy agreement, have you initiated any coding updates since the last event? If not, have there been any coding updates as this will impact the Rate Escalator submission.
    <li>Should all providers identified in the FSA be included in this Rate Escalator? (provide the FSA list of providers to Network for confirmation) Are there any other providers that should be included?
    <li>If this is a home infusion provider, is there a rate escalator for the AWP rate and/or Per Diem rates?
    <li>The next scheduled Rate Escalator for this provider is? (Is there a mid-year Rate Escalator due?)
    <li>What is the applicable ITI Penalty Table for each provider type under this submission?
    <li>If this Rate Escalator should NOT be submitted due to new negotiations are currently in process, the CME will:
    <ol>
    <li>.Keep this BPM record open just in case the new negotiations are not successful
    <li>Follow up the week before the Rate Escalator submission deadline
    <li>If necessary, follow up two weeks before the effective date of the potential Rate Escalator
    <li>Ensure the provider is put on a claim hold
    <li>If necessary follow up 2 days prior to the effective date of the potential Rate Escalator.
    <li>If this is a hospital contract or an ancillary contract with Rate Escalator language/Out Year APAs, have you set up a future trigger in BPM for next year?

  @US1183620
  @Configuration_for_12/1/18
  Scenario: US1183620 - Escalator notice on Dashboard
    Given a contract with an escalator is identified
    When the contractor associated to the contracts views their dashboard
    Then the contractor should see the name of the provider
    And the TIN
    And the MPIN
    And the date of the last escalator event
    And the Contract ID
    And the workflow status
    And the date of the next escalatorevent

  @US1183610
  @Configuration_for_12/1/18
  Scenario: US1183610 - Identify agreement with an escalator via Compliance Manager
    Given an executed or active agreement
    When it has a
    Then it is identified as having an escalaorcomponentAnd it is 120 calendars days before the anticipated escalator date.

