package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.r2d2.root.chat.sync.event.TailMessagesEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$queryLastRead$3 extends Lambda implements Function2<Long, TailMessagesEvent, Long> {
    public static final ChatAdapter$queryLastRead$3 INSTANCE = new ChatAdapter$queryLastRead$3();

    ChatAdapter$queryLastRead$3() {
        super(2);
    }

    public final long invoke(Long l, TailMessagesEvent tailMessagesEvent) {
        Intrinsics.checkParameterIsNotNull(tailMessagesEvent, NotificationCompat.CATEGORY_EVENT);
        Collection arrayList = new ArrayList();
        for (Object next : tailMessagesEvent.getUpdate()) {
            if ((((MessageIn) next).isAdmin() ^ 1) != 0) {
                arrayList.add(next);
            }
        }
        tailMessagesEvent = ((List) arrayList).iterator();
        if (tailMessagesEvent.hasNext()) {
            Object next2 = tailMessagesEvent.next();
            int readAt = ((MessageIn) next2).getReadAt();
            while (tailMessagesEvent.hasNext()) {
                Object next3 = tailMessagesEvent.next();
                int readAt2 = ((MessageIn) next3).getReadAt();
                if (readAt < readAt2) {
                    next2 = next3;
                    readAt = readAt2;
                }
            }
            tailMessagesEvent = next2;
        } else {
            tailMessagesEvent = null;
        }
        MessageIn messageIn = (MessageIn) tailMessagesEvent;
        return Math.max(((long) (messageIn != null ? messageIn.getReadAt() : null)) * 1000, l != null ? l.longValue() : 0);
    }
}
