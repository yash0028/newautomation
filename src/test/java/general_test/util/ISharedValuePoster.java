package general_test.util;

public interface ISharedValuePoster extends ISharedValueReset {

    default void putSharedObject(String key, Object obj) {
        SharedValueStore.getInstance().putSharedObject(key, obj);
    }
}
