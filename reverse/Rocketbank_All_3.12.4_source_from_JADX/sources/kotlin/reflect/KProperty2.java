package kotlin.reflect;

import kotlin.jvm.functions.Function2;

/* compiled from: KProperty.kt */
public interface KProperty2<D, E, R> extends Function2<D, E, R>, KProperty<R> {

    /* compiled from: KProperty.kt */
    public interface Getter<D, E, R> extends Function2<D, E, R>, kotlin.reflect.KProperty.Getter<R> {
    }

    R get(D d, E e);

    Object getDelegate(D d, E e);

    Getter<D, E, R> getGetter();
}
