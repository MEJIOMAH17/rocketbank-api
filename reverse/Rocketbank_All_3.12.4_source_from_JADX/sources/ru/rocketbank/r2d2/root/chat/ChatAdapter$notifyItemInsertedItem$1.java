package ru.rocketbank.r2d2.root.chat;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$notifyItemInsertedItem$1 implements OnClickListener {
    final /* synthetic */ ChatAdapter this$0;

    ChatAdapter$notifyItemInsertedItem$1(ChatAdapter chatAdapter) {
        this.this$0 = chatAdapter;
    }

    public final void onClick(View view) {
        this.this$0.chatView.smoothScrollToPosition(0);
    }
}
