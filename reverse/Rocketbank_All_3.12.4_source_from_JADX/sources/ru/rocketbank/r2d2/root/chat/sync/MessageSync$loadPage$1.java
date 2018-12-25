package ru.rocketbank.r2d2.root.chat.sync;

import android.support.v7.widget.ActivityChooserView.ActivityChooserViewAdapter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import ru.rocketbank.core.model.dto.Pagination;
import ru.rocketbank.core.model.message.MessageIn;
import ru.rocketbank.core.network.model.MessagesResponse;
import rx.functions.Func1;

/* compiled from: MessageSync.kt */
final class MessageSync$loadPage$1<T, R> implements Func1<T, R> {
    final /* synthetic */ MessageSync this$0;

    MessageSync$loadPage$1(MessageSync messageSync) {
        this.this$0 = messageSync;
    }

    public final Pair<Pagination, List<MessageIn>> call(MessagesResponse messagesResponse) {
        Object obj;
        Pagination pagination = messagesResponse.getPagination();
        this.this$0.totalPages.set(messagesResponse.getPagination().getTotalPages() + 1);
        messagesResponse = messagesResponse.getMessages();
        if (messagesResponse != null) {
            int size = messagesResponse.size();
            size = size < 3 ? size + 1 : size < 1073741824 ? size + (size / 3) : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            Map linkedHashMap = new LinkedHashMap(size);
            for (Entry entry : messagesResponse.entrySet()) {
                Object key = entry.getKey();
                List<Object> list = (List) entry.getValue();
                Function1 splitMessages = this.this$0.splitMessages(((Number) entry.getKey()).intValue());
                Collection arrayList = new ArrayList();
                for (Object invoke : list) {
                    CollectionsKt.addAll(arrayList, (Iterable) splitMessages.invoke(invoke));
                }
                linkedHashMap.put(key, (List) arrayList);
            }
            messagesResponse = linkedHashMap.values();
            if (messagesResponse != null) {
                Collection arrayList2 = new ArrayList();
                for (List addAll : (Iterable) messagesResponse) {
                    CollectionsKt.addAll(arrayList2, addAll);
                }
                obj = (List) arrayList2;
                return new Pair(pagination, obj);
            }
        }
        obj = null;
        return new Pair(pagination, obj);
    }
}
