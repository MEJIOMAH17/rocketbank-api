package kotlin.reflect;

/* compiled from: KFunction.kt */
public interface KFunction<R> extends KCallable<R> {
    boolean isExternal();

    boolean isInfix();

    boolean isInline();

    boolean isOperator();

    boolean isSuspend();
}
