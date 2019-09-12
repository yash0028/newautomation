package general_test.util;

public interface ISharedValueReset {

    default void resetStore() {
        SharedValueStore.getInstance().reset();
    }
}
