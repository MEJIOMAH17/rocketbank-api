package android.support.v4.text;

import com.getkeepsafe.relinker.ReLinker.LoadListener;
import java.util.Locale;

public final class TextDirectionHeuristicsCompat {
    public static final LoadListener ANYRTL_LTR$22f09884 = new TextDirectionHeuristicInternal(AnyStrong.INSTANCE_RTL, false);
    public static final LoadListener FIRSTSTRONG_LTR$22f09884 = new TextDirectionHeuristicInternal(FirstStrong.INSTANCE, false);
    public static final LoadListener FIRSTSTRONG_RTL$22f09884 = new TextDirectionHeuristicInternal(FirstStrong.INSTANCE, true);
    public static final LoadListener LOCALE$22f09884 = TextDirectionHeuristicLocale.INSTANCE;
    public static final LoadListener LTR$22f09884 = new TextDirectionHeuristicInternal(null, false);
    public static final LoadListener RTL$22f09884 = new TextDirectionHeuristicInternal(null, true);

    interface TextDirectionAlgorithm {
        int checkRtl$4d1ed0d4(CharSequence charSequence, int i);
    }

    static class AnyStrong implements TextDirectionAlgorithm {
        static final AnyStrong INSTANCE_LTR = new AnyStrong(false);
        static final AnyStrong INSTANCE_RTL = new AnyStrong(true);
        private final boolean mLookForRtl;

        public final int checkRtl$4d1ed0d4(CharSequence charSequence, int i) {
            int i2 = 0;
            int i3 = i2;
            while (i2 < i) {
                switch (TextDirectionHeuristicsCompat.isRtlText(Character.getDirectionality(charSequence.charAt(i2)))) {
                    case 0:
                        if (this.mLookForRtl) {
                            return 0;
                        }
                        break;
                    case 1:
                        if (!this.mLookForRtl) {
                            return 1;
                        }
                        break;
                    default:
                        continue;
                }
                i3 = 1;
                i2++;
            }
            if (i3 != 0) {
                return this.mLookForRtl != null ? 1 : 0;
            } else {
                return 2;
            }
        }

        private AnyStrong(boolean z) {
            this.mLookForRtl = z;
        }
    }

    static class FirstStrong implements TextDirectionAlgorithm {
        static final FirstStrong INSTANCE = new FirstStrong();

        public final int checkRtl$4d1ed0d4(CharSequence charSequence, int i) {
            int i2 = 2;
            for (int i3 = 0; i3 < i && i2 == 2; i3++) {
                i2 = TextDirectionHeuristicsCompat.isRtlTextOrFormat(Character.getDirectionality(charSequence.charAt(i3)));
            }
            return i2;
        }

        private FirstStrong() {
        }
    }

    static abstract class TextDirectionHeuristicImpl implements LoadListener {
        private final TextDirectionAlgorithm mAlgorithm;

        protected abstract boolean defaultIsRtl();

        TextDirectionHeuristicImpl(TextDirectionAlgorithm textDirectionAlgorithm) {
            this.mAlgorithm = textDirectionAlgorithm;
        }

        public final boolean isRtl$4d1ed0c3(CharSequence charSequence, int i) {
            if (charSequence != null && i >= 0) {
                if (charSequence.length() - i >= 0) {
                    if (this.mAlgorithm == null) {
                        return defaultIsRtl();
                    }
                    switch (this.mAlgorithm.checkRtl$4d1ed0d4(charSequence, i)) {
                        case null:
                            return true;
                        case 1:
                            return null;
                        default:
                            return defaultIsRtl();
                    }
                }
            }
            throw new IllegalArgumentException();
        }
    }

    static class TextDirectionHeuristicInternal extends TextDirectionHeuristicImpl {
        private final boolean mDefaultIsRtl;

        TextDirectionHeuristicInternal(TextDirectionAlgorithm textDirectionAlgorithm, boolean z) {
            super(textDirectionAlgorithm);
            this.mDefaultIsRtl = z;
        }

        protected final boolean defaultIsRtl() {
            return this.mDefaultIsRtl;
        }
    }

    static class TextDirectionHeuristicLocale extends TextDirectionHeuristicImpl {
        static final TextDirectionHeuristicLocale INSTANCE = new TextDirectionHeuristicLocale();

        TextDirectionHeuristicLocale() {
            super(null);
        }

        protected final boolean defaultIsRtl() {
            return TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        }
    }

    static int isRtlText(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
            case 2:
                return 0;
            default:
                return 2;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static int isRtlTextOrFormat(int r0) {
        /*
        switch(r0) {
            case 0: goto L_0x000a;
            case 1: goto L_0x0008;
            case 2: goto L_0x0008;
            default: goto L_0x0003;
        };
    L_0x0003:
        switch(r0) {
            case 14: goto L_0x000a;
            case 15: goto L_0x000a;
            case 16: goto L_0x0008;
            case 17: goto L_0x0008;
            default: goto L_0x0006;
        };
    L_0x0006:
        r0 = 2;
        return r0;
    L_0x0008:
        r0 = 0;
        return r0;
    L_0x000a:
        r0 = 1;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.text.TextDirectionHeuristicsCompat.isRtlTextOrFormat(int):int");
    }
}
