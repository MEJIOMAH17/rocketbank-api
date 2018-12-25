package ru.rocketbank.r2d2.root.chat;

import rx.functions.Action1;

/* compiled from: ChatFragment.kt */
final class ChatFragment$initClicks$1<T> implements Action1<Void> {
    final /* synthetic */ ChatFragment this$0;

    ChatFragment$initClicks$1(ChatFragment chatFragment) {
        this.this$0 = chatFragment;
    }

    public final void call(Void voidR) {
        this.this$0.attachedOperation = null;
        ChatFragment.access$getDelimiterMenu$p(this.this$0).setVisibility(8);
        this.this$0.updateOperation();
    }
}
