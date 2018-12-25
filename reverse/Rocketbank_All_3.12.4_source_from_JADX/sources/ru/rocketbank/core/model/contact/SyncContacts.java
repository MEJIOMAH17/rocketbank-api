package ru.rocketbank.core.model.contact;

import java.util.Collection;

public final class SyncContacts {
    private Collection<DeviceContact> contacts;

    public SyncContacts(Collection<DeviceContact> collection) {
        this.contacts = collection;
    }
}
