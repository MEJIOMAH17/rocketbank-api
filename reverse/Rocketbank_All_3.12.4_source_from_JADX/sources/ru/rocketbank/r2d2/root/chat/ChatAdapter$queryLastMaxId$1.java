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
final class ChatAdapter$queryLastMaxId$1 extends Lambda implements Function2<Long, HeadMessagesEvent, Long> {
    final /* synthetic */ long $maxId;

    ChatAdapter$queryLastMaxId$1(long j) {
        this.$maxId = j;
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
            long id = ((MessageIn) next2).getId();
            while (headMessagesEvent.hasNext()) {
                Object next3 = headMessagesEvent.next();
                long id2 = ((MessageIn) next3).getId();
                if (id < id2) {
                    next2 = next3;
                    id = id2;
                }
            }
            headMessagesEvent = next2;
        } else {
            headMessagesEvent = null;
        }
        MessageIn messageIn = (MessageIn) headMessagesEvent;
        long j = 0;
        long max = Math.max(this.$maxId, messageIn != null ? messageIn.getId() : 0);
        if (l != null) {
            j = l.longValue();
        }
        return Math.max(max, j);
    }
}
