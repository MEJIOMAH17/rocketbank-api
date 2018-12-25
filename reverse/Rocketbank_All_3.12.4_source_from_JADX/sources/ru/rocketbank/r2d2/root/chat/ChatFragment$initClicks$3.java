package ru.rocketbank.r2d2.root.chat;

import android.support.v7.widget.RecyclerView.RecyclerListener;
import android.support.v7.widget.RecyclerView.ViewHolder;
import kotlin.TypeCastException;

/* compiled from: ChatFragment.kt */
final class ChatFragment$initClicks$3 implements RecyclerListener {
    public static final ChatFragment$initClicks$3 INSTANCE = new ChatFragment$initClicks$3();

    ChatFragment$initClicks$3() {
    }

    public final void onViewRecycled(ViewHolder viewHolder) {
        if (viewHolder == null) {
            throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.root.chat.MessageViewHolder");
        }
        ((MessageViewHolder) viewHolder).clear();
    }
}
