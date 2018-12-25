package kotlin.collections;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: IndexedValue.kt */
public final class IndexedValue<T> {
    private final int index;
    private final T value;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof IndexedValue) {
            IndexedValue indexedValue = (IndexedValue) obj;
            return (this.index == indexedValue.index) && Intrinsics.areEqual(this.value, indexedValue.value);
        }
    }

    public final int hashCode() {
        int i = this.index * 31;
        Object obj = this.value;
        return i + (obj != null ? obj.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("IndexedValue(index=");
        stringBuilder.append(this.index);
        stringBuilder.append(", value=");
        stringBuilder.append(this.value);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public IndexedValue(int i, T t) {
        this.index = i;
        this.value = t;
    }

    public final int getIndex() {
        return this.index;
    }

    public final T getValue() {
        return this.value;
    }
}
