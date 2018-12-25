package kotlin.reflect;

/* compiled from: KParameter.kt */
public interface KParameter<T> extends KAnnotatedElement {

    /* compiled from: KParameter.kt */
    public enum Kind {
    }

    void onChanged(T t);
}
