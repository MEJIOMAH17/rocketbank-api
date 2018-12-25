package ru.rocketbank.r2d2.root.feed;

/* compiled from: DayDelimiterStrategy.kt */
public final class DayDelimiterStrategy implements DelimiterStrategy {
    public final int getShowMode(int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        if (i == 0) {
            return DelimiterStrategy.Companion.getHIDE_DATE();
        }
        boolean z6 = false;
        if (i == 1) {
            if (z) {
                return DelimiterStrategy.Companion.getSHOW_WAITING();
            }
            z6 = true;
        }
        if (!z6) {
            if (z4 && !z) {
                z5 = true;
                if (z5) {
                    return DelimiterStrategy.Companion.getHIDE_DATE();
                }
                if (!z2) {
                    return DelimiterStrategy.Companion.getSHOW_TODAY();
                }
                if (z3) {
                    return DelimiterStrategy.Companion.getSHOW_DATE();
                }
                return DelimiterStrategy.Companion.getSHOW_YESTERDAY();
            } else if (!z) {
                if (z5) {
                    return DelimiterStrategy.Companion.getHIDE_DATE();
                }
                if (!z2) {
                    return DelimiterStrategy.Companion.getSHOW_TODAY();
                }
                if (z3) {
                    return DelimiterStrategy.Companion.getSHOW_YESTERDAY();
                }
                return DelimiterStrategy.Companion.getSHOW_DATE();
            }
        }
        z5 = z6;
        if (z5) {
            return DelimiterStrategy.Companion.getHIDE_DATE();
        }
        if (!z2) {
            return DelimiterStrategy.Companion.getSHOW_TODAY();
        }
        if (z3) {
            return DelimiterStrategy.Companion.getSHOW_YESTERDAY();
        }
        return DelimiterStrategy.Companion.getSHOW_DATE();
    }
}
