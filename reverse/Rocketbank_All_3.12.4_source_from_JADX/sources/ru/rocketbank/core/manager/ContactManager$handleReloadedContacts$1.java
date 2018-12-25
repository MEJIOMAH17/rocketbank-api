package ru.rocketbank.core.manager;

import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.contact.Contact;

/* compiled from: ContactManager.kt */
final class ContactManager$handleReloadedContacts$1<T> implements Comparator<T> {
    public static final ContactManager$handleReloadedContacts$1 INSTANCE = new ContactManager$handleReloadedContacts$1();

    ContactManager$handleReloadedContacts$1() {
    }

    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Contact contact = (Contact) obj2;
        obj = ((Contact) obj).getName();
        if (obj == null) {
            Intrinsics.throwNpe();
        }
        obj2 = contact.getName();
        if (obj2 == null) {
            Intrinsics.throwNpe();
        }
        return obj.compareTo(obj2);
    }
}
