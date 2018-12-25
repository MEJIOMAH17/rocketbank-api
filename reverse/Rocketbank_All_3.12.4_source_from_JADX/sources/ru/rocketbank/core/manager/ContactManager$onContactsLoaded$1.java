package ru.rocketbank.core.manager;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.events.ContactsEvent;
import ru.rocketbank.core.model.TransferModel;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.contact.Contact;
import rx.functions.Action1;

/* compiled from: ContactManager.kt */
final class ContactManager$onContactsLoaded$1<T> implements Action1<UserModel> {
    final /* synthetic */ List $rocketContactIDS;
    final /* synthetic */ List $serverContacts;
    final /* synthetic */ ContactManager this$0;

    ContactManager$onContactsLoaded$1(ContactManager contactManager, List list, List list2) {
        this.this$0 = contactManager;
        this.$serverContacts = list;
        this.$rocketContactIDS = list2;
    }

    public final /* bridge */ /* synthetic */ void call(Object obj) {
        UserModel userModel = (UserModel) obj;
        Intrinsics.checkExpressionValueIsNotNull(userModel, "userModel");
        Object<TransferModel> transfers = userModel.getTransfers();
        if (transfers == null || transfers.size() <= 0) {
            this.this$0.contactsSubject.onNext(new ContactsEvent(this.$rocketContactIDS, this.$serverContacts, CollectionsKt__CollectionsKt.emptyList()));
            return;
        }
        HashSet hashSet = new HashSet();
        for (Contact id : this.$serverContacts) {
            Contact id2;
            hashSet.add(Long.valueOf(id2.getId()));
        }
        HashMap hashMap = new HashMap();
        for (TransferModel transferModel : transfers) {
            Intrinsics.checkExpressionValueIsNotNull(transferModel, "transfer");
            if (hashSet.contains(Long.valueOf(transferModel.getFriendId()))) {
                Contact contact = new Contact(transferModel.getFriendId(), transferModel.getFirstName(), transferModel.getLastName(), false, false, 24, null);
                contact.setRocket(Intrinsics.areEqual("internal", transferModel.getType()));
                hashMap.put(Long.valueOf(contact.getId()), contact);
            }
        }
        for (Contact contact2 : this.$serverContacts) {
            if (hashMap.containsKey(Long.valueOf(contact2.getId()))) {
                id2 = (Contact) hashMap.get(Long.valueOf(contact2.getId()));
                if (id2 != null) {
                    id2.setAvatar(contact2.getAvatar());
                    id2.setName(contact2.getName());
                    id2.setServerFirstName(contact2.getServerFirstName());
                    id2.setServerLastName(contact2.getServerLastName());
                    id2.setEur(contact2.getEur());
                    id2.setUsd(contact2.getUsd());
                }
            }
        }
        obj = new ArrayList(hashMap.values());
        this.this$0.contactsSubject.onNext(new ContactsEvent(this.$rocketContactIDS, this.$serverContacts, (List) obj));
        try {
            this.this$0.getRocketShortcutManager().createFriendShortcuts(obj);
        } catch (Object obj2) {
            AnalyticsManager.logException((Throwable) obj2);
        }
    }
}
