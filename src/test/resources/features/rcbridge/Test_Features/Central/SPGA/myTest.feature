# Last updated on
@SPGABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: SPGA Business Testcases_IN

  @myTest
  @Manual
  @User_Interface
  Scenario Outline: myTest - [RL0] Author SPGA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft
    And I am using the "<TCName>" data from "<paperType>_CEN_IN.csv" of "<site>" and paper type "<paperType>"
#    And I enter PES Inputs
#    And I enter PES Response
#    And I select Market Number
#    And I enter Request For Participation Response
#    And I enter Document Selection
#    And I preview Provider Details
#    And I enter Practice Locations for SPGA Contract
#    And I preview Provider Details
#    And I enter Market Exception Grid
#    And I enter Market Exception Grid
#    And I enter Contract Details
#    And I enter HBPs Red Door
#    And I enter Market Strategy Grid
#    And I enter Appendix 2
#    And I enter Payment Appendix
#    And I enter Additional Locations
#    And I enter Regulatory Appendices
#    And I select Provider Roster as None
#    And I enter Amendments
#    And I enter Group Summary
#    Then I Complete Wizard

#    And I create supporting document
#    And I review supporting document

    And I capture Contract Number
#     And I search Contract using Contract Number


#    #Final capture
#    And I Start Workflow
#    And I Start Process for Initial Transaction
#    And I Set Status as Final Pending QA
#    And I Start Final Capture
#    And I enter Contract Details in Final Capture
#    And I enter Provider Signatory
#    And I enter Our Signatory
#    And I enter Market Exception Grid in Final Capture
#    And I enter Market Exception Grid
#    And I add provider using TIN
#    #And I select approach for Provider Entry
#    #And I enter TIN in Provider Roster
#    And I select Providers
#    And I enter retro code in Provider Roster
#    And I acknowledge the warning
#    And I enter Group Summary
#    Then I Complete Wizard
#    And I Set Status as Active




    #NDB Checking
		#Draft Amandament
		#Amandment final capture

		#Amendment CMD Checking



    Examples:
      | site          | paperType     | TCName|
      | central uhn   | SPGA          | TC_CEN_SPGA_IN_05|

