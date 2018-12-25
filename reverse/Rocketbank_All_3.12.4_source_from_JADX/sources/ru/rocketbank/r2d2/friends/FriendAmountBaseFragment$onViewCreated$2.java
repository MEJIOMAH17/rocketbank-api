package ru.rocketbank.r2d2.friends;

import ru.rocketbank.r2d2.helpers.KeyboardHelper;

/* compiled from: FriendAmountBaseFragment.kt */
final class FriendAmountBaseFragment$onViewCreated$2 implements Runnable {
    final /* synthetic */ FriendAmountBaseFragment this$0;

    FriendAmountBaseFragment$onViewCreated$2(FriendAmountBaseFragment friendAmountBaseFragment) {
        this.this$0 = friendAmountBaseFragment;
    }

    public final void run() {
        KeyboardHelper.show(this.this$0.getEditTextAmount());
    }
}
