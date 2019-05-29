package exari_test.eif.flow;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.file.IFileReader;

import java.util.ArrayList;
import java.util.List;

class ContractFlowLoaderHelper implements IFileReader {
    private static final Logger log = LoggerFactory.getLogger(ContractFlowLoaderHelper.class);
    private static ContractFlowLoaderHelper ourInstance = new ContractFlowLoaderHelper();

    /*
    CONSTRUCTOR
     */

    private ContractFlowLoaderHelper() {
    }

    /*
    STATIC METHODS
     */

    static ContractFlowLoaderHelper getInstance() {
        return ourInstance;
    }

    /*
    CLASS METHODS
     */

    public ContractFlow loadFlowContract(String fileInResourceFolder) {
        return loadFlowContract(fileInResourceFolder, null);
    }

    /*
    HELPER METHODS
     */

    private ContractFlow loadFlowContract(String fileInResourceFolder, List<String> fileHistory) {
        //check for empty file
        if (fileInResourceFolder == null || fileInResourceFolder.isEmpty()) {
            return null;
        }

        //start file history if needed
        if (fileHistory == null) {
            fileHistory = new ArrayList<>();
        }

        ContractFlow contractFlow;
        String path = "/support/exari/" + fileInResourceFolder;
        //Open flow data
        log.info("opening eif {}", path);
        JsonElement flowData = getJsonElementFromFile(path);
        Gson gson = new GsonBuilder()
                .registerTypeAdapter(ContractFlow.class, new ContractFlow.Deserializer())
                .create();

        //Convert json flow data into a flow map
        contractFlow = gson.fromJson(flowData, ContractFlow.class);

        //Check for parent flows
        if (contractFlow.getExtendedFrom().isPresent()) {
            //set current to child
            ContractFlow child = contractFlow;

            //check for circular loading
            if (fileHistory.contains(fileInResourceFolder)) {
                log.error("circular reference detected for '{}' and {}.", fileInResourceFolder, fileHistory.toString());
                return child;
            }

            //Add current filename to history
            fileHistory.add(fileInResourceFolder);

            //load new flow
            contractFlow = loadFlowContract(child.getExtendedFrom().orElse(""), fileHistory);

            //check for invalid flow
            if (contractFlow == null) {
                log.error("unable to properly load parent '{}'", child.getExtendedFrom().orElse(""));
                return child;
            }

            contractFlow.merge(child);
        }

        return contractFlow;
    }


}
