package ui_test.page.exari.contract.interview.flow;

public interface IFlowContractLoader {

    default FlowContract loadFlowContract(String fileInResourcePath) {
        return FlowLoader.getInstance().loadFlowContract(fileInResourcePath);
    }
}
