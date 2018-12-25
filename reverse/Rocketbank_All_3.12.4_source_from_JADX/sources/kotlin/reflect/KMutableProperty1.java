package kotlin.reflect;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: KProperty.kt */
public interface KMutableProperty1<T, R> extends KMutableProperty<R>, KProperty1<T, R> {

    /* compiled from: KProperty.kt */
    public interface Setter<T, R> extends Function2<T, R, Unit>, kotlin.reflect.KMutableProperty.Setter<R> {
    }

    Setter<T, R> getSetter();
}
