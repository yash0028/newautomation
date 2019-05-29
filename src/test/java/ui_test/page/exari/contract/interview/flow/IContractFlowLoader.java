package ui_test.page.exari.contract.interview.flow;

public interface IContractFlowLoader {

    default ContractFlow loadFlowContract(String fileInResourcePath) {
        return ContractFlowLoaderHelper.getInstance().loadFlowContract(fileInResourcePath);
    }
}
