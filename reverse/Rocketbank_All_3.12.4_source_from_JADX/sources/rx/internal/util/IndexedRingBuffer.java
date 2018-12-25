package rx.internal.util;

import java.io.PrintStream;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import rx.Subscription;
import rx.functions.Func1;

public final class IndexedRingBuffer<E> implements Subscription {
    private static final ObjectPool<IndexedRingBuffer<?>> POOL = new C19611();
    static final int SIZE;
    private final ElementSection<E> elements = new ElementSection();
    final AtomicInteger index = new AtomicInteger();
    private final IndexSection removed = new IndexSection();
    final AtomicInteger removedIndex = new AtomicInteger();

    static final class ElementSection<E> {
        final AtomicReferenceArray<E> array = new AtomicReferenceArray(IndexedRingBuffer.SIZE);
        final AtomicReference<ElementSection<E>> next = new AtomicReference();

        ElementSection() {
        }

        final ElementSection<E> getNext() {
            if (this.next.get() != null) {
                return (ElementSection) this.next.get();
            }
            ElementSection<E> elementSection = new ElementSection();
            if (this.next.compareAndSet(null, elementSection)) {
                return elementSection;
            }
            return (ElementSection) this.next.get();
        }
    }

    static class IndexSection {
        private final AtomicReference<IndexSection> _next = new AtomicReference();
        private final AtomicIntegerArray unsafeArray = new AtomicIntegerArray(IndexedRingBuffer.SIZE);

        IndexSection() {
        }

        public int getAndSet(int i, int i2) {
            return this.unsafeArray.getAndSet(i, i2);
        }

        public void set(int i, int i2) {
            this.unsafeArray.set(i, i2);
        }

        IndexSection getNext() {
            if (this._next.get() != null) {
                return (IndexSection) this._next.get();
            }
            IndexSection indexSection = new IndexSection();
            if (this._next.compareAndSet(null, indexSection)) {
                return indexSection;
            }
            return (IndexSection) this._next.get();
        }
    }

    /* renamed from: rx.internal.util.IndexedRingBuffer$1 */
    static class C19611 extends ObjectPool<IndexedRingBuffer<?>> {
        C19611() {
        }

        protected final IndexedRingBuffer<?> createObject() {
            return new IndexedRingBuffer();
        }
    }

    public final boolean isUnsubscribed() {
        return false;
    }

    static {
        int i = PlatformDependent.isAndroid() ? 8 : 128;
        String property = System.getProperty("rx.indexed-ring-buffer.size");
        if (property != null) {
            try {
                i = Integer.parseInt(property);
            } catch (NumberFormatException e) {
                PrintStream printStream = System.err;
                StringBuilder stringBuilder = new StringBuilder("Failed to set 'rx.indexed-ring-buffer.size' with value ");
                stringBuilder.append(property);
                stringBuilder.append(" => ");
                stringBuilder.append(e.getMessage());
                printStream.println(stringBuilder.toString());
            }
        }
        SIZE = i;
    }

    public static <T> IndexedRingBuffer<T> getInstance() {
        return (IndexedRingBuffer) POOL.borrowObject();
    }

    public final void releaseToPool() {
        int i = this.index.get();
        ElementSection elementSection = this.elements;
        int i2 = 0;
        loop0:
        while (elementSection != null) {
            int i3 = i2;
            i2 = 0;
            while (i2 < SIZE) {
                if (i3 >= i) {
                    break loop0;
                }
                elementSection.array.set(i2, null);
                i2++;
                i3++;
            }
            elementSection = (ElementSection) elementSection.next.get();
            i2 = i3;
        }
        this.index.set(0);
        this.removedIndex.set(0);
        POOL.returnObject(this);
    }

    public final void unsubscribe() {
        releaseToPool();
    }

    IndexedRingBuffer() {
    }

    public final int add(E e) {
        int indexForAdd = getIndexForAdd();
        if (indexForAdd < SIZE) {
            this.elements.array.set(indexForAdd, e);
            return indexForAdd;
        }
        getElementSection(indexForAdd).array.set(indexForAdd % SIZE, e);
        return indexForAdd;
    }

    public final E remove(int i) {
        E andSet;
        if (i < SIZE) {
            andSet = this.elements.array.getAndSet(i, null);
        } else {
            andSet = getElementSection(i).array.getAndSet(i % SIZE, null);
        }
        pushRemovedIndex(i);
        return andSet;
    }

    private IndexSection getIndexSection(int i) {
        if (i < SIZE) {
            return this.removed;
        }
        i /= SIZE;
        IndexSection indexSection = this.removed;
        for (int i2 = 0; i2 < i; i2++) {
            indexSection = indexSection.getNext();
        }
        return indexSection;
    }

    private ElementSection<E> getElementSection(int i) {
        if (i < SIZE) {
            return this.elements;
        }
        i /= SIZE;
        ElementSection<E> elementSection = this.elements;
        for (int i2 = 0; i2 < i; i2++) {
            elementSection = elementSection.getNext();
        }
        return elementSection;
    }

    private synchronized int getIndexForAdd() {
        int indexFromPreviouslyRemoved;
        indexFromPreviouslyRemoved = getIndexFromPreviouslyRemoved();
        if (indexFromPreviouslyRemoved >= 0) {
            if (indexFromPreviouslyRemoved < SIZE) {
                indexFromPreviouslyRemoved = this.removed.getAndSet(indexFromPreviouslyRemoved, -1);
            } else {
                indexFromPreviouslyRemoved = getIndexSection(indexFromPreviouslyRemoved).getAndSet(indexFromPreviouslyRemoved % SIZE, -1);
            }
            if (indexFromPreviouslyRemoved == this.index.get()) {
                this.index.getAndIncrement();
            }
        } else {
            indexFromPreviouslyRemoved = this.index.getAndIncrement();
        }
        return indexFromPreviouslyRemoved;
    }

    private synchronized int getIndexFromPreviouslyRemoved() {
        int i;
        int i2;
        do {
            i2 = this.removedIndex.get();
            if (i2 <= 0) {
                return -1;
            }
            i = i2 - 1;
        } while (!this.removedIndex.compareAndSet(i2, i));
        return i;
    }

    private synchronized void pushRemovedIndex(int i) {
        int andIncrement = this.removedIndex.getAndIncrement();
        if (andIncrement < SIZE) {
            this.removed.set(andIncrement, i);
            return;
        }
        getIndexSection(andIncrement).set(andIncrement % SIZE, i);
    }

    public final int forEach(Func1<? super E, Boolean> func1) {
        return forEach(func1, 0);
    }

    public final int forEach(Func1<? super E, Boolean> func1, int i) {
        int forEach = forEach(func1, i, this.index.get());
        if (i <= 0 || forEach != this.index.get()) {
            return forEach == this.index.get() ? 0 : forEach;
        } else {
            return forEach(func1, 0, i);
        }
    }

    private int forEach(Func1<? super E, Boolean> func1, int i, int i2) {
        int i3;
        int i4 = this.index.get();
        ElementSection elementSection = this.elements;
        if (i >= SIZE) {
            elementSection = getElementSection(i);
            i3 = i;
            i %= SIZE;
        } else {
            i3 = i;
        }
        loop0:
        while (elementSection != null) {
            while (i < SIZE) {
                if (i3 >= i4 || i3 >= i2) {
                    break loop0;
                }
                Object obj = elementSection.array.get(i);
                if (obj != null && !((Boolean) func1.call(obj)).booleanValue()) {
                    return i3;
                }
                i++;
                i3++;
            }
            elementSection = (ElementSection) elementSection.next.get();
            i = 0;
        }
        return i3;
    }
}
