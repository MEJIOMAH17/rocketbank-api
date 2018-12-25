package kotlin.reflect;

import kotlin.Unit;
import kotlin.jvm.functions.Function3;

/* compiled from: KProperty.kt */
public interface KMutableProperty2<D, E, R> extends KMutableProperty<R>, KProperty2<D, E, R> {

    /* compiled from: KProperty.kt */
    public interface Setter<D, E, R> extends Function3<D, E, R, Unit>, kotlin.reflect.KMutableProperty.Setter<R> {
    }

    Setter<D, E, R> getSetter();
}
