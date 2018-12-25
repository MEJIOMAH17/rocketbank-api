package ru.rocketbank.core.network.model;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.contact.ServerContact;

/* compiled from: ContactsSyncResponse.kt */
public final class ContactsSyncResponse {
    private final List<ServerContact> contacts;
    @SerializedName("contacts_hash")
    private final String contactsHash;

    public static /* bridge */ /* synthetic */ ContactsSyncResponse copy$default(ContactsSyncResponse contactsSyncResponse, List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            list = contactsSyncResponse.contacts;
        }
        if ((i & 2) != 0) {
            str = contactsSyncResponse.contactsHash;
        }
        return contactsSyncResponse.copy(list, str);
    }

    public final List<ServerContact> component1() {
        return this.contacts;
    }

    public final String component2() {
        return this.contactsHash;
    }

    public final ContactsSyncResponse copy(List<ServerContact> list, String str) {
        return new ContactsSyncResponse(list, str);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ContactsSyncResponse) {
                ContactsSyncResponse contactsSyncResponse = (ContactsSyncResponse) obj;
                if (Intrinsics.areEqual(this.contacts, contactsSyncResponse.contacts) && Intrinsics.areEqual(this.contactsHash, contactsSyncResponse.contactsHash)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        List list = this.contacts;
        int i = 0;
        int hashCode = (list != null ? list.hashCode() : 0) * 31;
        String str = this.contactsHash;
        if (str != null) {
            i = str.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("ContactsSyncResponse(contacts=");
        stringBuilder.append(this.contacts);
        stringBuilder.append(", contactsHash=");
        stringBuilder.append(this.contactsHash);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public ContactsSyncResponse(List<ServerContact> list, String str) {
        this.contacts = list;
        this.contactsHash = str;
    }

    public final List<ServerContact> getContacts() {
        return this.contacts;
    }

    public final String getContactsHash() {
        return this.contactsHash;
    }
}
