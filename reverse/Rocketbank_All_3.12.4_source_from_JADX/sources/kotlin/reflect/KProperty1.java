package kotlin.reflect;

import kotlin.jvm.functions.Function1;

/* compiled from: KProperty.kt */
public interface KProperty1<T, R> extends Function1<T, R>, KProperty<R> {

    /* compiled from: KProperty.kt */
    public interface Getter<T, R> extends Function1<T, R>, kotlin.reflect.KProperty.Getter<R> {
    }

    R get(T t);

    Object getDelegate(T t);

    Getter<T, R> getGetter();
}
