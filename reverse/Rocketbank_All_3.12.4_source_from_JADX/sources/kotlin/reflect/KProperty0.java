package kotlin.reflect;

import kotlin.jvm.functions.Function0;

/* compiled from: KProperty.kt */
public interface KProperty0<R> extends Function0<R>, KProperty<R> {

    /* compiled from: KProperty.kt */
    public interface Getter<R> extends Function0<R>, kotlin.reflect.KProperty.Getter<R> {
    }

    R get();

    Object getDelegate();

    Getter<R> getGetter();
}
