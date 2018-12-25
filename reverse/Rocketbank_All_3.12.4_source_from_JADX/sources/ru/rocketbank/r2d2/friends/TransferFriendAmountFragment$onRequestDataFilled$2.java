package ru.rocketbank.r2d2.friends;

/* compiled from: TransferFriendAmountFragment.kt */
final class TransferFriendAmountFragment$onRequestDataFilled$2 implements Runnable {
    final /* synthetic */ TransferFriendAmountFragment this$0;

    TransferFriendAmountFragment$onRequestDataFilled$2(TransferFriendAmountFragment transferFriendAmountFragment) {
        this.this$0 = transferFriendAmountFragment;
    }

    public final void run() {
        this.this$0.onTextChanged();
    }
}
