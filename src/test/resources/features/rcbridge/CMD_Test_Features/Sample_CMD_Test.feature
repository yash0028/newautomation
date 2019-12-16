# Last updated on
@SAMPLE

Feature: CMD - [Continued] CMD

  #@TC678783
  @User_Interface
  Scenario: CMD Action required validation - [RL0]



      Given I have entered the CMD dashboard URL
      And The dashboard page loads
      And I clicked on Action Required
     And I am on the contract master override page
      And I click site in contract master override
     And I click product group
     And I click edit tab in product group

     # Then the default sort of the data should be oldest submission date to newest submission date


    #Then I search for Contract
    #Then Validate Contract status and request type




    #Given I have clicked on Action Required button on the CMD dashboard
    #When there are Action Required transactions