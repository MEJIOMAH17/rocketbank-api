package kotlin.properties;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;

/* compiled from: Interfaces.kt */
public abstract class ReadWriteProperty<T> {
    private T value;

    protected void afterChange(KProperty<?> kProperty, T t, T t2) {
        Intrinsics.checkParameterIsNotNull(kProperty, "property");
    }

    protected boolean beforeChange(KProperty<?> kProperty, T t, T t2) {
        Intrinsics.checkParameterIsNotNull(kProperty, "property");
        return true;
    }

    public T getValue(Object obj, KProperty<?> kProperty) {
        Intrinsics.checkParameterIsNotNull(kProperty, "property");
        return this.value;
    }

    public void setValue(Object obj, KProperty<?> kProperty, T t) {
        Intrinsics.checkParameterIsNotNull(kProperty, "property");
        obj = this.value;
        if (beforeChange(kProperty, obj, t)) {
            this.value = t;
            afterChange(kProperty, obj, t);
        }
    }

    public ReadWriteProperty(T t) {
        this.value = t;
    }
}
