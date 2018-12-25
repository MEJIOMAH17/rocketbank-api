package ru.rocketbank.core.network.model;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.dto.Pagination;
import ru.rocketbank.core.model.message.MessageIn;

/* compiled from: MessagesResponse.kt */
public final class MessagesResponse {
    private final Map<Integer, List<MessageIn>> messages;
    private final Pagination pagination;

    public static /* bridge */ /* synthetic */ MessagesResponse copy$default(MessagesResponse messagesResponse, Map map, Pagination pagination, int i, Object obj) {
        if ((i & 1) != 0) {
            map = messagesResponse.messages;
        }
        if ((i & 2) != 0) {
            pagination = messagesResponse.pagination;
        }
        return messagesResponse.copy(map, pagination);
    }

    public final Map<Integer, List<MessageIn>> component1() {
        return this.messages;
    }

    public final Pagination component2() {
        return this.pagination;
    }

    public final MessagesResponse copy(Map<Integer, ? extends List<MessageIn>> map, Pagination pagination) {
        Intrinsics.checkParameterIsNotNull(pagination, "pagination");
        return new MessagesResponse(map, pagination);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MessagesResponse) {
                MessagesResponse messagesResponse = (MessagesResponse) obj;
                if (Intrinsics.areEqual(this.messages, messagesResponse.messages) && Intrinsics.areEqual(this.pagination, messagesResponse.pagination)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Map map = this.messages;
        int i = 0;
        int hashCode = (map != null ? map.hashCode() : 0) * 31;
        Pagination pagination = this.pagination;
        if (pagination != null) {
            i = pagination.hashCode();
        }
        return hashCode + i;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("MessagesResponse(messages=");
        stringBuilder.append(this.messages);
        stringBuilder.append(", pagination=");
        stringBuilder.append(this.pagination);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public MessagesResponse(Map<Integer, ? extends List<MessageIn>> map, Pagination pagination) {
        Intrinsics.checkParameterIsNotNull(pagination, "pagination");
        this.messages = map;
        this.pagination = pagination;
    }

    public final Map<Integer, List<MessageIn>> getMessages() {
        return this.messages;
    }

    public final Pagination getPagination() {
        return this.pagination;
    }
}
