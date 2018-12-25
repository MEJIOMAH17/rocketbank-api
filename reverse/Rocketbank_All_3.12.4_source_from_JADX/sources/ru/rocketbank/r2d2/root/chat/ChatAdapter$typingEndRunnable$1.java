package ru.rocketbank.r2d2.root.chat;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$typingEndRunnable$1 implements Runnable {
    final /* synthetic */ ChatAdapter this$0;

    ChatAdapter$typingEndRunnable$1(ChatAdapter chatAdapter) {
        this.this$0 = chatAdapter;
    }

    public final void run() {
        this.this$0.deactivateTyping();
    }
}
