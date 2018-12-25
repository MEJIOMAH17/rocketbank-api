package ru.rocketbank.core.manager;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.contact.Contacts;
import rx.functions.Action1;

/* compiled from: ContactManager.kt */
final class ContactManager$loadContacts$1<T> implements Action1<Contacts> {
    final /* synthetic */ ContactManager this$0;

    ContactManager$loadContacts$1(ContactManager contactManager) {
        this.this$0 = contactManager;
    }

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        Contacts contacts = (Contacts) obj;
        if (contacts != null) {
            ContactManager contactManager = this.this$0;
            List rocketContactIDS = contacts.getRocketContactIDS();
            Intrinsics.checkExpressionValueIsNotNull(rocketContactIDS, "c.rocketContactIDS");
            obj = contacts.getServerContacts();
            Intrinsics.checkExpressionValueIsNotNull(obj, "c.serverContacts");
            contactManager.onContactsLoaded(rocketContactIDS, obj);
            return;
        }
        this.this$0.reloadContacts();
    }
}
