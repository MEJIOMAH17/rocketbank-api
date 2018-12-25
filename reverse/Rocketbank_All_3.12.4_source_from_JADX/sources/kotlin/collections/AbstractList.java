package kotlin.collections;

import com.facebook.internal.FacebookRequestErrorClassification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import java.util.Set;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: AbstractList.kt */
public abstract class AbstractList<E> extends AbstractCollection<E> implements List<E>, KMappedMarker {
    public static final Companion Companion = new Companion();

    /* compiled from: AbstractList.kt */
    public static final class Companion {
        private Companion() {
        }

        public static void checkElementIndex$kotlin_stdlib(int i, int i2) {
            if (i >= 0) {
                if (i < i2) {
                    return;
                }
            }
            StringBuilder stringBuilder = new StringBuilder("index: ");
            stringBuilder.append(i);
            stringBuilder.append(", size: ");
            stringBuilder.append(i2);
            throw new IndexOutOfBoundsException(stringBuilder.toString());
        }

        public static <K, V> V getOrImplicitDefaultNullable(Map<K, ? extends V> map, K k) {
            Intrinsics.checkParameterIsNotNull(map, "$receiver");
            if (map instanceof MapWithDefault) {
                return ((MapWithDefault) map).getOrImplicitDefault(k);
            }
            V v = map.get(k);
            if (v != null || map.containsKey(k) != null) {
                return v;
            }
            StringBuilder stringBuilder = new StringBuilder("Key ");
            stringBuilder.append(k);
            stringBuilder.append(" is missing in the map.");
            throw ((Throwable) new NoSuchElementException(stringBuilder.toString()));
        }

        public static <K, V> Map<K, V> withDefaultMutable(Map<K, V> map, Function1<? super K, ? extends V> function1) {
            while (true) {
                Intrinsics.checkParameterIsNotNull(map, "$receiver");
                Intrinsics.checkParameterIsNotNull(function1, "defaultValue");
                if (!(map instanceof MutableMapWithDefault)) {
                    return new MutableMapWithDefaultImpl(map, function1);
                }
                map = ((MutableMapWithDefault) map).getMap();
            }
        }

        public static <T> Set<T> setOf(T... tArr) {
            Intrinsics.checkParameterIsNotNull(tArr, "elements");
            if (tArr.length <= 0) {
                return (Set) EmptySet.INSTANCE;
            }
            Intrinsics.checkParameterIsNotNull(tArr, "$receiver");
            switch (tArr.length) {
                case 0:
                    return (Set) EmptySet.INSTANCE;
                case 1:
                    tArr = Collections.singleton(tArr[0]);
                    Intrinsics.checkExpressionValueIsNotNull(tArr, "java.util.Collections.singleton(element)");
                    return tArr;
                default:
                    int length = tArr.length;
                    length = length < 3 ? length + 1 : length < 1073741824 ? length + (length / 3) : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                    return (Set) ArraysKt___ArraysKt.toCollection(tArr, new LinkedHashSet(length));
            }
        }

        public static <T> LinkedHashSet<T> linkedSetOf(T... tArr) {
            Intrinsics.checkParameterIsNotNull(tArr, "elements");
            int length = tArr.length;
            length = length < 3 ? length + 1 : length < 1073741824 ? length + (length / 3) : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            return (LinkedHashSet) ArraysKt___ArraysKt.toCollection(tArr, new LinkedHashSet(length));
        }

