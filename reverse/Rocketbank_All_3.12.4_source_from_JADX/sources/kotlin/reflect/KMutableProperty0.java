package kotlin.reflect;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: KProperty.kt */
public interface KMutableProperty0<R> extends KMutableProperty<R>, KProperty0<R> {

    /* compiled from: KProperty.kt */
    public interface Setter<R> extends Function1<R, Unit>, kotlin.reflect.KMutableProperty.Setter<R> {
    }

    Setter<R> getSetter();
}
