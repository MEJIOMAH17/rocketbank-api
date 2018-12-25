package ru.rocketbank.r2d2.root.chat.sync.notification;

/* compiled from: TypingNotification.kt */
public final class MessageRead {
    private final long id;
    private final long timestamp;

    public static /* bridge */ /* synthetic */ MessageRead copy$default(MessageRead messageRead, long j, long j2, int i, Object obj) {
        if ((i & 1) != 0) {
            j = messageRead.id;
        }
        if ((i & 2) != 0) {
            j2 = messageRead.timestamp;
        }
        return messageRead.copy(j, j2);
    }

    public final long component1() {
        return this.id;
    }

    public final long component2() {
        return this.timestamp;
    }

    public final MessageRead copy(long j, long j2) {
        return new MessageRead(j, j2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MessageRead) {
            MessageRead messageRead = (MessageRead) obj;
            if (this.id == messageRead.id) {
                if (this.timestamp == messageRead.timestamp) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.id;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        long j2 = this.timestamp;
        return i + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("MessageRead(id=");
        stringBuilder.append(this.id);
        stringBuilder.append(", timestamp=");
        stringBuilder.append(this.timestamp);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public MessageRead(long j, long j2) {
        this.id = j;
        this.timestamp = j2;
    }

    public final long getId() {
        return this.id;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }
}
