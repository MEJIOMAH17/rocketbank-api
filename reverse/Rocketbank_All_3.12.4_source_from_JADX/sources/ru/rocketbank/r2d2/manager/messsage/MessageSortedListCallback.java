package ru.rocketbank.r2d2.manager.messsage;

import android.support.v7.util.SortedList.Callback;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.Log;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.r2d2.root.chat.ChatAdapter;

/* compiled from: MessageSortedListCallback.kt */
public final class MessageSortedListCallback<T extends ViewHolder> extends Callback<ChatMessage> {
    private final ChatAdapter chatAdapter;

    public MessageSortedListCallback(ChatAdapter chatAdapter) {
        Intrinsics.checkParameterIsNotNull(chatAdapter, "chatAdapter");
        this.chatAdapter = chatAdapter;
    }

    public final int compare(ChatMessage chatMessage, ChatMessage chatMessage2) {
        Intrinsics.checkParameterIsNotNull(chatMessage, "o1");
        Intrinsics.checkParameterIsNotNull(chatMessage2, "o2");
        if (chatMessage == chatMessage2) {
            return 0;
        }
        if (chatMessage.isTyping() && chatMessage2.isTyping()) {
            return 0;
        }
        if (chatMessage.isTyping()) {
            return -1;
        }
        if (chatMessage2.isTyping()) {
            return 1;
        }
        MessageIn message = chatMessage.getMessage();
        MessageIn message2 = chatMessage2.getMessage();
        StringBuilder stringBuilder;
        if (message == null || message2 == null) {
            stringBuilder = new StringBuilder("no message : ");
            stringBuilder.append(chatMessage2.getTime() - chatMessage.getTime());
            stringBuilder.append(" ");
            stringBuilder.append(chatMessage2.getTime());
            stringBuilder.append(" ");
            stringBuilder.append(chatMessage.getTime());
            stringBuilder.append("\no1\n");
            stringBuilder.append(chatMessage);
            stringBuilder.append("o2\n");
            stringBuilder.append(chatMessage2);
            Log.v("MEQU", stringBuilder.toString());
            return 1;
        } else if (Intrinsics.areEqual(message, message2)) {
            Log.v("MEQU", "o1 eq o2");
            return 0;
        } else if (chatMessage.getTime() != chatMessage2.getTime()) {
            stringBuilder = new StringBuilder("o1 time o2 time : ");
            stringBuilder.append(chatMessage2.getTime() - chatMessage.getTime());
            stringBuilder.append(" ");
            stringBuilder.append(chatMessage2.getTime());
            stringBuilder.append(" ");
            stringBuilder.append(chatMessage.getTime());
            stringBuilder.append("\no1\n");
            stringBuilder.append(chatMessage);
            stringBuilder.append("o2\n");
            stringBuilder.append(chatMessage2);
            Log.v("MEQU", stringBuilder.toString());
            return chatMessage2.getTime() - chatMessage.getTime();
        } else if (chatMessage.getNumber() == chatMessage2.getNumber()) {
            return chatMessage2.getChunk() - chatMessage.getChunk();
        } else {
            return chatMessage2.getNumber() - chatMessage.getNumber();
        }
    }

    public final void onInserted(int i, int i2) {
        this.chatAdapter.notifyItemInsertedItem(i);
    }

    public final void onRemoved(int i, int i2) {
        this.chatAdapter.notifyItemRemoved(i);
    }

    public final void onMoved(int i, int i2) {
        this.chatAdapter.notifyItemMoved(i, i2);
    }

    public final void onChanged(int i, int i2) {
        this.chatAdapter.notifyItemChanged(i);
    }

    public final boolean areContentsTheSame(ChatMessage chatMessage, ChatMessage chatMessage2) {
        Intrinsics.checkParameterIsNotNull(chatMessage, "oldItem");
        Intrinsics.checkParameterIsNotNull(chatMessage2, "newItem");
        return Intrinsics.areEqual(chatMessage, chatMessage2);
    }

    public final boolean areItemsTheSame(ChatMessage chatMessage, ChatMessage chatMessage2) {
        Intrinsics.checkParameterIsNotNull(chatMessage, "item1");
        Intrinsics.checkParameterIsNotNull(chatMessage2, "item2");
        return Intrinsics.areEqual(chatMessage, chatMessage2);
    }
}
