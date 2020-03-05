# Last updated on
@SPGABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: SPGA Business Testcases_IN

  @Manual
  @User_Interface
  Scenario Outline: myTest - [RL0] Author SPGA contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site

    #Draft

     And I am using the "<TCName>" data from "<paperType>_CEN.csv" of "<site>" and paper type "<paperType>"
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
#   And I enter Payment Appendix
#    And I enter Additional Locations
#    And I enter Regulatory Appendices
#    And I select Provider Roster as None
#    And I enter Amendments
#    And I enter Group Summary
#    Then I Complete Wizard

#    And I create supporting document
#    And I review supporting document

#    And I capture Contract Number
#     And I search Contract using Contract Number

#    And I create supporting document
#    And I review supporting document

      # And I capture Contract Number
    #And I search Contract using Contract Number

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
#Amendment Steps to create Add Medicare Amendment
#    And I select the contract
#    And I click on Create Amendment
#    And I enter title
#    And I enter Amendment Selection
#    And I select Amendments needed in Amendment Selection
#    And I select Amendment Type in Provider Details
##    And I check Provider Details
#    And I select Types of Amendments
#    And I select Contract Applied in Amendments
#    And I enter Contract Details in Amendments
#    And I enter Effective date in Contract Details
#    And I enter Appendix 2 in Amendments
#     And I select applied Payment Appendix
# And I enter Payment Appendix in Amendments for SPGA contracts
#    And I select Payment Appendix to include in Amendments for SMGA contracts
#    And I enter Payment Appendix in Amendments for SMGA contracts
#    And I check Payment Appendix
#    And I choose Additional Manuals
#    And I enter Steerage
##    And I enter Regulatory Appendices
#    And I enter Group Summary
#    And I Complete Wizard



#    Steps to create Amendments to update Fee Schedule ID
#    And I select the contract
#    And I click on Create Amendment
#    And I enter title
#    And I enter Amendment Selection
#    And I select Amendments needed in Amendment Selection
#    And I select Amendment Type in Provider Details
#	And I enter Amendments Page to amend Payment Appendix
#    And I enter Contract Details in Amendments
#    And I enter Effective date in Contract Details
#	And I enter Payment Appendix in Amendments to replace Payment Appendix
#	And I select fee schedule id in Amendments
#    And I enter Group Summary
#    And I Complete Wizard

    #cancel Amendment
    And I select the contract
    And I click on Create Amendment
    And I enter title
    And I enter Amendment Selection
    And I select Amendments needed in Amendment Selection
    And I select Amendment Type in Provider Details
    And I enter OurSignatory
    And I select Types of Amendments
    And I select Provider Type Radio Button in Amendments
    And I enter Opt-out in Amendments
    And I enter Contract Details in Amendments
    And I enter Appendix 2 in Amendments
    And I select applied Payment Appendix
    And I enter Payment Appendix in Amendments for SPGA contracts
    And I check Payment Appendix
    And I choose Additional Manuals
    And I enter Group Summary
    And I Complete Wizard

    #Amandment final capture
    And I Start Workflow
    And I Start Process for Initial Transaction
    And I Set Status as Final Pending QA in Amendment
    And I Start Final Capture
    And I enter Provider Signatory in Amendment
    And I enter Our Signatory in Amendment
    And I enter Effective date in Contract Details
    And I enter Payment Appendix in Amendments FinalCapture
    And I enter Payment Appendix in Amendments FinalCapture
    And I enter Group Summary
    And I Complete Wizard

    #Activating Amendment
    And I Set Status as Active in Amendment

		#Amendment CMD Checking

#    And I enter Amendments Page to amend Payment Appendix
#    And I enter Payment Appendix in Amendments to replace Payment Appendix
#    And I select fee schedule id in Amendments

    Examples:
      |site          |paperType     |TCName|
      |central uhn   |SPGA          |TC_CEN_SPGA_IN_05|

