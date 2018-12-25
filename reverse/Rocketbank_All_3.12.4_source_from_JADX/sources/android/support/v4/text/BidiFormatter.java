package android.support.v4.text;

import android.text.SpannableStringBuilder;
import com.getkeepsafe.relinker.ReLinker.LoadListener;
import java.util.Locale;

public final class BidiFormatter {
    private static final BidiFormatter DEFAULT_LTR_INSTANCE = new BidiFormatter(false, 2, DEFAULT_TEXT_DIRECTION_HEURISTIC$22f09884);
    private static final BidiFormatter DEFAULT_RTL_INSTANCE = new BidiFormatter(true, 2, DEFAULT_TEXT_DIRECTION_HEURISTIC$22f09884);
    private static LoadListener DEFAULT_TEXT_DIRECTION_HEURISTIC$22f09884 = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR$22f09884;
    private static final String LRM_STRING = Character.toString('‎');
    private static final String RLM_STRING = Character.toString('‏');
    private final LoadListener mDefaultTextDirectionHeuristicCompat$22f09884;
    private final int mFlags;
    private final boolean mIsRtlContext;

    public static final class Builder {
        private int mFlags = 2;
        private boolean mIsRtlContext = BidiFormatter.access$000(Locale.getDefault());
        private LoadListener mTextDirectionHeuristicCompat$22f09884 = BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC$22f09884;

        public final BidiFormatter build() {
            if (this.mFlags != 2 || this.mTextDirectionHeuristicCompat$22f09884 != BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC$22f09884) {
                return new BidiFormatter(this.mIsRtlContext, this.mFlags, this.mTextDirectionHeuristicCompat$22f09884);
            }
            if (this.mIsRtlContext) {
                return BidiFormatter.DEFAULT_RTL_INSTANCE;
            }
            return BidiFormatter.DEFAULT_LTR_INSTANCE;
        }
    }

    static class DirectionalityEstimator {
        private static final byte[] DIR_TYPE_CACHE = new byte[1792];
        private int charIndex;
        private final boolean isHtml = false;
        private char lastChar;
        private final int length;
        private final CharSequence text;

        static {
            for (int i = 0; i < 1792; i++) {
                DIR_TYPE_CACHE[i] = Character.getDirectionality(i);
            }
        }

        DirectionalityEstimator(CharSequence charSequence) {
            this.text = charSequence;
            this.length = charSequence.length();
        }

