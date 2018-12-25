package ru.rocketbank.core.model.contact;

import android.net.Uri;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;

public final class DeviceContact {
    @SerializedName("Email")
    private List<String> emails = new ArrayList();
    @SerializedName("contact_id")
    private long id;
    private String name;
    @SerializedName("Phone")
    private List<String> phones = new ArrayList();

    public DeviceContact(long j, String str) {
        this.id = j;
        this.name = str;
    }

    public final long getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final List<String> getEmails() {
        return this.emails;
    }

    public final List<String> getPhones() {
        return this.phones;
    }

    public final void add(Uri uri, String str) {
        if (uri == Email.CONTENT_URI) {
            this.emails.add(str);
            return;
        }
        if (uri == Phone.CONTENT_URI) {
            this.phones.add(str);
        }
    }
}
