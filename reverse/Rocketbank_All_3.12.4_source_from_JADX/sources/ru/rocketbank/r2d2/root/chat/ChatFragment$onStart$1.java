package ru.rocketbank.r2d2.root.chat;

import android.widget.ImageButton;
import com.jakewharton.rxbinding.widget.TextViewAfterTextChangeEvent;
import rx.functions.Action1;

/* compiled from: ChatFragment.kt */
final class ChatFragment$onStart$1<T> implements Action1<TextViewAfterTextChangeEvent> {
    final /* synthetic */ ChatFragment this$0;

    ChatFragment$onStart$1(ChatFragment chatFragment) {
        this.this$0 = chatFragment;
    }

    public final void call(TextViewAfterTextChangeEvent textViewAfterTextChangeEvent) {
        CharSequence obj = ChatFragment.access$getMessageView$p(this.this$0).getText().toString();
        boolean z = true;
        int length = obj.length() - 1;
        int i = 0;
        int i2 = i;
        while (i <= length) {
            boolean z2 = obj.charAt(i2 == 0 ? i : length) <= ' ';
            if (i2 != 0) {
                if (!z2) {
                    break;
                }
                length--;
            } else if (z2) {
                i++;
            } else {
                i2 = true;
            }
        }
        textViewAfterTextChangeEvent = obj.subSequence(i, length + 1).toString();
        ImageButton access$getSendView$p = ChatFragment.access$getSendView$p(this.this$0);
        if (this.this$0.attachedOperation == null) {
            if ((((CharSequence) textViewAfterTextChangeEvent).length() == null ? 1 : null) != null) {
                z = false;
            }
        }
        access$getSendView$p.setEnabled(z);
    }
}