        public static <K, V> Map<K, V> emptyMap() {
            EmptyMap emptyMap = EmptyMap.INSTANCE;
            if (emptyMap != null) {
                return emptyMap;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.Map<K, V>");
        }

        public static <K, V> Map<K, V> mapOf(Pair<? extends K, ? extends V>... pairArr) {
            Intrinsics.checkParameterIsNotNull(pairArr, "pairs");
            if (pairArr.length > 0) {
                int length = pairArr.length;
                length = length < 3 ? length + 1 : length < 1073741824 ? length + (length / 3) : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                Map linkedHashMap = new LinkedHashMap(length);
                Intrinsics.checkParameterIsNotNull(pairArr, "$receiver");
                Intrinsics.checkParameterIsNotNull(linkedHashMap, "destination");
                putAll(linkedHashMap, (Pair[]) pairArr);
                return linkedHashMap;
            }
            pairArr = EmptyMap.INSTANCE;
            if (pairArr != null) {
                return (Map) pairArr;
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.Map<K, V>");
        }

        public static <K, V> void putAll(Map<? super K, ? super V> map, Pair<? extends K, ? extends V>[] pairArr) {
            Intrinsics.checkParameterIsNotNull(map, "$receiver");
            Intrinsics.checkParameterIsNotNull(pairArr, "pairs");
            for (Pair pair : pairArr) {
                map.put(pair.component1(), pair.component2());
            }
        }

        private static <K, V> void putAll(Map<? super K, ? super V> map, Iterable<? extends Pair<? extends K, ? extends V>> iterable) {
            Intrinsics.checkParameterIsNotNull(map, "$receiver");
            Intrinsics.checkParameterIsNotNull(iterable, "pairs");
            for (Pair pair : iterable) {
                map.put(pair.component1(), pair.component2());
            }
        }

        public static <K, V> Map<K, V> toMap(Iterable<? extends Pair<? extends K, ? extends V>> iterable) {
            Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
            Collection collection = (Collection) iterable;
            switch (collection.size()) {
                case 0:
                    iterable = EmptyMap.INSTANCE;
                    if (iterable != null) {
                        return (Map) iterable;
                    }
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.Map<K, V>");
                case 1:
                    Pair pair = (Pair) ((List) iterable).get(0);
                    Intrinsics.checkParameterIsNotNull(pair, "pair");
                    iterable = Collections.singletonMap(pair.getFirst(), pair.getSecond());
                    Intrinsics.checkExpressionValueIsNotNull(iterable, "java.util.Collections.si…(pair.first, pair.second)");
                    return iterable;
                default:
                    int size = collection.size();
                    size = size < 3 ? size + 1 : size < 1073741824 ? size + (size / 3) : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                    return toMap(iterable, new LinkedHashMap(size));
            }
        }

        public static <K, V, M extends Map<? super K, ? super V>> M toMap(Iterable<? extends Pair<? extends K, ? extends V>> iterable, M m) {
            Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
            Intrinsics.checkParameterIsNotNull(m, "destination");
            putAll((Map) m, (Iterable) iterable);
            return m;
        }

        public static <K, V> Map<K, V> toMap(Map<? extends K, ? extends V> map) {
            Intrinsics.checkParameterIsNotNull(map, "$receiver");
            switch (map.size()) {
                case 0:
                    map = EmptyMap.INSTANCE;
                    if (map != null) {
                        return map;
                    }
                    throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.Map<K, V>");
                case 1:
                    Intrinsics.checkParameterIsNotNull(map, "$receiver");
                    Entry entry = (Entry) map.entrySet().iterator().next();
                    map = Collections.singletonMap(entry.getKey(), entry.getValue());
                    Intrinsics.checkExpressionValueIsNotNull(map, "java.util.Collections.singletonMap(key, value)");
                    Intrinsics.checkExpressionValueIsNotNull(map, "with (entries.iterator()…ingletonMap(key, value) }");
                    return map;
                default:
                    Intrinsics.checkParameterIsNotNull(map, "$receiver");
                    return new LinkedHashMap(map);
            }
        }

        public static <K, V> List<Pair<K, V>> toList(Map<? extends K, ? extends V> map) {
            Intrinsics.checkParameterIsNotNull(map, "$receiver");
            if (map.size() == 0) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            Iterator it = map.entrySet().iterator();
            if (!it.hasNext()) {
                return CollectionsKt__CollectionsKt.emptyList();
            }
            Entry entry = (Entry) it.next();
            if (!it.hasNext()) {
                return CollectionsKt__CollectionsKt.listOf((Object) new Pair(entry.getKey(), entry.getValue()));
            }
            ArrayList arrayList = new ArrayList(map.size());
            arrayList.add(new Pair(entry.getKey(), entry.getValue()));
            do {
                Entry entry2 = (Entry) it.next();
                arrayList.add(new Pair(entry2.getKey(), entry2.getValue()));
            } while (it.hasNext() != null);
            return arrayList;
        }
    }

    /* compiled from: AbstractList.kt */
    class IteratorImpl implements Iterator<E>, KMappedMarker {
        private int index;

        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        protected final int getIndex() {
            return this.index;
        }

        protected final void setIndex(int i) {
            this.index = i;
        }

        public boolean hasNext() {
            return this.index < AbstractList.this.size();
        }

        public E next() {
            if (hasNext()) {
                AbstractList abstractList = AbstractList.this;
                int i = this.index;
                this.index = i + 1;
                return abstractList.get(i);
            }
            throw new NoSuchElementException();
        }
    }

    /* compiled from: AbstractList.kt */
    class ListIteratorImpl extends IteratorImpl implements ListIterator<E>, KMappedMarker {
        public final void add(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final void set(E e) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public ListIteratorImpl(int i) {
            super();
            Companion companion = AbstractList.Companion;
            AbstractList size = AbstractList.this.size();
            if (i >= 0) {
                if (i <= size) {
                    setIndex(i);
                    return;
                }
            }
            StringBuilder stringBuilder = new StringBuilder("index: ");
            stringBuilder.append(i);
            stringBuilder.append(", size: ");
            stringBuilder.append(size);
            throw new IndexOutOfBoundsException(stringBuilder.toString());
        }

        public final boolean hasPrevious() {
            return getIndex() > 0;
        }

        public final int nextIndex() {
            return getIndex();
        }

        public final E previous() {
            if (hasPrevious()) {
                AbstractList abstractList = AbstractList.this;
                setIndex(getIndex() - 1);
                return abstractList.get(getIndex());
            }
            throw new NoSuchElementException();
        }

        public final int previousIndex() {
            return getIndex() - 1;
        }
    }

    /* compiled from: AbstractList.kt */
    static final class SubList<E> extends AbstractList<E> implements RandomAccess {
        private int _size;
        private final int fromIndex;
        private final AbstractList<E> list;

        public SubList(AbstractList<? extends E> abstractList, int i, int i2) {
            Intrinsics.checkParameterIsNotNull(abstractList, "list");
            this.list = abstractList;
            this.fromIndex = i;
            abstractList = this.fromIndex;
            i = this.list.size();
            if (abstractList >= null) {
                if (i2 <= i) {
                    if (abstractList > i2) {
                        StringBuilder stringBuilder = new StringBuilder("fromIndex: ");
                        stringBuilder.append(abstractList);
                        stringBuilder.append(" > toIndex: ");
                        stringBuilder.append(i2);
                        throw ((Throwable) new IllegalArgumentException(stringBuilder.toString()));
                    }
                    this._size = i2 - this.fromIndex;
                    return;
                }
            }
            StringBuilder stringBuilder2 = new StringBuilder("fromIndex: ");
            stringBuilder2.append(abstractList);
            stringBuilder2.append(", toIndex: ");
            stringBuilder2.append(i2);
            stringBuilder2.append(", size: ");
            stringBuilder2.append(i);
            throw new IndexOutOfBoundsException(stringBuilder2.toString());
        }

        public final E get(int i) {
            Companion.checkElementIndex$kotlin_stdlib(i, this._size);
            return this.list.get(this.fromIndex + i);
        }

        public final int getSize() {
            return this._size;
        }
    }

    public void add(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public abstract E get(int i);

    public abstract int getSize();

    public E remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public E set(int i, E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    protected AbstractList() {
    }

    public Iterator<E> iterator() {
        return new IteratorImpl();
    }

    public ListIterator<E> listIterator() {
        return new ListIteratorImpl(0);
    }

    public ListIterator<E> listIterator(int i) {
        return new ListIteratorImpl(i);
    }

    public List<E> subList(int i, int i2) {
        return new SubList(this, i, i2);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        Collection<Object> collection = this;
        Collection collection2 = (Collection) obj;
        Intrinsics.checkParameterIsNotNull(collection, "c");
        Intrinsics.checkParameterIsNotNull(collection2, FacebookRequestErrorClassification.KEY_OTHER);
        if (size() != collection2.size()) {
            return false;
        }
        obj = collection2.iterator();
        for (Object areEqual : collection) {
            if ((Intrinsics.areEqual(areEqual, obj.next()) ^ 1) != 0) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        Collection collection = this;
        Intrinsics.checkParameterIsNotNull(collection, "c");
        int i = 1;
        for (Object next : collection) {
            i = (i * 31) + (next != null ? next.hashCode() : 0);
        }
        return i;
    }

    public int indexOf(Object obj) {
        int i = 0;
        for (Object areEqual : this) {
            if (Intrinsics.areEqual(areEqual, obj)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public int lastIndexOf(Object obj) {
        ListIterator listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (Intrinsics.areEqual(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }
}
