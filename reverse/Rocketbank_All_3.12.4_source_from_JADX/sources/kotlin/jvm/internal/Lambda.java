package kotlin.jvm.internal;

/* compiled from: Lambda.kt */
public abstract class Lambda implements FunctionBase {
    private final int arity;

    public Lambda(int i) {
        this.arity = i;
    }

    public int getArity() {
        return this.arity;
    }

    public String toString() {
        return Reflection.renderLambdaToString(this);
    }
}
