package ru.rocketbank.r2d2.root.chat;

import ru.rocketbank.core.model.dto.operations.Operation;
import rx.functions.Action1;

/* compiled from: ChatFragment.kt */
final class ChatFragment$initClicks$4<T> implements Action1<Void> {
    final /* synthetic */ ChatFragment this$0;

    ChatFragment$initClicks$4(ChatFragment chatFragment) {
        this.this$0 = chatFragment;
    }

    public final void call(Void voidR) {
        MessageManager messageManager;
        CharSequence obj = ChatFragment.access$getMessageView$p(this.this$0).getText().toString();
        int length = obj.length() - 1;
        int i = 0;
        int i2 = i;
        while (i <= length) {
            int i3 = obj.charAt(i2 == 0 ? i : length) <= ' ' ? 1 : false;
            if (i2 != 0) {
                if (i3 == 0) {
                    break;
                }
                length--;
            } else if (i3 == 0) {
                i2 = 1;
            } else {
                i++;
            }
        }
        String obj2 = obj.subSequence(i, length + 1).toString();
        if ((((CharSequence) obj2).length() == 0 ? 1 : false) == 0) {
            messageManager = this.this$0.getMessageManager();
            if (messageManager != null) {
                messageManager.send(obj2);
            }
            ChatFragment.onSendPostActions$default(this.this$0, false, 1, null);
        }
        Operation access$getAttachedOperation$p = this.this$0.attachedOperation;
        if (access$getAttachedOperation$p != null) {
            if (access$getAttachedOperation$p instanceof Operation) {
                messageManager = this.this$0.getMessageManager();
                if (messageManager != null) {
                    messageManager.send(access$getAttachedOperation$p);
                }
            }
            ChatFragment.onSendPostActions$default(this.this$0, false, 1, null);
            this.this$0.attachedOperation = null;
            this.this$0.updateOperation();
        }
        ChatFragment.access$getDelimiterMenu$p(this.this$0).setVisibility(8);
    }
}
