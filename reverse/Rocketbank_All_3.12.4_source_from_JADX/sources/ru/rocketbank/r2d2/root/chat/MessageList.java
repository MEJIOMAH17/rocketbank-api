package ru.rocketbank.r2d2.root.chat;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.NotImplementedError;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import ru.rocketbank.core.model.message.MessageIn;

/* compiled from: MessageList.kt */
public final class MessageList implements List<MessageIn>, KMappedMarker {
    public static final Companion Companion = new Companion();
    private static final String TAG = "MessageList";
    private final ArrayList<MessageIn> messages = new ArrayList();
    private final ArrayList<MessageIn> pending = new ArrayList();
    private boolean typingActive;

    /* compiled from: MessageList.kt */
    public static final class Companion {
        private Companion() {
        }

        public final String getTAG() {
            return MessageList.TAG;
        }
    }

    public final /* synthetic */ void add(int i, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void add(int i, MessageIn messageIn) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean add(MessageIn messageIn) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean addAll(int i, Collection<? extends MessageIn> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean addAll(Collection<? extends MessageIn> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final /* synthetic */ Object remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: remove */
    public final MessageIn m684remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void replaceAll(UnaryOperator<MessageIn> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final /* synthetic */ Object set(int i, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final MessageIn set(int i, MessageIn messageIn) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void sort(Comparator<? super MessageIn> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    public final <T> T[] toArray(T[] tArr) {
        return CollectionToArray.toArray(this, tArr);
    }

    public final /* bridge */ boolean contains(Object obj) {
        return !(obj instanceof MessageIn) ? null : contains((MessageIn) obj);
    }

    public final /* bridge */ int indexOf(Object obj) {
        return !(obj instanceof MessageIn) ? -1 : indexOf((MessageIn) obj);
    }

    public final /* bridge */ int lastIndexOf(Object obj) {
        return !(obj instanceof MessageIn) ? -1 : lastIndexOf((MessageIn) obj);
    }

    public final /* bridge */ int size() {
        return getSize();
    }

    public final boolean getTypingActive() {
        return this.typingActive;
    }

    public final void setTypingActive(boolean z) {
        this.typingActive = z;
    }

    public final int getSize() {
        return (this.messages.size() + this.pending.size()) + this.typingActive;
    }

    public final boolean contains(MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(messageIn, "element");
        if (!this.messages.contains(messageIn)) {
            if (this.pending.contains(messageIn) == null) {
                return null;
            }
        }
        return true;
    }

    public final boolean containsAll(Collection<? extends Object> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "elements");
        if (!this.messages.containsAll(collection)) {
            if (this.pending.containsAll(collection) == null) {
                return null;
            }
        }
        return true;
    }

    public final MessageIn get(int i) {
        if (i == 0 && this.typingActive) {
            return new MessageIn();
        }
        if (this.typingActive) {
            i--;
        }
        if (i < this.pending.size()) {
            i = this.pending.get(i);
            Intrinsics.checkExpressionValueIsNotNull(i, "pending[index]");
            return (MessageIn) i;
        }
        i = this.messages.get(i - this.pending.size());
        Intrinsics.checkExpressionValueIsNotNull(i, "messages[index - pending.size]");
        return (MessageIn) i;
    }

    public final int indexOf(MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(messageIn, "element");
        boolean z = this.typingActive;
        int indexOf = this.pending.indexOf(messageIn);
        if (indexOf >= 0) {
            return indexOf + z;
        }
        messageIn = this.messages.indexOf(messageIn);
        if (messageIn < null) {
            return messageIn + z;
        }
        return (messageIn + this.pending.size()) + z;
    }

    public final boolean isEmpty() {
        if (!this.typingActive && this.messages.isEmpty() && this.pending.isEmpty()) {
            return true;
        }
        return false;
    }

    public final Iterator<MessageIn> iterator() {
        throw new NotImplementedError("An operation is not implemented: ".concat(String.valueOf("not implemented")));
    }

    public final int lastIndexOf(MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(messageIn, "element");
        boolean z = this.typingActive;
        int lastIndexOf = this.pending.lastIndexOf(messageIn);
        if (lastIndexOf >= 0) {
            return lastIndexOf + z;
        }
        return this.messages.lastIndexOf(messageIn) + z;
    }

    public final ListIterator<MessageIn> listIterator() {
        throw new NotImplementedError("An operation is not implemented: ".concat(String.valueOf("not implemented")));
    }

    public final ListIterator<MessageIn> listIterator(int i) {
        throw new NotImplementedError("An operation is not implemented: ".concat(String.valueOf("not implemented")));
    }

    public final List<MessageIn> subList(int i, int i2) {
        throw ((Throwable) new NotImplementedError("An operation is not implemented: ".concat(String.valueOf("not implemented"))));
    }

    public final Pair<Integer, Integer> insertReal(List<MessageIn> list) {
        Intrinsics.checkParameterIsNotNull(list, "update");
        boolean z = this.typingActive;
        Collection arrayList = new ArrayList();
        for (Object next : list) {
            if ((this.messages.contains((MessageIn) next) ^ 1) != 0) {
                arrayList.add(next);
            }
        }
        list = CollectionsKt.sortedWith((List) arrayList, (Comparator) new MessageList$insertReal$$inlined$sortedByDescending$1());
        this.messages.addAll(0, list);
        return new Pair(Integer.valueOf(this.pending.size() + z), Integer.valueOf(list.size()));
    }

    public final Pair<Integer, Integer> addTail(List<MessageIn> list) {
        Intrinsics.checkParameterIsNotNull(list, "update");
        boolean z = this.typingActive;
        Collection arrayList = new ArrayList();
        for (Object next : list) {
            if ((this.messages.contains((MessageIn) next) ^ 1) != 0) {
                arrayList.add(next);
            }
        }
        list = CollectionsKt.sortedWith((List) arrayList, (Comparator) new MessageList$addTail$$inlined$sortedByDescending$1());
        this.messages.addAll(list);
        int size = this.pending.size() + z;
        return new Pair(Integer.valueOf((this.messages.size() - list.size()) + size), Integer.valueOf(size + this.messages.size()));
    }

    public final Pair<Integer, Integer> addPending(List<MessageIn> list) {
        Intrinsics.checkParameterIsNotNull(list, "update");
        Collection arrayList = new ArrayList();
        for (Object next : list) {
            if ((this.pending.contains((MessageIn) next) ^ 1) != 0) {
                arrayList.add(next);
            }
        }
        List list2 = (List) arrayList;
        list = this.typingActive;
        this.pending.addAll(0, list2);
        return new Pair(Integer.valueOf(list), Integer.valueOf(list2.size()));
    }

    public final Pair<Integer, Integer> movePendingToStable(MessageIn messageIn) {
        Intrinsics.checkParameterIsNotNull(messageIn, "messageIn");
        boolean z = this.typingActive;
        int indexOf = this.pending.indexOf(messageIn);
        this.pending.remove(messageIn);
        this.messages.add(0, messageIn);
        return new Pair(Integer.valueOf(indexOf + z), Integer.valueOf(this.pending.size()));
    }

    public final void debugOutState() {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder("pending: ");
        stringBuilder.append(this.pending.size());
        Log.v(str, stringBuilder.toString());
        str = TAG;
        stringBuilder = new StringBuilder("real: ");
        stringBuilder.append(this.messages.size());
        Log.v(str, stringBuilder.toString());
    }

    public final void updateReadTime(long j, long j2) {
        for (Object next : this.messages) {
            Object obj;
            if (((MessageIn) next).getId() == j) {
                obj = 1;
                continue;
            } else {
                obj = null;
                continue;
            }
            if (obj != null) {
                break;
            }
        }
        Object next2 = null;
        MessageIn messageIn = (MessageIn) next2;
        if (messageIn != null) {
            messageIn.setReadAt((int) j2);
        }
    }
}
