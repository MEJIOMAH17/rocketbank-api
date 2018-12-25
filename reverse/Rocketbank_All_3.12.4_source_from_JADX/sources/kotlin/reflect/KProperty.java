package kotlin.reflect;

/* compiled from: KProperty.kt */
public interface KProperty<R> extends KCallable<R> {

    /* compiled from: KProperty.kt */
    public interface Getter<R> extends KFunction<R> {
    }

    boolean isConst();

    boolean isLateinit();
}
