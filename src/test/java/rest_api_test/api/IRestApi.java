package rest_api_test.api;

import general_test.util.ISharedValueParam;
import general_test.util.ISharedValuePayload;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public interface IRestApi extends ISharedValuePayload, ISharedValueParam {
    Logger log = LoggerFactory.getLogger(IRestApi.class);
    
    /*
    INTERFACE METHODS
    */
    
    /*
    DEFAULT METHODS
    */

    default void useDevApi() {
        log.debug("set rest api env from {} to {}", AbstractRestApi.env.name(), AbstractRestApi.Env.dev.name());
        AbstractRestApi.env = AbstractRestApi.Env.dev;
    }

    default void useTestApi() {
        log.debug("set rest api env from {} to {}", AbstractRestApi.env.name(), AbstractRestApi.Env.test.name());
        AbstractRestApi.env = AbstractRestApi.Env.test;
    }

    default void useStageApi() {
        log.debug("set rest api env from {} to {}", AbstractRestApi.env.name(), AbstractRestApi.Env.stage.name());
        AbstractRestApi.env = AbstractRestApi.Env.stage;
    }

    default void logRestAll() {
        AbstractRestApi.logLevel = AbstractRestApi.LogLevel.all;
    }

    default void logRestRequest() {
        AbstractRestApi.logLevel = AbstractRestApi.LogLevel.request;
    }

    default void logRestResponse() {
        AbstractRestApi.logLevel = AbstractRestApi.LogLevel.response;
    }

    default void logRestNone() {
        AbstractRestApi.logLevel = AbstractRestApi.LogLevel.none;
    }
    
    /*
    UTILITY CLASS
    */
}
