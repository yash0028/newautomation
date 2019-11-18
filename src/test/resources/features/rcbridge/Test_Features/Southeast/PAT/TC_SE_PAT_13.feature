# Last updated on
# Author commercial with 1 ALD group and 1 Mid-level PAT contract, execute and load contract, verify contract fed_Standard_Fee schedule change
@PATBusinessTestcases_AR
@releaseUnknown
@iterationUnknown
Feature: PAT Business Testcases_AR
  @TC_SE_PAT_AR_13
  @Manual
  @User_Interface
  Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
    And I am using the "<TCName>" data from "<paperType>_SE_AR.csv" of "<site>" and paper type "<paperType>"
    And I enter PES Inputs
    And I enter PES Responses
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for PAT Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I enter Contract Details
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Additional Locations
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard

     #Final capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA
    And I Start Final Capture
    And I enter Contract Details in Final Capture
    And I enter Provider Signatory
    And I enter Our Signatory
    And I enter Market Exception Grid in Final Capture
    And I enter Market Exception Grid
    And I add provider using TIN
    And I select Providers
    And I enter retro code in Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard

    #Activate
    And I Set Status as Active


     #CMD Check
    When I have entered the CMD dashboard URL
    When I search for Contract
    #Then Validate Contract "<contract>" status and request type "<Contractstatus>"



      #NDB Check
   
   #NDB Check
    #Draft Amendment
    #Draft Amandament
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
#    And I check Provider Details
    And I select Types of Amendments
    And I select Contract Applied in Amendments
    And I enter Contract Details in Amendments
    And I enter Effective date in Contract Details
    And I enter Appendix 2 in Amendments
    And I select applied Payment Appendix
    And I enter Payment Appendix in Amendments
    And I check Payment Appendix
    And I enter Additional Manuals
    And I enter Steerage
#    And I enter Regulatory Appendices
    And I enter Group Summary
    And I Complete Wizard

	#Amandment final capture


	#Amendment CMD Checking
    #Amendment Final Capture
    #Amendment CMD Check
    #NDB Check

	#Amandment final capture


	#Amendment CMD Checking
    #Amendment Final Capture
    #Amendment CMD Check
    #NDB Check


    Examples:
      | site          | paperType     | TCName           |
      | southeast uhn   | PAT           | TC_SE_PAT_AR_13 |