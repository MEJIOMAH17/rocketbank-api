package ru.rocketbank.r2d2.root.chat;

import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.root.chat.sync.event.HeadMessagesEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.MessageEvent;
import rx.functions.Action1;

/* compiled from: ChatFragment.kt */
final class ChatFragment$onViewCreated$$inlined$let$lambda$1<T> implements Action1<MessageEvent> {
    final /* synthetic */ LinearLayoutManager $linearLayoutManager$inlined;
    final /* synthetic */ Bundle $savedInstanceState$inlined;
    final /* synthetic */ ChatFragment this$0;

    ChatFragment$onViewCreated$$inlined$let$lambda$1(ChatFragment chatFragment, Bundle bundle, LinearLayoutManager linearLayoutManager) {
        this.this$0 = chatFragment;
        this.$savedInstanceState$inlined = bundle;
        this.$linearLayoutManager$inlined = linearLayoutManager;
    }

    public final void call(MessageEvent messageEvent) {
        ChatAdapter access$getAdapter$p = this.this$0.adapter;
        if (access$getAdapter$p != null) {
            Intrinsics.checkExpressionValueIsNotNull(messageEvent, "it");
            access$getAdapter$p.updateData(messageEvent);
        }
        if ((messageEvent instanceof HeadMessagesEvent) != null && this.$linearLayoutManager$inlined.findFirstVisibleItemPosition() <= 1) {
            ChatFragment.access$getChatView$p(this.this$0).smoothScrollToPosition(0);
        }
        ChatFragment.access$getRocketLoader$p(this.this$0).setVisibility(8);
    }
}
