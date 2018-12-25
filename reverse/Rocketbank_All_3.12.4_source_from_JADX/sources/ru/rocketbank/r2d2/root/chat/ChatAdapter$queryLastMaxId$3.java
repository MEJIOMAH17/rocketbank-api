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
final class ChatAdapter$queryLastMaxId$3 extends Lambda implements Function2<Long, TailMessagesEvent, Long> {
    final /* synthetic */ long $maxId;

    ChatAdapter$queryLastMaxId$3(long j) {
        this.$maxId = j;
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
            long id = ((MessageIn) next2).getId();
            while (tailMessagesEvent.hasNext()) {
                Object next3 = tailMessagesEvent.next();
                long id2 = ((MessageIn) next3).getId();
                if (id < id2) {
                    next2 = next3;
                    id = id2;
                }
            }
            tailMessagesEvent = next2;
        } else {
            tailMessagesEvent = null;
        }
        MessageIn messageIn = (MessageIn) tailMessagesEvent;
        long j = 0;
        long max = Math.max(this.$maxId, messageIn != null ? messageIn.getId() : 0);
        if (l != null) {
            j = l.longValue();
        }
        return Math.max(max, j);
    }
}
