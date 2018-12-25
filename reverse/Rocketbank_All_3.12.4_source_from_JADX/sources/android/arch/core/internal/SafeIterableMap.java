package android.arch.core.internal;

import android.support.annotation.RestrictTo;
import java.util.Iterator;
import java.util.WeakHashMap;

@RestrictTo
public class SafeIterableMap<K, V> implements Iterable<java.util.Map.Entry<K, V>> {
    private Entry<K, V> mEnd;
    private WeakHashMap<SupportRemove<K, V>, Boolean> mIterators = new WeakHashMap();
    private int mSize = 0;
    private Entry<K, V> mStart;

    static class Entry<K, V> implements java.util.Map.Entry<K, V> {
        final K mKey;
        Entry<K, V> mNext;
        Entry<K, V> mPrevious;
        final V mValue;

        Entry(K k, V v) {
            this.mKey = k;
            this.mValue = v;
        }

        public final K getKey() {
            return this.mKey;
        }

        public final V getValue() {
            return this.mValue;
        }

        public final V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public final String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.mKey);
            stringBuilder.append("=");
            stringBuilder.append(this.mValue);
            return stringBuilder.toString();
        }

        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return this.mKey.equals(entry.mKey) && this.mValue.equals(entry.mValue) != null;
        }
    }

    interface SupportRemove<K, V> {
        void supportRemove(Entry<K, V> entry);
    }

    class IteratorWithAdditions implements SupportRemove<K, V>, Iterator<java.util.Map.Entry<K, V>> {
        private boolean mBeforeStart;
        private Entry<K, V> mCurrent;

        private IteratorWithAdditions() {
            this.mBeforeStart = true;
        }

        public final void supportRemove(Entry<K, V> entry) {
            if (entry == this.mCurrent) {
                this.mCurrent = this.mCurrent.mPrevious;
                this.mBeforeStart = this.mCurrent == null ? true : null;
            }
        }

        public final boolean hasNext() {
            return this.mBeforeStart ? SafeIterableMap.this.mStart != null : (this.mCurrent == null || this.mCurrent.mNext == null) ? false : true;
        }

        public final /* bridge */ /* synthetic */ Object next() {
            Entry access$100;
            if (this.mBeforeStart) {
                this.mBeforeStart = false;
                access$100 = SafeIterableMap.this.mStart;
            } else {
                access$100 = this.mCurrent != null ? this.mCurrent.mNext : null;
            }
            this.mCurrent = access$100;
            return this.mCurrent;
        }
    }

    static abstract class ListIterator<K, V> implements SupportRemove<K, V>, Iterator<java.util.Map.Entry<K, V>> {
        Entry<K, V> mExpectedEnd;
        Entry<K, V> mNext;

        abstract Entry<K, V> backward(Entry<K, V> entry);

        abstract Entry<K, V> forward(Entry<K, V> entry);

        ListIterator(Entry<K, V> entry, Entry<K, V> entry2) {
            this.mExpectedEnd = entry2;
            this.mNext = entry;
        }

        public boolean hasNext() {
            return this.mNext != null;
        }

        public final void supportRemove(Entry<K, V> entry) {
            Entry entry2 = null;
            if (this.mExpectedEnd == entry && entry == this.mNext) {
                this.mNext = null;
                this.mExpectedEnd = null;
            }
            if (this.mExpectedEnd == entry) {
                this.mExpectedEnd = backward(this.mExpectedEnd);
            }
            if (this.mNext == entry) {
                if (this.mNext != this.mExpectedEnd) {
                    if (this.mExpectedEnd != null) {
                        entry2 = forward(this.mNext);
                    }
                }
                this.mNext = entry2;
            }
        }

        public /* bridge */ /* synthetic */ Object next() {
            Entry forward;
            Entry entry = this.mNext;
            if (this.mNext != this.mExpectedEnd) {
                if (this.mExpectedEnd != null) {
                    forward = forward(this.mNext);
                    this.mNext = forward;
                    return entry;
                }
            }
            forward = null;
            this.mNext = forward;
            return entry;
        }
    }

    static class AscendingIterator<K, V> extends ListIterator<K, V> {
        AscendingIterator(Entry<K, V> entry, Entry<K, V> entry2) {
            super(entry, entry2);
        }

        final Entry<K, V> forward(Entry<K, V> entry) {
            return entry.mNext;
        }

        final Entry<K, V> backward(Entry<K, V> entry) {
            return entry.mPrevious;
        }
    }

    static class DescendingIterator<K, V> extends ListIterator<K, V> {
        DescendingIterator(Entry<K, V> entry, Entry<K, V> entry2) {
            super(entry, entry2);
        }

        final Entry<K, V> forward(Entry<K, V> entry) {
            return entry.mPrevious;
        }

        final Entry<K, V> backward(Entry<K, V> entry) {
            return entry.mNext;
        }
    }

    protected Entry<K, V> get(K k) {
        Entry<K, V> entry = this.mStart;
        while (entry != null && !entry.mKey.equals(k)) {
            entry = entry.mNext;
        }
        return entry;
    }

    public V putIfAbsent(K k, V v) {
        Entry entry = get(k);
        if (entry != null) {
            return entry.mValue;
        }
        put(k, v);
        return null;
    }

    protected final Entry<K, V> put(K k, V v) {
        Entry<K, V> entry = new Entry(k, v);
        this.mSize++;
        if (this.mEnd == null) {
            this.mStart = entry;
            this.mEnd = this.mStart;
            return entry;
        }
        this.mEnd.mNext = entry;
        entry.mPrevious = this.mEnd;
        this.mEnd = entry;
        return entry;
    }

    public V remove(K k) {
        k = get(k);
        if (k == null) {
            return null;
        }
        this.mSize--;
        if (!this.mIterators.isEmpty()) {
            for (SupportRemove supportRemove : this.mIterators.keySet()) {
                supportRemove.supportRemove(k);
            }
        }
        if (k.mPrevious != null) {
            k.mPrevious.mNext = k.mNext;
        } else {
            this.mStart = k.mNext;
        }
        if (k.mNext != null) {
            k.mNext.mPrevious = k.mPrevious;
        } else {
            this.mEnd = k.mPrevious;
        }
        k.mNext = null;
        k.mPrevious = null;
        return k.mValue;
    }

    public final int size() {
        return this.mSize;
    }

    public Iterator<java.util.Map.Entry<K, V>> iterator() {
        Iterator ascendingIterator = new AscendingIterator(this.mStart, this.mEnd);
        this.mIterators.put(ascendingIterator, Boolean.FALSE);
        return ascendingIterator;
    }

    public final Iterator<java.util.Map.Entry<K, V>> descendingIterator() {
        Iterator descendingIterator = new DescendingIterator(this.mEnd, this.mStart);
        this.mIterators.put(descendingIterator, Boolean.FALSE);
        return descendingIterator;
    }

    public final IteratorWithAdditions iteratorWithAdditions() {
        IteratorWithAdditions iteratorWithAdditions = new IteratorWithAdditions();
        this.mIterators.put(iteratorWithAdditions, Boolean.FALSE);
        return iteratorWithAdditions;
    }

    public final java.util.Map.Entry<K, V> eldest() {
        return this.mStart;
    }

    public final java.util.Map.Entry<K, V> newest() {
        return this.mEnd;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SafeIterableMap)) {
            return false;
        }
        SafeIterableMap safeIterableMap = (SafeIterableMap) obj;
        if (this.mSize != safeIterableMap.mSize) {
            return false;
        }
        Iterator it = iterator();
        obj = safeIterableMap.iterator();
        while (it.hasNext() && obj.hasNext()) {
            java.util.Map.Entry entry = (java.util.Map.Entry) it.next();
            Object next = obj.next();
            if ((entry == null && next != null) || (entry != null && !entry.equals(next))) {
                return false;
            }
        }
        return !it.hasNext() && obj.hasNext() == null;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("[");
        Iterator it = iterator();
        while (it.hasNext()) {
            stringBuilder.append(((java.util.Map.Entry) it.next()).toString());
            if (it.hasNext()) {
                stringBuilder.append(", ");
            }
        }
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
