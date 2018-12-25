package io.realm.internal;

public interface Capabilities {
    boolean canDeliverNotification();

    void checkCanDeliverNotification(String str);
}
