package ru.rocketbank.r2d2.root.chat;

import java.util.Comparator;
import ru.rocketbank.core.model.message.MessageIn;

/* compiled from: Comparisons.kt */
public final class MessageList$insertReal$$inlined$sortedByDescending$1<T> implements Comparator<T> {
    public final int compare(T t, T t2) {
        Comparable valueOf = Integer.valueOf(((MessageIn) t2).getCreatedAt());
        Comparable valueOf2 = Integer.valueOf(((MessageIn) t).getCreatedAt());
        if (valueOf == valueOf2) {
            return null;
        }
        if (valueOf == null) {
            return -1;
        }
        return valueOf2 == null ? 1 : valueOf.compareTo(valueOf2);
    }
}
