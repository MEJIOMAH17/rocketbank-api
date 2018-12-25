package io.fabric.sdk.android;

public interface InitializationCallback<T> {
    public static final InitializationCallback EMPTY = new Empty();

    public static class Empty implements InitializationCallback<Object> {
        public final void failure(Exception exception) {
        }

        public final void success$5d527811() {
        }

        private Empty() {
        }
    }

    void failure(Exception exception);

    void success$5d527811();
}
