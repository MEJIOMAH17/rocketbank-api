package kotlin.collections;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;

/* compiled from: _Collections.kt */
class CollectionsKt___CollectionsKt extends CollectionsKt__ReversedViewsKt {
    public static final <T> boolean contains(Iterable<? extends T> iterable, T t) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).contains(t);
        }
        return indexOf(iterable, t) >= null ? true : null;
    }

    public static final <T> T elementAt(Iterable<? extends T> iterable, int i) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        boolean z = iterable instanceof List;
        if (z) {
            return ((List) iterable).get(i);
        }
        Function1 collectionsKt___CollectionsKt$elementAt$1 = new CollectionsKt___CollectionsKt$elementAt$1(i);
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Intrinsics.checkParameterIsNotNull(collectionsKt___CollectionsKt$elementAt$1, "defaultValue");
        if (z) {
            List list = (List) iterable;
            if (i >= 0) {
                Intrinsics.checkParameterIsNotNull(list, "$receiver");
                if (i <= list.size() - 1) {
                    return list.get(i);
                }
            }
            return collectionsKt___CollectionsKt$elementAt$1.invoke(Integer.valueOf(i));
        }
        if (i >= 0) {
            int i2 = 0;
            for (T next : iterable) {
                int i3 = i2 + 1;
                if (i == i2) {
                    return next;
                }
                i2 = i3;
            }
        }
        return collectionsKt___CollectionsKt$elementAt$1.invoke(Integer.valueOf(i));
    }

    public static final <T> T first(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "$receiver");
        if (!list.isEmpty()) {
            return list.get(0);
        }
        throw ((Throwable) new NoSuchElementException("List is empty."));
    }

    public static final <T> int indexOf(Iterable<? extends T> iterable, T t) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        if (iterable instanceof List) {
            return ((List) iterable).indexOf(t);
        }
        int i = 0;
        for (Object areEqual : iterable) {
            if (Intrinsics.areEqual(t, areEqual)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static final <T> T last(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        if (iterable instanceof List) {
            return last((List) iterable);
        }
        iterable = iterable.iterator();
        if (iterable.hasNext()) {
            T next;
            do {
                next = iterable.next();
            } while (iterable.hasNext());
            return next;
        }
        throw ((Throwable) new NoSuchElementException("Collection is empty."));
    }

    public static final <T> T last(List<? extends T> list) {
        Intrinsics.checkParameterIsNotNull(list, "$receiver");
        if (list.isEmpty()) {
            throw ((Throwable) new NoSuchElementException("List is empty."));
        }
        Intrinsics.checkParameterIsNotNull(list, "$receiver");
        return list.get(list.size() - 1);
    }

    public static final <T> T single(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        if (iterable instanceof List) {
            List list = (List) iterable;
            Intrinsics.checkParameterIsNotNull(list, "$receiver");
            switch (list.size()) {
                case 0:
                    throw ((Throwable) new NoSuchElementException("List is empty."));
                case 1:
                    return list.get(0);
                default:
                    throw ((Throwable) new IllegalArgumentException("List has more than one element."));
            }
        }
        iterable = iterable.iterator();
        if (iterable.hasNext()) {
            T next = iterable.next();
            if (iterable.hasNext() == null) {
                return next;
            }
            throw ((Throwable) new IllegalArgumentException("Collection has more than one element."));
        }
        throw ((Throwable) new NoSuchElementException("Collection is empty."));
    }

    public static final <T> List<T> drop(Iterable<? extends T> iterable, int i) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        int i2 = 0;
        if ((i >= 0 ? 1 : 0) == 0) {
            iterable = new StringBuilder("Requested element count ");
            iterable.append(i);
            iterable.append(" is less than zero.");
            throw ((Throwable) new IllegalArgumentException(iterable.toString().toString()));
        } else if (i == 0) {
            return toList(iterable);
        } else {
            ArrayList arrayList;
            if (iterable instanceof Collection) {
                int size = ((Collection) iterable).size() - i;
                if (size <= 0) {
                    return (List) EmptyList.INSTANCE;
                }
                if (size == 1) {
                    iterable = Collections.singletonList(last((Iterable) iterable));
                    Intrinsics.checkExpressionValueIsNotNull(iterable, "java.util.Collections.singletonList(element)");
                    return iterable;
                }
                arrayList = new ArrayList(size);
                if (iterable instanceof List) {
                    if (iterable instanceof RandomAccess) {
                        List list = (List) iterable;
                        i2 = list.size();
                        while (i < i2) {
                            arrayList.add(list.get(i));
                            i++;
                        }
                    } else {
                        Iterator listIterator = ((List) iterable).listIterator(i);
                        while (listIterator.hasNext() != 0) {
                            arrayList.add(listIterator.next());
                        }
                    }
                    return arrayList;
                }
            }
            arrayList = new ArrayList();
            for (Object next : iterable) {
                int i3 = i2 + 1;
                if (i2 >= i) {
                    arrayList.add(next);
                }
                i2 = i3;
            }
            return CollectionsKt__CollectionsKt.optimizeReadOnlyList(arrayList);
        }
    }

    public static final <T> List<T> filterNotNull(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        return (List) filterNotNullTo(iterable, new ArrayList());
    }

    public static final <C extends Collection<? super T>, T> C filterNotNullTo(Iterable<? extends T> iterable, C c) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Intrinsics.checkParameterIsNotNull(c, "destination");
        for (Object next : iterable) {
            if (next != null) {
                c.add(next);
            }
        }
        return c;
    }

    public static final <T> List<T> take(Iterable<? extends T> iterable, int i) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        int i2 = 0;
        if ((i >= 0 ? 1 : 0) == 0) {
            iterable = new StringBuilder("Requested element count ");
            iterable.append(i);
            iterable.append(" is less than zero.");
            throw ((Throwable) new IllegalArgumentException(iterable.toString().toString()));
        } else if (i == 0) {
            return (List) EmptyList.INSTANCE;
        } else {
            if (iterable instanceof Collection) {
                if (i >= ((Collection) iterable).size()) {
                    return toList(iterable);
                }
                if (i == 1) {
                    Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
                    if ((iterable instanceof List) != 0) {
                        iterable = first((List) iterable);
                    } else {
                        iterable = iterable.iterator();
                        if (iterable.hasNext() == 0) {
                            throw ((Throwable) new NoSuchElementException("Collection is empty."));
                        }
                        iterable = iterable.next();
                    }
                    iterable = Collections.singletonList(iterable);
                    Intrinsics.checkExpressionValueIsNotNull(iterable, "java.util.Collections.singletonList(element)");
                    return iterable;
                }
            }
            ArrayList arrayList = new ArrayList(i);
            for (Object next : iterable) {
                int i3 = i2 + 1;
                if (i2 == i) {
                    break;
                }
                arrayList.add(next);
                i2 = i3;
            }
            return CollectionsKt__CollectionsKt.optimizeReadOnlyList(arrayList);
        }
    }

    public static final <T> List<T> reversed(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        iterable = toMutableList((Iterable) iterable);
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Collections.reverse(iterable);
        return iterable;
    }

    public static final <T extends Comparable<? super T>> List<T> sorted(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Collection collection = (Collection) iterable;
        if (collection.size() <= 1) {
            return toList(iterable);
        }
        iterable = collection.toArray(new Comparable[null]);
        if (iterable == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        } else if (iterable == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
        } else {
            Comparable[] comparableArr = (Comparable[]) iterable;
            if (comparableArr == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            }
            Object[] objArr = (Object[]) comparableArr;
            Intrinsics.checkParameterIsNotNull(objArr, "$receiver");
            if (objArr.length > 1) {
                Arrays.sort(objArr);
            }
            Intrinsics.checkParameterIsNotNull(objArr, "$receiver");
            iterable = Arrays.asList(objArr);
            Intrinsics.checkExpressionValueIsNotNull(iterable, "ArraysUtilJVM.asList(this)");
            return iterable;
        }
    }

    public static final <T> List<T> sortedWith(Iterable<? extends T> iterable, Comparator<? super T> comparator) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Intrinsics.checkParameterIsNotNull(comparator, "comparator");
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() <= 1) {
                return toList(iterable);
            }
            iterable = collection.toArray(new Object[null]);
            if (iterable == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            } else if (iterable == null) {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
            } else {
                Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
                Intrinsics.checkParameterIsNotNull(comparator, "comparator");
                if (iterable.length > 1) {
                    Arrays.sort(iterable, comparator);
                }
                Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
                iterable = Arrays.asList(iterable);
                Intrinsics.checkExpressionValueIsNotNull(iterable, "ArraysUtilJVM.asList(this)");
                return iterable;
            }
        }
        iterable = toMutableList((Iterable) iterable);
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Intrinsics.checkParameterIsNotNull(comparator, "comparator");
        if (iterable.size() > 1) {
            Collections.sort(iterable, comparator);
        }
        return iterable;
    }

    public static final byte[] toByteArray(Collection<Byte> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "$receiver");
        byte[] bArr = new byte[collection.size()];
        int i = 0;
        for (Number byteValue : collection) {
            int i2 = i + 1;
            bArr[i] = byteValue.byteValue();
            i = i2;
        }
        return bArr;
    }

    public static final <T, C extends Collection<? super T>> C toCollection(Iterable<? extends T> iterable, C c) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Intrinsics.checkParameterIsNotNull(c, "destination");
        for (Object add : iterable) {
            c.add(add);
        }
        return c;
    }

    public static final <T> HashSet<T> toHashSet(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        int size = iterable instanceof Collection ? ((Collection) iterable).size() : 12;
        size = size < 3 ? size + 1 : size < 1073741824 ? size + (size / 3) : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        return (HashSet) toCollection(iterable, new HashSet(size));
    }

    public static final <T> List<T> toList(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        if (!(iterable instanceof Collection)) {
            return CollectionsKt__CollectionsKt.optimizeReadOnlyList(toMutableList((Iterable) iterable));
        }
        Collection collection = (Collection) iterable;
        switch (collection.size()) {
            case 0:
                return (List) EmptyList.INSTANCE;
            case 1:
                iterable = Collections.singletonList(iterable instanceof List ? ((List) iterable).get(0) : iterable.iterator().next());
                Intrinsics.checkExpressionValueIsNotNull(iterable, "java.util.Collections.singletonList(element)");
                return iterable;
            default:
                Intrinsics.checkParameterIsNotNull(collection, "$receiver");
                return (List) new ArrayList(collection);
        }
    }

    public static final <T> List<T> toMutableList(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        if (!(iterable instanceof Collection)) {
            return (List) toCollection(iterable, new ArrayList());
        }
        Collection collection = (Collection) iterable;
        Intrinsics.checkParameterIsNotNull(collection, "$receiver");
        return new ArrayList(collection);
    }

    public static final <T> List<T> toMutableList(Collection<? extends T> collection) {
        Intrinsics.checkParameterIsNotNull(collection, "$receiver");
        return new ArrayList(collection);
    }

    public static final <T extends Comparable<? super T>> T min(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        iterable = iterable.iterator();
        if (!iterable.hasNext()) {
            return null;
        }
        T t = (Comparable) iterable.next();
        while (iterable.hasNext()) {
            T t2 = (Comparable) iterable.next();
            if (t.compareTo(t2) > 0) {
                t = t2;
            }
        }
        return t;
    }

    public static final <T> List<T> plus(Collection<? extends T> collection, T t) {
        Intrinsics.checkParameterIsNotNull(collection, "$receiver");
        ArrayList arrayList = new ArrayList(collection.size() + 1);
        arrayList.addAll(collection);
        arrayList.add(t);
        return arrayList;
    }

    public static final <T, A extends Appendable> A joinTo(Iterable<? extends T> iterable, A a, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function1<? super T, ? extends CharSequence> function1) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Intrinsics.checkParameterIsNotNull(a, "buffer");
        Intrinsics.checkParameterIsNotNull(charSequence, "separator");
        Intrinsics.checkParameterIsNotNull(charSequence2, "prefix");
        Intrinsics.checkParameterIsNotNull(charSequence3, "postfix");
        Intrinsics.checkParameterIsNotNull(charSequence4, "truncated");
        a.append(charSequence2);
        charSequence2 = null;
        for (Object next : iterable) {
            charSequence2++;
            if (charSequence2 > 1) {
                a.append(charSequence);
            }
            if (i >= 0 && charSequence2 > i) {
                break;
            }
            StringsKt__StringBuilderKt.appendElement(a, next, function1);
        }
        if (i >= 0 && r5 > i) {
            a.append(charSequence4);
        }
        a.append(charSequence3);
        return a;
    }

    public static /* synthetic */ String joinToString$default$1494b5c(Iterable iterable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, Function1 function1, int i2) {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = charSequence;
        if ((i2 & 2) != null) {
            charSequence2 = "";
        }
        CharSequence charSequence6 = charSequence2;
        if ((i2 & 4) != null) {
            charSequence3 = "";
        }
        CharSequence charSequence7 = charSequence3;
        if ((i2 & 8) != null) {
            i = -1;
        }
        int i3 = i;
        if ((i2 & 16) != null) {
            charSequence4 = "...";
        }
        CharSequence charSequence8 = charSequence4;
        if ((i2 & 32) != null) {
            function1 = null;
        }
        Function1 function12 = function1;
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        Intrinsics.checkParameterIsNotNull(charSequence5, "separator");
        Intrinsics.checkParameterIsNotNull(charSequence6, "prefix");
        Intrinsics.checkParameterIsNotNull(charSequence7, "postfix");
        Intrinsics.checkParameterIsNotNull(charSequence8, "truncated");
        iterable = ((StringBuilder) joinTo(iterable, (Appendable) new StringBuilder(), charSequence5, charSequence6, charSequence7, i3, charSequence8, function12)).toString();
        Intrinsics.checkExpressionValueIsNotNull(iterable, "joinTo(StringBuilder(), …ed, transform).toString()");
        return iterable;
    }

    public static final <T> Sequence<T> asSequence(Iterable<? extends T> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        return new CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1(iterable);
    }

    public static final double sumOfDouble(Iterable<Double> iterable) {
        Intrinsics.checkParameterIsNotNull(iterable, "$receiver");
        double d = 0.0d;
        for (Number doubleValue : iterable) {
            d += doubleValue.doubleValue();
        }
        return d;
    }
}
