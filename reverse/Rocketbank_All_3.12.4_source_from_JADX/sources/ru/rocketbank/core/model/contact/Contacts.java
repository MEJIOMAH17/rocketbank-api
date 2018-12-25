package ru.rocketbank.core.model.contact;

import com.google.gson.annotations.SerializedName;
import java.util.List;

public final class Contacts {
    @SerializedName("rocketContactIDS")
    private List<Long> rocketContactIDS;
    @SerializedName("server_contacts")
    private List<Contact> serverContacts;

    public Contacts(List<Long> list, List<Contact> list2) {
        this.rocketContactIDS = list;
        this.serverContacts = list2;
    }

    public final List<Long> getRocketContactIDS() {
        return this.rocketContactIDS;
    }

    public final List<Contact> getServerContacts() {
        for (Contact rocket : this.serverContacts) {
            rocket.setRocket(true);
        }
        return this.serverContacts;
    }
}
