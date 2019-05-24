package general_test.util;

public interface ISharedValuePoster {

    default void putSharedObject(String key, Object obj) {
        SharedValueStore.getInstance().putSharedObject(key, obj);
    }

    default String getSharedObject(String key) {
        return SharedValueStore.getInstance().getSharedObject(key).toString();
    }

    default void resetStore() {
        SharedValueStore.getInstance().reset();
    }
}
