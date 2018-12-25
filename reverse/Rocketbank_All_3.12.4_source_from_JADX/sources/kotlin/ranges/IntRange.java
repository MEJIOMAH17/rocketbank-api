package kotlin.ranges;

/* compiled from: Ranges.kt */
public final class IntRange extends IntProgression {
    public static final Companion Companion = new Companion();
    private static final IntRange EMPTY = new IntRange(1, 0);

    /* compiled from: Ranges.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public IntRange(int i, int i2) {
        super(i, i2, 1);
    }

    public final boolean isEmpty() {
        return getFirst() > getLast();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean equals(java.lang.Object r5) {
        /*
        r4 = this;
        r0 = r5 instanceof kotlin.ranges.IntRange;
        r1 = 0;
        if (r0 == 0) goto L_0x003e;
    L_0x0005:
        r0 = r4.getFirst();
        r2 = r4.getLast();
        r3 = 1;
        if (r0 <= r2) goto L_0x0012;
    L_0x0010:
        r0 = r3;
        goto L_0x0013;
    L_0x0012:
        r0 = r1;
    L_0x0013:
        if (r0 == 0) goto L_0x0027;
    L_0x0015:
        r0 = r5;
        r0 = (kotlin.ranges.IntRange) r0;
        r2 = r0.getFirst();
        r0 = r0.getLast();
        if (r2 <= r0) goto L_0x0024;
    L_0x0022:
        r0 = r3;
        goto L_0x0025;
    L_0x0024:
        r0 = r1;
    L_0x0025:
        if (r0 != 0) goto L_0x003d;
    L_0x0027:
        r0 = r4.getFirst();
        r5 = (kotlin.ranges.IntRange) r5;
        r2 = r5.getFirst();
        if (r0 != r2) goto L_0x003e;
    L_0x0033:
        r0 = r4.getLast();
        r5 = r5.getLast();
        if (r0 != r5) goto L_0x003e;
    L_0x003d:
        return r3;
    L_0x003e:
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.IntRange.equals(java.lang.Object):boolean");
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getFirst());
        stringBuilder.append("..");
        stringBuilder.append(getLast());
        return stringBuilder.toString();
    }

    public final int hashCode() {
        return (getFirst() > getLast() ? 1 : null) != null ? -1 : (31 * getFirst()) + getLast();
    }
}
