package ru.rocketbank.core.events;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.contact.Contact;

/* compiled from: ContactsEvent.kt */
public final class ContactsEvent {
    private ErrorEvent errorEvent;
    private InProgressEvent inProgressEvent;
    private List<Long> rocketContactIDS;
    private List<Contact> serverContacts;
    private List<Contact> transferFriends;

    public final List<Contact> getServerContacts() {
        return this.serverContacts;
    }

    public final List<Long> getRocketContactIDS() {
        return this.rocketContactIDS;
    }

    public final List<Contact> getTransferFriends() {
        return this.transferFriends;
    }

    public final ErrorEvent getErrorEvent() {
        return this.errorEvent;
    }

    public final InProgressEvent getInProgressEvent() {
        return this.inProgressEvent;
    }

    public ContactsEvent() {
        this.serverContacts = CollectionsKt__CollectionsKt.emptyList();
        this.rocketContactIDS = CollectionsKt__CollectionsKt.emptyList();
        this.transferFriends = CollectionsKt__CollectionsKt.emptyList();
    }

    public ContactsEvent(List<Long> list, List<Contact> list2, List<Contact> list3) {
        Intrinsics.checkParameterIsNotNull(list, "rocketContactIDS");
        Intrinsics.checkParameterIsNotNull(list2, "serverContacts");
        Intrinsics.checkParameterIsNotNull(list3, "transferFriends");
        this.serverContacts = CollectionsKt__CollectionsKt.emptyList();
        this.rocketContactIDS = CollectionsKt__CollectionsKt.emptyList();
        this.transferFriends = CollectionsKt__CollectionsKt.emptyList();
        this.rocketContactIDS = list;
        this.serverContacts = list2;
        this.transferFriends = list3;
        this.errorEvent = null;
    }

    public ContactsEvent(ErrorEvent errorEvent) {
        Intrinsics.checkParameterIsNotNull(errorEvent, "errorEvent");
        this.serverContacts = CollectionsKt__CollectionsKt.emptyList();
        this.rocketContactIDS = CollectionsKt__CollectionsKt.emptyList();
        this.transferFriends = CollectionsKt__CollectionsKt.emptyList();
        this.rocketContactIDS = null;
        this.serverContacts = null;
        this.errorEvent = errorEvent;
    }

    public ContactsEvent(InProgressEvent inProgressEvent) {
        Intrinsics.checkParameterIsNotNull(inProgressEvent, "inProgressEvent");
        this.serverContacts = CollectionsKt__CollectionsKt.emptyList();
        this.rocketContactIDS = CollectionsKt__CollectionsKt.emptyList();
        this.transferFriends = CollectionsKt__CollectionsKt.emptyList();
        this.rocketContactIDS = null;
        this.serverContacts = null;
        this.errorEvent = null;
        this.inProgressEvent = inProgressEvent;
    }
}
