package exari_test.eif.flow;

public interface IContractFlowLoader {

    default ContractFlow loadFlowContract(String fileInResourcePath) {
        return ContractFlowLoaderHelper.getInstance().loadFlowContract(fileInResourcePath);
    }
}
