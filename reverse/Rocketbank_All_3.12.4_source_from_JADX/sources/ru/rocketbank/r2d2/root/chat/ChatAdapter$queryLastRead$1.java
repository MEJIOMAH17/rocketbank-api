package ru.rocketbank.r2d2.root.chat;

import android.support.v4.app.NotificationCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.r2d2.root.chat.sync.event.HeadMessagesEvent;

/* compiled from: ChatAdapter.kt */
final class ChatAdapter$queryLastRead$1 extends Lambda implements Function2<Long, HeadMessagesEvent, Long> {
    public static final ChatAdapter$queryLastRead$1 INSTANCE = new ChatAdapter$queryLastRead$1();

    ChatAdapter$queryLastRead$1() {
        super(2);
    }

    public final long invoke(Long l, HeadMessagesEvent headMessagesEvent) {
        Intrinsics.checkParameterIsNotNull(headMessagesEvent, NotificationCompat.CATEGORY_EVENT);
        Collection arrayList = new ArrayList();
        for (Object next : headMessagesEvent.getUpdate()) {
            if ((((MessageIn) next).isAdmin() ^ 1) != 0) {
                arrayList.add(next);
            }
        }
        headMessagesEvent = ((List) arrayList).iterator();
        if (headMessagesEvent.hasNext()) {
            Object next2 = headMessagesEvent.next();
            int readAt = ((MessageIn) next2).getReadAt();
            while (headMessagesEvent.hasNext()) {
                Object next3 = headMessagesEvent.next();
                int readAt2 = ((MessageIn) next3).getReadAt();
                if (readAt < readAt2) {
                    next2 = next3;
                    readAt = readAt2;
                }
            }
            headMessagesEvent = next2;
        } else {
            headMessagesEvent = null;
        }
        MessageIn messageIn = (MessageIn) headMessagesEvent;
        return Math.max(((long) (messageIn != null ? messageIn.getReadAt() : null)) * 1000, l != null ? l.longValue() : 0);
    }
}
