package ru.rocketbank.r2d2.root.chat.sync;

import android.support.v4.app.NotificationCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.r2d2.root.chat.sync.event.HeadMessagesEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.MessageEvent;
import ru.rocketbank.r2d2.root.chat.sync.event.TailMessagesEvent;
import rx.subjects.Subject;

/* compiled from: ChatState.kt */
public final class ChatState {
    private boolean firstPageLoaded;
    private final Set<Long> ids = new LinkedHashSet();

    public final List<MessageIn> filterLoaded(List<MessageIn> list, Set<Long> set) {
        Intrinsics.checkParameterIsNotNull(list, "$receiver");
        Intrinsics.checkParameterIsNotNull(set, "ids");
        Collection arrayList = new ArrayList();
        for (Object next : list) {
            if (!set.contains(Long.valueOf(((MessageIn) next).getId()))) {
                arrayList.add(next);
            }
        }
        return (List) arrayList;
    }

    public final List<Long> getIds(List<MessageIn> list) {
        Intrinsics.checkParameterIsNotNull(list, "$receiver");
        Iterable<MessageIn> iterable = list;
        Collection arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault$251b5948(iterable));
        for (MessageIn id : iterable) {
            arrayList.add(Long.valueOf(id.getId()));
        }
        return (List) arrayList;
    }

    public final List<MessageIn> storeIds(List<MessageIn> list, Set<Long> set) {
        Intrinsics.checkParameterIsNotNull(list, "$receiver");
        Intrinsics.checkParameterIsNotNull(set, "list");
        set.addAll(getIds(list));
        return list;
    }

    private final Pair<List<MessageIn>, MessageEvent> transformUpdate(List<MessageIn> list, int i, Function3<? super Integer, ? super List<MessageIn>, ? super MessageEvent, ? extends MessageEvent> function3) {
        return new Pair(list, function3.invoke(Integer.valueOf(i), list, null));
    }

    private final Pair<List<MessageIn>, MessageEvent> transformUpdate(Pair<? extends List<MessageIn>, ? extends MessageEvent> pair, int i, Function3<? super Integer, ? super List<MessageIn>, ? super MessageEvent, ? extends MessageEvent> function3) {
        return new Pair(pair.getFirst(), function3.invoke(Integer.valueOf(i), pair.getFirst(), pair.getSecond()));
    }

    private final void fire(Pair<? extends List<MessageIn>, ? extends MessageEvent> pair, Function1<? super MessageEvent, Unit> function1) {
        MessageEvent messageEvent = (MessageEvent) pair.getSecond();
        if (messageEvent != null) {
            function1.invoke(messageEvent);
        }
    }

    public final void update(int i, List<MessageIn> list, Subject<MessageEvent, MessageEvent> subject) {
        Intrinsics.checkParameterIsNotNull(list, "source");
        Intrinsics.checkParameterIsNotNull(subject, NotificationCompat.CATEGORY_EVENT);
        fire(transformUpdate(transformUpdate(storeIds(filterLoaded(list, this.ids), this.ids), i, (Function3) new ChatState$update$1(this)), i, (Function3) new ChatState$update$2(this)), (Function1) new ChatState$update$3(subject));
    }

    public final MessageEvent onTailUpdate(int i, List<MessageIn> list, MessageEvent messageEvent) {
        Intrinsics.checkParameterIsNotNull(list, "list");
        return i > 1 ? (MessageEvent) new TailMessagesEvent(list, messageEvent) : messageEvent;
    }

    public final MessageEvent onHeadUpdate(int i, List<MessageIn> list, MessageEvent messageEvent) {
        Intrinsics.checkParameterIsNotNull(list, "list");
        if (i != 1 || this.firstPageLoaded) {
            return (i != 1 || this.firstPageLoaded == 0) ? messageEvent : (MessageEvent) new HeadMessagesEvent(list, messageEvent);
        } else {
            this.firstPageLoaded = true;
            return (MessageEvent) new TailMessagesEvent(list, messageEvent);
        }
    }
}
