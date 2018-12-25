package ru.rocketbank.core.manager;

import ru.rocketbank.core.events.ContactsEvent;
import ru.rocketbank.core.events.ErrorEvent;
import rx.functions.Action1;

/* compiled from: ContactManager.kt */
final class ContactManager$onContactsLoaded$2<T> implements Action1<Throwable> {
    final /* synthetic */ ContactManager this$0;

    ContactManager$onContactsLoaded$2(ContactManager contactManager) {
        this.this$0 = contactManager;
    }

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        Throwable th = (Throwable) obj;
        AnalyticsManager.logException(th);
        this.this$0.contactsSubject.onNext(new ContactsEvent(new ErrorEvent(th)));
    }
}
