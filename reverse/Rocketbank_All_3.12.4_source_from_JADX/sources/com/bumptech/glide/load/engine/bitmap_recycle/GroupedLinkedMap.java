package com.bumptech.glide.load.engine.bitmap_recycle;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class GroupedLinkedMap<K extends Poolable, V> {
    private final LinkedEntry<K, V> head = new LinkedEntry();
    private final Map<K, LinkedEntry<K, V>> keyToEntry = new HashMap();

    static class LinkedEntry<K, V> {
        private final K key;
        LinkedEntry<K, V> next;
        LinkedEntry<K, V> prev;
        private List<V> values;

        public LinkedEntry() {
            this(null);
        }

        public LinkedEntry(K k) {
            this.prev = this;
            this.next = this;
            this.key = k;
        }

        public final int size() {
            return this.values != null ? this.values.size() : 0;
        }

        public final void add(V v) {
            if (this.values == null) {
                this.values = new ArrayList();
            }
            this.values.add(v);
        }

        public final V removeLast() {
            int size = this.values != null ? this.values.size() : 0;
            return size > 0 ? this.values.remove(size - 1) : null;
        }
    }

    GroupedLinkedMap() {
    }

    public final void put(K k, V v) {
        LinkedEntry linkedEntry = (LinkedEntry) this.keyToEntry.get(k);
        if (linkedEntry == null) {
            linkedEntry = new LinkedEntry(k);
            linkedEntry.prev.next = linkedEntry.next;
            linkedEntry.next.prev = linkedEntry.prev;
            linkedEntry.prev = this.head.prev;
            linkedEntry.next = this.head;
            linkedEntry.next.prev = linkedEntry;
            linkedEntry.prev.next = linkedEntry;
            this.keyToEntry.put(k, linkedEntry);
        } else {
            k.offer();
        }
        linkedEntry.add(v);
    }

    public final V get(K k) {
        LinkedEntry linkedEntry = (LinkedEntry) this.keyToEntry.get(k);
        if (linkedEntry == null) {
            linkedEntry = new LinkedEntry(k);
            this.keyToEntry.put(k, linkedEntry);
        } else {
            k.offer();
        }
        linkedEntry.prev.next = linkedEntry.next;
        linkedEntry.next.prev = linkedEntry.prev;
        linkedEntry.prev = this.head;
        linkedEntry.next = this.head.next;
        linkedEntry.next.prev = linkedEntry;
        linkedEntry.prev.next = linkedEntry;
        return linkedEntry.removeLast();
    }

    public final V removeLast() {
        for (LinkedEntry linkedEntry = this.head.prev; !linkedEntry.equals(this.head); linkedEntry = linkedEntry.prev) {
            V removeLast = linkedEntry.removeLast();
            if (removeLast != null) {
                return removeLast;
            }
            linkedEntry.prev.next = linkedEntry.next;
            linkedEntry.next.prev = linkedEntry.prev;
            this.keyToEntry.remove(linkedEntry.key);
            ((Poolable) linkedEntry.key).offer();
        }
        return null;
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("GroupedLinkedMap( ");
        Object obj = null;
        for (LinkedEntry linkedEntry = this.head.next; !linkedEntry.equals(this.head); linkedEntry = linkedEntry.next) {
            obj = 1;
            stringBuilder.append('{');
            stringBuilder.append(linkedEntry.key);
            stringBuilder.append(':');
            stringBuilder.append(linkedEntry.size());
            stringBuilder.append("}, ");
        }
        if (obj != null) {
            stringBuilder.delete(stringBuilder.length() - 2, stringBuilder.length());
        }
        stringBuilder.append(" )");
        return stringBuilder.toString();
    }
}