        final int getEntryDir() {
            this.charIndex = 0;
            int i = 0;
            int i2 = i;
            int i3 = i2;
            while (this.charIndex < this.length && i == 0) {
                byte directionality;
                this.lastChar = this.text.charAt(this.charIndex);
                if (Character.isHighSurrogate(this.lastChar)) {
                    int codePointAt = Character.codePointAt(this.text, this.charIndex);
                    this.charIndex += Character.charCount(codePointAt);
                    directionality = Character.getDirectionality(codePointAt);
                } else {
                    this.charIndex++;
                    char c = this.lastChar;
                    directionality = c < '܀' ? DIR_TYPE_CACHE[c] : Character.getDirectionality(c);
                }
                if (directionality != (byte) 9) {
                    switch (directionality) {
                        case (byte) 0:
                            if (i3 == 0) {
                                return -1;
                            }
                            break;
                        case (byte) 1:
                        case (byte) 2:
                            if (i3 == 0) {
                                return 1;
                            }
                            break;
                        default:
                            switch (directionality) {
                                case (byte) 14:
                                case (byte) 15:
                                    i3++;
                                    i2 = -1;
                                    continue;
                                case (byte) 16:
                                case (byte) 17:
                                    i3++;
                                    i2 = 1;
                                    continue;
                                case (byte) 18:
                                    i3--;
                                    i2 = 0;
                                    continue;
                                    continue;
                                default:
                                    break;
                            }
                    }
                    i = i3;
                }
            }
            if (i == 0) {
                return 0;
            }
            if (i2 != 0) {
                return i2;
            }
            while (this.charIndex > 0) {
                switch (dirTypeBackward()) {
                    case (byte) 14:
                    case (byte) 15:
                        if (i != i3) {
                            i3--;
                            break;
                        }
                        return -1;
                    case (byte) 16:
                    case (byte) 17:
                        if (i != i3) {
                            i3--;
                            break;
                        }
                        return 1;
                    case (byte) 18:
                        i3++;
                        break;
                    default:
                        break;
                }
            }
            return 0;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        final int getExitDir() {
            /*
            r6 = this;
            r0 = r6.length;
            r6.charIndex = r0;
            r0 = 0;
            r1 = r0;
            r2 = r1;
        L_0x0007:
            r3 = r6.charIndex;
            if (r3 <= 0) goto L_0x003a;
        L_0x000b:
            r3 = r6.dirTypeBackward();
            r4 = 9;
            if (r3 == r4) goto L_0x0007;
        L_0x0013:
            r4 = 1;
            r5 = -1;
            switch(r3) {
                case 0: goto L_0x0033;
                case 1: goto L_0x002d;
                case 2: goto L_0x002d;
                default: goto L_0x0018;
            };
        L_0x0018:
            switch(r3) {
                case 14: goto L_0x0027;
                case 15: goto L_0x0027;
                case 16: goto L_0x0021;
                case 17: goto L_0x0021;
                case 18: goto L_0x001e;
                default: goto L_0x001b;
            };
        L_0x001b:
            if (r1 != 0) goto L_0x0007;
        L_0x001d:
            goto L_0x0038;
        L_0x001e:
            r2 = r2 + 1;
            goto L_0x0007;
        L_0x0021:
            if (r1 != r2) goto L_0x0024;
        L_0x0023:
            return r4;
        L_0x0024:
            r2 = r2 + -1;
            goto L_0x0007;
        L_0x0027:
            if (r1 != r2) goto L_0x002a;
        L_0x0029:
            return r5;
        L_0x002a:
            r2 = r2 + -1;
            goto L_0x0007;
        L_0x002d:
            if (r2 != 0) goto L_0x0030;
        L_0x002f:
            return r4;
        L_0x0030:
            if (r1 != 0) goto L_0x0007;
        L_0x0032:
            goto L_0x0038;
        L_0x0033:
            if (r2 != 0) goto L_0x0036;
        L_0x0035:
            return r5;
        L_0x0036:
            if (r1 != 0) goto L_0x0007;
        L_0x0038:
            r1 = r2;
            goto L_0x0007;
        L_0x003a:
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.text.BidiFormatter.DirectionalityEstimator.getExitDir():int");
        }

        private byte dirTypeBackward() {
            this.lastChar = this.text.charAt(this.charIndex - 1);
            if (Character.isLowSurrogate(this.lastChar)) {
                int codePointBefore = Character.codePointBefore(this.text, this.charIndex);
                this.charIndex -= Character.charCount(codePointBefore);
                return Character.getDirectionality(codePointBefore);
            }
            this.charIndex--;
            char c = this.lastChar;
            return c < '܀' ? DIR_TYPE_CACHE[c] : Character.getDirectionality(c);
        }
    }

    public static BidiFormatter getInstance() {
        return new Builder().build();
    }

    private BidiFormatter(boolean z, int i, LoadListener loadListener) {
        this.mIsRtlContext = z;
        this.mFlags = i;
        this.mDefaultTextDirectionHeuristicCompat$22f09884 = loadListener;
    }

    public final CharSequence unicodeWrap(CharSequence charSequence) {
        LoadListener loadListener = this.mDefaultTextDirectionHeuristicCompat$22f09884;
        if (charSequence == null) {
            return null;
        }
        boolean isRtl$4d1ed0c3 = loadListener.isRtl$4d1ed0c3(charSequence, charSequence.length());
        CharSequence spannableStringBuilder = new SpannableStringBuilder();
        if (((this.mFlags & 2) != 0 ? 1 : null) != null) {
            LoadListener loadListener2;
            CharSequence charSequence2;
            if (isRtl$4d1ed0c3) {
                loadListener2 = TextDirectionHeuristicsCompat.RTL$22f09884;
            } else {
                loadListener2 = TextDirectionHeuristicsCompat.LTR$22f09884;
            }
            boolean isRtl$4d1ed0c32 = loadListener2.isRtl$4d1ed0c3(charSequence, charSequence.length());
            if (!this.mIsRtlContext && (isRtl$4d1ed0c32 || new DirectionalityEstimator(charSequence).getEntryDir() == 1)) {
                charSequence2 = LRM_STRING;
            } else if (!this.mIsRtlContext || (isRtl$4d1ed0c32 && new DirectionalityEstimator(charSequence).getEntryDir() != -1)) {
                charSequence2 = "";
            } else {
                charSequence2 = RLM_STRING;
            }
            spannableStringBuilder.append(charSequence2);
        }
        if (isRtl$4d1ed0c3 != this.mIsRtlContext) {
            spannableStringBuilder.append(isRtl$4d1ed0c3 ? '‫' : '‪');
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append('‬');
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (isRtl$4d1ed0c3) {
            loadListener = TextDirectionHeuristicsCompat.RTL$22f09884;
        } else {
            loadListener = TextDirectionHeuristicsCompat.LTR$22f09884;
        }
        isRtl$4d1ed0c3 = loadListener.isRtl$4d1ed0c3(charSequence, charSequence.length());
        if (!this.mIsRtlContext && (isRtl$4d1ed0c3 || new DirectionalityEstimator(charSequence).getExitDir() == 1)) {
            charSequence = LRM_STRING;
        } else if (!this.mIsRtlContext || (isRtl$4d1ed0c3 && new DirectionalityEstimator(charSequence).getExitDir() != -1)) {
            charSequence = "";
        } else {
            charSequence = RLM_STRING;
        }
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    static /* synthetic */ boolean access$000(Locale locale) {
        return TextUtilsCompat.getLayoutDirectionFromLocale(locale) == 1 ? true : null;
    }
}
