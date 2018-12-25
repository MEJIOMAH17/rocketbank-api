package kotlin.ranges;

import java.util.NoSuchElementException;
import kotlin.collections.IntIterator;

/* compiled from: ProgressionIterators.kt */
public final class IntProgressionIterator extends IntIterator {
    private final int finalElement;
    private boolean hasNext;
    private int next;
    private final int step;

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public IntProgressionIterator(int r3, int r4, int r5) {
        /*
        r2 = this;
        r2.<init>();
        r2.step = r5;
        r2.finalElement = r4;
        r5 = r2.step;
        r0 = 0;
        r1 = 1;
        if (r5 <= 0) goto L_0x0011;
    L_0x000d:
        if (r3 > r4) goto L_0x0014;
    L_0x000f:
        r0 = r1;
        goto L_0x0014;
    L_0x0011:
        if (r3 < r4) goto L_0x0014;
    L_0x0013:
        goto L_0x000f;
    L_0x0014:
        r2.hasNext = r0;
        r4 = r2.hasNext;
        if (r4 == 0) goto L_0x001b;
    L_0x001a:
        goto L_0x001d;
    L_0x001b:
        r3 = r2.finalElement;
    L_0x001d:
        r2.next = r3;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.IntProgressionIterator.<init>(int, int, int):void");
    }

    public final boolean hasNext() {
        return this.hasNext;
    }

    public final int nextInt() {
        int i = this.next;
        if (i != this.finalElement) {
            this.next += this.step;
        } else if (this.hasNext) {
            this.hasNext = false;
        } else {
            throw new NoSuchElementException();
        }
        return i;
    }
}
