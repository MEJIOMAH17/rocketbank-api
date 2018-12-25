package ru.rocketbank.core.model.contact;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.provider.ContactsContract.CommonDataKinds.Email;
import android.provider.ContactsContract.CommonDataKinds.Phone;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: Contact.kt */
public final class Contact implements Serializable {
    private String avatar;
    private ArrayList<String> emails;
    private boolean eur;
    private String firstName;
    private long id;
    private boolean isRocket;
    private String lastName;
    private ArrayList<String> phones;
    private String serverFirstName;
    private String serverLastName;
    private boolean usd;

    public final long getId() {
        return this.id;
    }

    public final void setId(long j) {
        this.id = j;
    }

    public final ArrayList<String> getEmails() {
        return this.emails;
    }

    public final void setEmails(ArrayList<String> arrayList) {
        this.emails = arrayList;
    }

    public final ArrayList<String> getPhones() {
        return this.phones;
    }

    public final void setPhones(ArrayList<String> arrayList) {
        this.phones = arrayList;
    }

    public final String getAvatar() {
        return this.avatar;
    }

    public final void setAvatar(String str) {
        this.avatar = str;
    }

    public final String getFirstName() {
        return this.firstName;
    }

    public final void setFirstName(String str) {
        this.firstName = str;
    }

    public final String getLastName() {
        return this.lastName;
    }

    public final void setLastName(String str) {
        this.lastName = str;
    }

    public final boolean isRocket() {
        return this.isRocket;
    }

    public final void setRocket(boolean z) {
        this.isRocket = z;
    }

    public final String getServerFirstName() {
        return this.serverFirstName;
    }

    public final void setServerFirstName(String str) {
        this.serverFirstName = str;
    }

    public final String getServerLastName() {
        return this.serverLastName;
    }

    public final void setServerLastName(String str) {
        this.serverLastName = str;
    }

    public final boolean getUsd() {
        return this.usd;
    }

    public final void setUsd(boolean z) {
        this.usd = z;
    }

    public final boolean getEur() {
        return this.eur;
    }

    public final void setEur(boolean z) {
        this.eur = z;
    }

    public Contact() {
        this.emails = new ArrayList();
        this.phones = new ArrayList();
    }

    public /* synthetic */ Contact(long j, String str, String str2, boolean z, boolean z2, int i, Ref ref) {
        this(j, str, str2, (i & 8) != 0 ? false : z, (i & 16) != 0 ? false : z2);
    }

    public Contact(long j, String str, String str2, boolean z, boolean z2) {
        this.emails = new ArrayList();
        this.phones = new ArrayList();
        this.id = j;
        this.firstName = str;
        this.lastName = str2;
        this.usd = z;
        this.eur = z2;
    }

    public final boolean contains(String str) {
        if (getName() != null) {
            if (str != null) {
                String name = getName();
                if (name == null) {
                    Intrinsics.throwNpe();
                }
                if (name == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                name = name.toLowerCase();
                Intrinsics.checkExpressionValueIsNotNull(name, "(this as java.lang.String).toLowerCase()");
                CharSequence charSequence = name;
                str = str.toLowerCase();
                Intrinsics.checkExpressionValueIsNotNull(str, "(this as java.lang.String).toLowerCase()");
                return StringsKt__StringsKt.contains$default(charSequence, (CharSequence) str, false, 2, null);
            }
        }
        return false;
    }

    public final String getName() {
        return getName(this.firstName, this.lastName);
    }

    public final void setName(String str) {
        if (str != null) {
            this.firstName = str;
            this.lastName = "";
        }
    }

    public final void set(ServerContact serverContact) {
        if (serverContact != null) {
            this.avatar = serverContact.getAvatar();
            this.serverFirstName = serverContact.getFirstName();
            this.firstName = serverContact.getFirstName();
            this.serverLastName = serverContact.getLastName();
            this.lastName = serverContact.getLastName();
            this.id = serverContact.getId();
            this.isRocket = true;
            this.usd = serverContact.getUsd();
            this.eur = serverContact.getEur();
        }
    }

    public final String getServerName() {
        return getName(this.serverFirstName, this.serverLastName);
    }

    private final String getName(String str, String str2) {
        StringBuilder stringBuilder = new StringBuilder();
        if (str != null) {
            stringBuilder.append(str);
        }
        if (!(str == null || str2 == null)) {
            stringBuilder.append(" ");
        }
        if (str2 != null) {
            stringBuilder.append(str2);
        }
        str = stringBuilder.toString();
        Intrinsics.checkExpressionValueIsNotNull(str, "name.toString()");
        return str;
    }

    public final void updateContacts(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        context = context.getContentResolver();
        if (context != null) {
            Uri uri = Email.CONTENT_URI;
            Intrinsics.checkExpressionValueIsNotNull(uri, "ContactsContract.CommonDataKinds.Email.CONTENT_URI");
            Context context2 = context;
            this.emails = getContactData(context2, this.id, "data1", uri);
            uri = Phone.CONTENT_URI;
            Intrinsics.checkExpressionValueIsNotNull(uri, "ContactsContract.CommonDataKinds.Phone.CONTENT_URI");
            this.phones = getContactData(context2, this.id, "data1", uri);
        }
    }

    private final ArrayList<String> getContactData(ContentResolver contentResolver, long j, String str, Uri uri) {
        ContentResolver contentResolver2 = contentResolver;
        Uri uri2 = uri;
        contentResolver = contentResolver2.query(uri2, new String[]{str}, "contact_id=?", new String[]{String.valueOf(j)}, null);
        j = (List) new ArrayList();
        if (contentResolver != null) {
            int count = contentResolver.getCount();
            str = contentResolver.getColumnIndex(str);
            if (count > 0) {
                j = (List) new ArrayList(count);
                while (contentResolver.moveToNext()) {
                    String string = contentResolver.getString(str);
                    Intrinsics.checkExpressionValueIsNotNull(string, "cursor.getString(index)");
                    j.add(string);
                }
            }
            contentResolver.close();
        }
        return new ArrayList((Collection) j);
    }
}
