package kotlin.coroutines.experimental;

import kotlin.coroutines.experimental.CoroutineContext.Element;
import kotlin.coroutines.experimental.CoroutineContext.Key;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CoroutineContextImpl.kt */
public final class CombinedContext implements CoroutineContext {
    private final Element element;
    private final CoroutineContext left;

    public CombinedContext(CoroutineContext coroutineContext, Element element) {
        Intrinsics.checkParameterIsNotNull(coroutineContext, "left");
        Intrinsics.checkParameterIsNotNull(element, "element");
        this.left = coroutineContext;
        this.element = element;
    }

    public final <E extends Element> E get(Key<E> key) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        CombinedContext combinedContext = this;
        while (true) {
            E e = combinedContext.element.get(key);
            if (e != null) {
                return e;
            }
            CoroutineContext coroutineContext = combinedContext.left;
            if (!(coroutineContext instanceof CombinedContext)) {
                return coroutineContext.get(key);
            }
            combinedContext = (CombinedContext) coroutineContext;
        }
    }

    public final <R> R fold(R r, Function2<? super R, ? super Element, ? extends R> function2) {
        Intrinsics.checkParameterIsNotNull(function2, "operation");
        return function2.invoke(this.left.fold(r, function2), this.element);
    }

    public final CoroutineContext minusKey(Key<?> key) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        if (this.element.get(key) != null) {
            return this.left;
        }
        key = this.left.minusKey(key);
        if (key == this.left) {
            return this;
        }
        if (key == EmptyCoroutineContext.INSTANCE) {
            return (CoroutineContext) this.element;
        }
        return new CombinedContext(key, this.element);
    }

    private final int size() {
        return this.left instanceof CombinedContext ? ((CombinedContext) this.left).size() + 1 : 2;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean equals(java.lang.Object r7) {
        /*
        r6 = this;
        r0 = r6;
        r0 = (kotlin.coroutines.experimental.CombinedContext) r0;
        r1 = 1;
        if (r0 == r7) goto L_0x00c8;
    L_0x0006:
        r0 = r7 instanceof kotlin.coroutines.experimental.CombinedContext;
        r2 = 0;
        if (r0 == 0) goto L_0x00c7;
    L_0x000b:
        r7 = (kotlin.coroutines.experimental.CombinedContext) r7;
        r0 = r7.left;
        r0 = r0 instanceof kotlin.coroutines.experimental.CombinedContext;
        r3 = 2;
        if (r0 == 0) goto L_0x0052;
    L_0x0014:
        r0 = r7.left;
        r0 = (kotlin.coroutines.experimental.CombinedContext) r0;
        r4 = r0.left;
        r4 = r4 instanceof kotlin.coroutines.experimental.CombinedContext;
        if (r4 == 0) goto L_0x004f;
    L_0x001e:
        r0 = r0.left;
        r0 = (kotlin.coroutines.experimental.CombinedContext) r0;
        r4 = r0.left;
        r4 = r4 instanceof kotlin.coroutines.experimental.CombinedContext;
        if (r4 == 0) goto L_0x004c;
    L_0x0028:
        r0 = r0.left;
        r0 = (kotlin.coroutines.experimental.CombinedContext) r0;
        r4 = r0.left;
        r4 = r4 instanceof kotlin.coroutines.experimental.CombinedContext;
        if (r4 == 0) goto L_0x0049;
    L_0x0032:
        r0 = r0.left;
        r0 = (kotlin.coroutines.experimental.CombinedContext) r0;
        r4 = r0.left;
        r4 = r4 instanceof kotlin.coroutines.experimental.CombinedContext;
        if (r4 == 0) goto L_0x0046;
    L_0x003c:
        r0 = r0.left;
        r0 = (kotlin.coroutines.experimental.CombinedContext) r0;
        r0 = r0.size();
        r0 = r0 + r1;
        goto L_0x0047;
    L_0x0046:
        r0 = r3;
    L_0x0047:
        r0 = r0 + r1;
        goto L_0x004a;
    L_0x0049:
        r0 = r3;
    L_0x004a:
        r0 = r0 + r1;
        goto L_0x004d;
    L_0x004c:
        r0 = r3;
    L_0x004d:
        r0 = r0 + r1;
        goto L_0x0050;
    L_0x004f:
        r0 = r3;
    L_0x0050:
        r0 = r0 + r1;
        goto L_0x0053;
    L_0x0052:
        r0 = r3;
    L_0x0053:
        r4 = r6.left;
        r4 = r4 instanceof kotlin.coroutines.experimental.CombinedContext;
        if (r4 == 0) goto L_0x008e;
    L_0x0059:
        r4 = r6.left;
        r4 = (kotlin.coroutines.experimental.CombinedContext) r4;
        r5 = r4.left;
        r5 = r5 instanceof kotlin.coroutines.experimental.CombinedContext;
        if (r5 == 0) goto L_0x008d;
    L_0x0063:
        r4 = r4.left;
        r4 = (kotlin.coroutines.experimental.CombinedContext) r4;
        r5 = r4.left;
        r5 = r5 instanceof kotlin.coroutines.experimental.CombinedContext;
        if (r5 == 0) goto L_0x008c;
    L_0x006d:
        r4 = r4.left;
        r4 = (kotlin.coroutines.experimental.CombinedContext) r4;
        r5 = r4.left;
        r5 = r5 instanceof kotlin.coroutines.experimental.CombinedContext;
        if (r5 == 0) goto L_0x008b;
    L_0x0077:
        r4 = r4.left;
        r4 = (kotlin.coroutines.experimental.CombinedContext) r4;
        r5 = r4.left;
        r5 = r5 instanceof kotlin.coroutines.experimental.CombinedContext;
        if (r5 == 0) goto L_0x008a;
    L_0x0081:
        r3 = r4.left;
        r3 = (kotlin.coroutines.experimental.CombinedContext) r3;
        r3 = r3.size();
        r3 = r3 + r1;
    L_0x008a:
        r3 = r3 + r1;
    L_0x008b:
        r3 = r3 + r1;
    L_0x008c:
        r3 = r3 + r1;
    L_0x008d:
        r3 = r3 + r1;
    L_0x008e:
        if (r0 != r3) goto L_0x00c7;
    L_0x0090:
        r0 = r6;
    L_0x0091:
        r3 = r0.element;
        r4 = r3.getKey();
        r4 = r7.get(r4);
        r3 = kotlin.jvm.internal.Intrinsics.areEqual(r4, r3);
        if (r3 != 0) goto L_0x00a3;
    L_0x00a1:
        r7 = r2;
        goto L_0x00c4;
    L_0x00a3:
        r0 = r0.left;
        r3 = r0 instanceof kotlin.coroutines.experimental.CombinedContext;
        if (r3 == 0) goto L_0x00ac;
    L_0x00a9:
        r0 = (kotlin.coroutines.experimental.CombinedContext) r0;
        goto L_0x0091;
    L_0x00ac:
        if (r0 != 0) goto L_0x00b6;
    L_0x00ae:
        r7 = new kotlin.TypeCastException;
        r0 = "null cannot be cast to non-null type kotlin.coroutines.experimental.CoroutineContext.Element";
        r7.<init>(r0);
        throw r7;
    L_0x00b6:
        r0 = (kotlin.coroutines.experimental.CoroutineContext.Element) r0;
        r3 = r0.getKey();
        r7 = r7.get(r3);
        r7 = kotlin.jvm.internal.Intrinsics.areEqual(r7, r0);
    L_0x00c4:
        if (r7 == 0) goto L_0x00c7;
    L_0x00c6:
        goto L_0x00c8;
    L_0x00c7:
        return r2;
    L_0x00c8:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.coroutines.experimental.CombinedContext.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        return this.left.hashCode() + this.element.hashCode();
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("[");
        Function2 function2 = CombinedContext$toString$1.INSTANCE;
        Intrinsics.checkParameterIsNotNull(function2, "operation");
        stringBuilder.append((String) function2.invoke(this.left.fold("", function2), this.element));
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
