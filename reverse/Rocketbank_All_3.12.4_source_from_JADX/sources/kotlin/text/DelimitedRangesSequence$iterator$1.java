package kotlin.text;

import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.TypeCastException;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntRange;

/* compiled from: Strings.kt */
public final class DelimitedRangesSequence$iterator$1 implements Iterator<IntRange>, KMappedMarker {
    private int counter;
    private int currentStartIndex;
    private IntRange nextItem;
    private int nextSearchIndex;
    private int nextState = -1;
    final /* synthetic */ DelimitedRangesSequence this$0;

    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    DelimitedRangesSequence$iterator$1(DelimitedRangesSequence delimitedRangesSequence) {
        this.this$0 = delimitedRangesSequence;
        int access$getStartIndex$p = delimitedRangesSequence.startIndex;
        delimitedRangesSequence = delimitedRangesSequence.input.length();
        if (delimitedRangesSequence < null) {
            StringBuilder stringBuilder = new StringBuilder("Cannot coerce value to an empty range: maximum ");
            stringBuilder.append(delimitedRangesSequence);
            stringBuilder.append(" is less than minimum 0.");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        if (access$getStartIndex$p < 0) {
            access$getStartIndex$p = 0;
        } else if (access$getStartIndex$p > delimitedRangesSequence) {
            access$getStartIndex$p = delimitedRangesSequence;
        }
        this.currentStartIndex = access$getStartIndex$p;
        this.nextSearchIndex = this.currentStartIndex;
    }

    public final int getNextState() {
        return this.nextState;
    }

    public final void setNextState(int i) {
        this.nextState = i;
    }

    public final int getCurrentStartIndex() {
        return this.currentStartIndex;
    }

    public final void setCurrentStartIndex(int i) {
        this.currentStartIndex = i;
    }

    public final int getNextSearchIndex() {
        return this.nextSearchIndex;
    }

    public final void setNextSearchIndex(int i) {
        this.nextSearchIndex = i;
    }

    public final IntRange getNextItem() {
        return this.nextItem;
    }

    public final void setNextItem(IntRange intRange) {
        this.nextItem = intRange;
    }

    public final int getCounter() {
        return this.counter;
    }

    public final void setCounter(int i) {
        this.counter = i;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void calcNext() {
        /*
        r7 = this;
        r0 = r7.nextSearchIndex;
        r1 = 0;
        if (r0 >= 0) goto L_0x000b;
    L_0x0005:
        r7.nextState = r1;
        r0 = 0;
        r7.nextItem = r0;
        return;
    L_0x000b:
        r0 = r7.this$0;
        r0 = r0.limit;
        r2 = -1;
        r3 = 1;
        if (r0 <= 0) goto L_0x0024;
    L_0x0015:
        r0 = r7.counter;
        r0 = r0 + r3;
        r7.counter = r0;
        r0 = r7.counter;
        r4 = r7.this$0;
        r4 = r4.limit;
        if (r0 >= r4) goto L_0x0032;
    L_0x0024:
        r0 = r7.nextSearchIndex;
        r4 = r7.this$0;
        r4 = r4.input;
        r4 = r4.length();
        if (r0 <= r4) goto L_0x0048;
    L_0x0032:
        r0 = r7.currentStartIndex;
        r1 = new kotlin.ranges.IntRange;
        r4 = r7.this$0;
        r4 = r4.input;
        r4 = kotlin.text.StringsKt__StringsKt.getLastIndex(r4);
        r1.<init>(r0, r4);
        r7.nextItem = r1;
        r7.nextSearchIndex = r2;
        goto L_0x00ae;
    L_0x0048:
        r0 = r7.this$0;
        r0 = r0.getNextMatch;
        r4 = r7.this$0;
        r4 = r4.input;
        r5 = r7.nextSearchIndex;
        r5 = java.lang.Integer.valueOf(r5);
        r0 = r0.invoke(r4, r5);
        r0 = (kotlin.Pair) r0;
        if (r0 != 0) goto L_0x0078;
    L_0x0062:
        r0 = r7.currentStartIndex;
        r1 = new kotlin.ranges.IntRange;
        r4 = r7.this$0;
        r4 = r4.input;
        r4 = kotlin.text.StringsKt__StringsKt.getLastIndex(r4);
        r1.<init>(r0, r4);
        r7.nextItem = r1;
        r7.nextSearchIndex = r2;
        goto L_0x00ae;
    L_0x0078:
        r2 = r0.component1();
        r2 = (java.lang.Number) r2;
        r2 = r2.intValue();
        r0 = r0.component2();
        r0 = (java.lang.Number) r0;
        r0 = r0.intValue();
        r4 = r7.currentStartIndex;
        r5 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        if (r2 > r5) goto L_0x0099;
    L_0x0092:
        r4 = kotlin.ranges.IntRange.Companion;
        r4 = kotlin.ranges.IntRange.EMPTY;
        goto L_0x00a1;
    L_0x0099:
        r5 = new kotlin.ranges.IntRange;
        r6 = r2 + -1;
        r5.<init>(r4, r6);
        r4 = r5;
    L_0x00a1:
        r7.nextItem = r4;
        r2 = r2 + r0;
        r7.currentStartIndex = r2;
        r2 = r7.currentStartIndex;
        if (r0 != 0) goto L_0x00ab;
    L_0x00aa:
        r1 = r3;
    L_0x00ab:
        r2 = r2 + r1;
        r7.nextSearchIndex = r2;
    L_0x00ae:
        r7.nextState = r3;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.DelimitedRangesSequence$iterator$1.calcNext():void");
    }

    public final IntRange next() {
        if (this.nextState == -1) {
            calcNext();
        }
        if (this.nextState == 0) {
            throw new NoSuchElementException();
        }
        IntRange intRange = this.nextItem;
        if (intRange == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlin.ranges.IntRange");
        }
        this.nextItem = null;
        this.nextState = -1;
        return intRange;
    }

    public final boolean hasNext() {
        if (this.nextState == -1) {
            calcNext();
        }
        return this.nextState == 1;
    }
}
