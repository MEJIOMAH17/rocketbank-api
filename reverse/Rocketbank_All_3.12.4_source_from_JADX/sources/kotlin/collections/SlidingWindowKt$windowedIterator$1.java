package kotlin.collections;

import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.experimental.Continuation;
import kotlin.coroutines.experimental.jvm.internal.CoroutineImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.RocketSnackbar.Callback;

/* compiled from: SlidingWindow.kt */
final class SlidingWindowKt$windowedIterator$1 extends CoroutineImpl implements Function2<Callback<? super List<? extends T>>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Iterator $iterator;
    final /* synthetic */ boolean $partialWindows;
    final /* synthetic */ boolean $reuseBuffer;
    final /* synthetic */ int $size;
    final /* synthetic */ int $step;
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    private Callback p$$4de251aa;

    SlidingWindowKt$windowedIterator$1(int i, int i2, Iterator it, boolean z, boolean z2, Continuation continuation) {
        this.$step = i;
        this.$size = i2;
        this.$iterator = it;
        this.$reuseBuffer = z;
        this.$partialWindows = z2;
        super(2, continuation);
    }

    public final /* bridge */ /* synthetic */ Continuation create(Object obj, Continuation continuation) {
        return create$20a6c5e9((Callback) obj, continuation);
    }

    public final Continuation<Unit> create$20a6c5e9(Callback<? super List<? extends T>> callback, Continuation<? super Unit> continuation) {
        Intrinsics.checkParameterIsNotNull(callback, "$receiver");
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        Continuation slidingWindowKt$windowedIterator$1 = new SlidingWindowKt$windowedIterator$1(this.$step, this.$size, this.$iterator, this.$reuseBuffer, this.$partialWindows, continuation);
        slidingWindowKt$windowedIterator$1.p$$4de251aa = callback;
        return slidingWindowKt$windowedIterator$1;
    }

    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return invoke$1ba949ec((Callback) obj, (Continuation) obj2);
    }

    public final Object invoke$1ba949ec(Callback<? super List<? extends T>> callback, Continuation<? super Unit> continuation) {
        Intrinsics.checkParameterIsNotNull(callback, "$receiver");
        Intrinsics.checkParameterIsNotNull(continuation, "continuation");
        return ((SlidingWindowKt$windowedIterator$1) create$20a6c5e9(callback, continuation)).doResume(Unit.INSTANCE, null);
    }

    public final java.lang.Object doResume(java.lang.Object r11, java.lang.Throwable r12) {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:37)
	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:61)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:33)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r10 = this;
        r11 = kotlin.coroutines.experimental.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED();
        r0 = r10.label;
        r1 = 1;
        switch(r0) {
            case 0: goto L_0x0053;
            case 1: goto L_0x003e;
            case 2: goto L_0x003b;
            case 3: goto L_0x0026;
            case 4: goto L_0x0015;
            case 5: goto L_0x0012;
            default: goto L_0x000a;
        };
    L_0x000a:
        r11 = new java.lang.IllegalStateException;
        r12 = "call to 'resume' before 'invoke' with coroutine";
        r11.<init>(r12);
        throw r11;
    L_0x0012:
        if (r12 == 0) goto L_0x0166;
    L_0x0014:
        throw r12;
    L_0x0015:
        r0 = r10.L$1;
        r0 = (kotlin.collections.RingBuffer) r0;
        r2 = r10.I$0;
        r3 = r10.L$0;
        r3 = (ru.rocketbank.core.widgets.RocketSnackbar.Callback) r3;
        if (r12 == 0) goto L_0x0022;
    L_0x0021:
        throw r12;
    L_0x0022:
        r12 = r11;
        r11 = r10;
        goto L_0x0148;
    L_0x0026:
        r0 = r10.L$3;
        r0 = (java.util.Iterator) r0;
        r2 = r10.L$1;
        r2 = (kotlin.collections.RingBuffer) r2;
        r3 = r10.I$0;
        r4 = r10.L$0;
        r4 = (ru.rocketbank.core.widgets.RocketSnackbar.Callback) r4;
        if (r12 == 0) goto L_0x0037;
    L_0x0036:
        throw r12;
    L_0x0037:
        r12 = r11;
        r11 = r10;
        goto L_0x0117;
    L_0x003b:
        if (r12 == 0) goto L_0x0166;
    L_0x003d:
        throw r12;
    L_0x003e:
        r0 = r10.L$3;
        r0 = (java.util.Iterator) r0;
        r2 = r10.L$1;
        r2 = (java.util.ArrayList) r2;
        r3 = r10.I$0;
        r4 = r10.L$0;
        r4 = (ru.rocketbank.core.widgets.RocketSnackbar.Callback) r4;
        if (r12 == 0) goto L_0x004f;
    L_0x004e:
        throw r12;
    L_0x004f:
        r5 = r11;
        r12 = r3;
        r11 = r10;
        goto L_0x009e;
    L_0x0053:
        if (r12 == 0) goto L_0x0056;
    L_0x0055:
        throw r12;
    L_0x0056:
        r12 = r10.p$$4de251aa;
        r0 = r10.$step;
        r2 = r10.$size;
        r0 = r0 - r2;
        if (r0 < 0) goto L_0x00d5;
    L_0x005f:
        r2 = new java.util.ArrayList;
        r3 = r10.$size;
        r2.<init>(r3);
        r3 = 0;
        r4 = r10.$iterator;
        r5 = r11;
        r11 = r10;
        r9 = r4;
        r4 = r12;
        r12 = r0;
        r0 = r9;
    L_0x006f:
        r6 = r0.hasNext();
        if (r6 == 0) goto L_0x00af;
    L_0x0075:
        r6 = r0.next();
        if (r3 <= 0) goto L_0x007e;
    L_0x007b:
        r3 = r3 + -1;
        goto L_0x006f;
    L_0x007e:
        r2.add(r6);
        r7 = r2.size();
        r8 = r11.$size;
        if (r7 != r8) goto L_0x006f;
    L_0x0089:
        r11.L$0 = r4;
        r11.I$0 = r12;
        r11.L$1 = r2;
        r11.I$1 = r3;
        r11.L$2 = r6;
        r11.L$3 = r0;
        r11.label = r1;
        r3 = r4.yield$55fbe4a6();
        if (r3 != r5) goto L_0x009e;
    L_0x009d:
        return r5;
    L_0x009e:
        r3 = r11.$reuseBuffer;
        if (r3 == 0) goto L_0x00a6;
    L_0x00a2:
        r2.clear();
        goto L_0x00ad;
    L_0x00a6:
        r2 = new java.util.ArrayList;
        r3 = r11.$size;
        r2.<init>(r3);
    L_0x00ad:
        r3 = r12;
        goto L_0x006f;
    L_0x00af:
        r0 = r2;
        r0 = (java.util.Collection) r0;
        r0 = r0.isEmpty();
        r0 = r0 ^ r1;
        if (r0 == 0) goto L_0x0166;
    L_0x00b9:
        r0 = r11.$partialWindows;
        if (r0 != 0) goto L_0x00c5;
    L_0x00bd:
        r0 = r2.size();
        r1 = r11.$size;
        if (r0 != r1) goto L_0x0166;
    L_0x00c5:
        r11.I$0 = r12;
        r11.L$0 = r2;
        r11.I$1 = r3;
        r12 = 2;
        r11.label = r12;
        r11 = r4.yield$55fbe4a6();
        if (r11 != r5) goto L_0x0166;
    L_0x00d4:
        return r5;
    L_0x00d5:
        r2 = new kotlin.collections.RingBuffer;
        r3 = r10.$size;
        r2.<init>(r3);
        r3 = r10.$iterator;
        r4 = r12;
        r12 = r11;
        r11 = r10;
        r9 = r3;
        r3 = r0;
        r0 = r9;
    L_0x00e4:
        r5 = r0.hasNext();
        if (r5 == 0) goto L_0x011d;
    L_0x00ea:
        r5 = r0.next();
        r2.add(r5);
        r6 = r2.isFull();
        if (r6 == 0) goto L_0x00e4;
    L_0x00f7:
        r6 = r11.$reuseBuffer;
        if (r6 != 0) goto L_0x0103;
    L_0x00fb:
        r6 = new java.util.ArrayList;
        r7 = r2;
        r7 = (java.util.Collection) r7;
        r6.<init>(r7);
    L_0x0103:
        r11.L$0 = r4;
        r11.I$0 = r3;
        r11.L$1 = r2;
        r11.L$2 = r5;
        r11.L$3 = r0;
        r5 = 3;
        r11.label = r5;
        r5 = r4.yield$55fbe4a6();
        if (r5 != r12) goto L_0x0117;
    L_0x0116:
        return r12;
    L_0x0117:
        r5 = r11.$step;
        r2.removeFirst(r5);
        goto L_0x00e4;
    L_0x011d:
        r0 = r11.$partialWindows;
        if (r0 == 0) goto L_0x0166;
    L_0x0121:
        r0 = r2;
        r2 = r3;
        r3 = r4;
    L_0x0124:
        r4 = r0.size();
        r5 = r11.$step;
        if (r4 <= r5) goto L_0x014e;
    L_0x012c:
        r4 = r11.$reuseBuffer;
        if (r4 != 0) goto L_0x0138;
    L_0x0130:
        r4 = new java.util.ArrayList;
        r5 = r0;
        r5 = (java.util.Collection) r5;
        r4.<init>(r5);
    L_0x0138:
        r11.L$0 = r3;
        r11.I$0 = r2;
        r11.L$1 = r0;
        r4 = 4;
        r11.label = r4;
        r4 = r3.yield$55fbe4a6();
        if (r4 != r12) goto L_0x0148;
    L_0x0147:
        return r12;
    L_0x0148:
        r4 = r11.$step;
        r0.removeFirst(r4);
        goto L_0x0124;
    L_0x014e:
        r4 = r0;
        r4 = (java.util.Collection) r4;
        r4 = r4.isEmpty();
        r1 = r1 ^ r4;
        if (r1 == 0) goto L_0x0166;
    L_0x0158:
        r11.I$0 = r2;
        r11.L$0 = r0;
        r0 = 5;
        r11.label = r0;
        r11 = r3.yield$55fbe4a6();
        if (r11 != r12) goto L_0x0166;
    L_0x0165:
        return r12;
    L_0x0166:
        r11 = kotlin.Unit.INSTANCE;
        return r11;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.collections.SlidingWindowKt$windowedIterator$1.doResume(java.lang.Object, java.lang.Throwable):java.lang.Object");
    }
}
