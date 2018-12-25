package ru.rocketbank.r2d2.root.chat;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.manager.messsage.ChatMessage;

/* compiled from: MessageUpdateEvent.kt */
public final class MessageUpdateEvent {
    public static final Companion Companion = new Companion();
    private static final int PAGE_LOAD = 1;
    private static final int REFRESH = 0;
    private final List<ChatMessage> messages;
    private final int pageNumber;
    private final int state;

    /* compiled from: MessageUpdateEvent.kt */
    public static final class Companion {
        private Companion() {
        }

        public final int getREFRESH() {
            return MessageUpdateEvent.REFRESH;
        }

        public final int getPAGE_LOAD() {
            return MessageUpdateEvent.PAGE_LOAD;
        }
    }

    public static /* bridge */ /* synthetic */ MessageUpdateEvent copy$default(MessageUpdateEvent messageUpdateEvent, int i, int i2, List list, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = messageUpdateEvent.pageNumber;
        }
        if ((i3 & 2) != 0) {
            i2 = messageUpdateEvent.state;
        }
        if ((i3 & 4) != 0) {
            list = messageUpdateEvent.messages;
        }
        return messageUpdateEvent.copy(i, i2, list);
    }

    public final int component1() {
        return this.pageNumber;
    }

    public final int component2() {
        return this.state;
    }

    public final List<ChatMessage> component3() {
        return this.messages;
    }

    public final MessageUpdateEvent copy(int i, int i2, List<ChatMessage> list) {
        Intrinsics.checkParameterIsNotNull(list, "messages");
        return new MessageUpdateEvent(i, i2, list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageUpdateEvent) {
            MessageUpdateEvent messageUpdateEvent = (MessageUpdateEvent) obj;
            if (this.pageNumber == messageUpdateEvent.pageNumber) {
                return (this.state == messageUpdateEvent.state) && Intrinsics.areEqual(this.messages, messageUpdateEvent.messages);
            }
        }
    }

    public final int hashCode() {
        int i = ((this.pageNumber * 31) + this.state) * 31;
        List list = this.messages;
        return i + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("MessageUpdateEvent(pageNumber=");
        stringBuilder.append(this.pageNumber);
        stringBuilder.append(", state=");
        stringBuilder.append(this.state);
        stringBuilder.append(", messages=");
        stringBuilder.append(this.messages);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public MessageUpdateEvent(int i, int i2, List<ChatMessage> list) {
        Intrinsics.checkParameterIsNotNull(list, "messages");
        this.pageNumber = i;
        this.state = i2;
        this.messages = list;
    }

    public final List<ChatMessage> getMessages() {
        return this.messages;
    }

    public final int getPageNumber() {
        return this.pageNumber;
    }

    public final int getState() {
        return this.state;
    }
}
