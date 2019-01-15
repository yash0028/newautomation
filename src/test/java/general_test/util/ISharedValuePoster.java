package general_test.util;

public interface ISharedValuePoster {

    default void putSharedObject(String key, Object obj) {
        SharedValueStore.getInstance().putSharedObject(key, obj);
    }

    default void resetStore() {
        SharedValueStore.getInstance().reset();
    }
}
