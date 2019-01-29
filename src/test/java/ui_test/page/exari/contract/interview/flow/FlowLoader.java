package ui_test.page.exari.contract.interview.flow;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import util.file.IFileReader;

import java.util.ArrayList;
import java.util.List;

class FlowLoader implements IFileReader {
    private static final Logger log = LoggerFactory.getLogger(FlowLoader.class);
    private static FlowLoader ourInstance = new FlowLoader();

    /*
    CONSTRUCTOR
     */

    private FlowLoader() {
    }

    /*
    STATIC METHODS
     */

    static FlowLoader getInstance() {
        return ourInstance;
    }

    /*
    CLASS METHODS
     */

    public FlowContract loadFlowContract(String fileInResourceFolder) {
        return loadFlowContract(fileInResourceFolder, null);
    }

    /*
    HELPER METHODS
     */

    private FlowContract loadFlowContract(String fileInResourceFolder, List<String> fileHistory) {
        //check for empty file
        if (fileInResourceFolder == null || fileInResourceFolder.isEmpty()) {
            return null;
        }

        //start file history if needed
        if (fileHistory == null) {
            fileHistory = new ArrayList<>();
        }

        FlowContract flowContract;
        String path = "/support/exari/" + fileInResourceFolder;
        //Open flow data
        log.info("opening eif {}", path);
        JsonElement flowData = getJsonElementFromFile(path);
        Gson gson = new GsonBuilder()
                .registerTypeAdapter(FlowContract.class, new FlowContract.Deserializer())
                .create();

        //Convert json flow data into a flow map
        flowContract = gson.fromJson(flowData, FlowContract.class);

        //Check for parent flows
        if (flowContract.getExtendedFrom().isPresent()) {
            //set current to child
            FlowContract child = flowContract;

            //check for circular loading
            if (fileHistory.contains(fileInResourceFolder)) {
                log.error("circular reference detected for '{}' and {}.", fileInResourceFolder, fileHistory.toString());
                return child;
            }

            //Add current filename to history
            fileHistory.add(fileInResourceFolder);

            //load new flow
            flowContract = loadFlowContract(child.getExtendedFrom().orElse(""), fileHistory);

            //check for invalid flow
            if (flowContract == null) {
                log.error("unable to properly load parent '{}'", child.getExtendedFrom().orElse(""));
                return child;
            }

            flowContract.merge(child);
        }

        return flowContract;
    }


}
