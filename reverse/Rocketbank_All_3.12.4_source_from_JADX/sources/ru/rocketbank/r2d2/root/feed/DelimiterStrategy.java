package ru.rocketbank.r2d2.root.feed;

/* compiled from: DelimiterStrategy.kt */
public interface DelimiterStrategy {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: DelimiterStrategy.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final int HIDE_DATE = 4;
        private static final int SHOW_DATE = 3;
        private static final int SHOW_TODAY = 0;
        private static final int SHOW_WAITING = 2;
        private static final int SHOW_YESTERDAY = 1;

        private Companion() {
        }

        public final int getSHOW_TODAY() {
            return SHOW_TODAY;
        }

        public final int getSHOW_YESTERDAY() {
            return SHOW_YESTERDAY;
        }

        public final int getSHOW_WAITING() {
            return SHOW_WAITING;
        }

        public final int getSHOW_DATE() {
            return SHOW_DATE;
        }

        public final int getHIDE_DATE() {
            return HIDE_DATE;
        }
    }

    int getShowMode(int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5);
}
