package ru.rocketbank.core.manager;

import java.util.Map;
import ru.rocketbank.core.model.contact.DeviceContact;
import rx.Subscriber;

/* compiled from: ContactManager.kt */
public final class ContactManager$reloadContacts$1 extends Subscriber<Map<Long, ? extends DeviceContact>> {
    final /* synthetic */ ContactManager this$0;

    public final void onCompleted() {
    }

    public final void onError(Throwable th) {
    }

    ContactManager$reloadContacts$1(ContactManager contactManager) {
        this.this$0 = contactManager;
    }

    public final /* bridge */ /* synthetic */ void onNext(Object obj) {
        Map map = (Map) obj;
        if (map != null) {
            ContactManager.access$handleReloadedContacts(this.this$0, map);
        }
    }
}
