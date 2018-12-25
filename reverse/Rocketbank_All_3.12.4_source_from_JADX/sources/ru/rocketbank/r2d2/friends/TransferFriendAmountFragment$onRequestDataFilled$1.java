package ru.rocketbank.r2d2.friends;

import ru.rocketbank.core.model.contact.Contact;

/* compiled from: TransferFriendAmountFragment.kt */
final class TransferFriendAmountFragment$onRequestDataFilled$1 implements Runnable {
    final /* synthetic */ double $amount;
    final /* synthetic */ String $comment;
    final /* synthetic */ Contact $contact;
    final /* synthetic */ TransferFriendAmountFragment this$0;

    TransferFriendAmountFragment$onRequestDataFilled$1(TransferFriendAmountFragment transferFriendAmountFragment, Contact contact, double d, String str) {
        this.this$0 = transferFriendAmountFragment;
        this.$contact = contact;
        this.$amount = d;
        this.$comment = str;
    }

    public final void run() {
        super.onRequestDataFilled(this.$contact, this.$amount, this.$comment, TransferFriendAmountFragment.access$getToken$p(this.this$0));
    }
}
