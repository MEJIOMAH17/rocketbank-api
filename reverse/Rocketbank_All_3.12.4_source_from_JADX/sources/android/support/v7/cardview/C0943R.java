package android.support.v7.cardview;

import android.util.Log;
import com.nineoldandroids.animation.TypeEvaluator;
import io.fabric.sdk.android.Logger;
import io.fabric.sdk.android.services.concurrency.internal.Backoff;
import ru.rocketbank.r2d2.C0859R;

/* renamed from: android.support.v7.cardview.R */
public final class C0943R implements TypeEvaluator<Number> {

    /* renamed from: android.support.v7.cardview.R$dimen */
    public static final class dimen {
        private final String buildType;
        private final String identifier;
        private final String version;

        public dimen(String str, String str2, String str3) {
            this.identifier = str;
            this.version = str2;
            this.buildType = str3;
        }

        public final String getIdentifier() {
            return this.identifier;
        }

        public final String getVersion() {
            return this.version;
        }

        public final String getBuildType() {
            return this.buildType;
        }
    }

    /* renamed from: android.support.v7.cardview.R$styleable */
    public static final class styleable {
        public static final int[] CardView = new int[]{16843071, 16843072, C0859R.attr.cardBackgroundColor, C0859R.attr.cardCornerRadius, C0859R.attr.cardElevation, C0859R.attr.cardMaxElevation, C0859R.attr.cardPreventCornerOverlap, C0859R.attr.cardUseCompatPadding, C0859R.attr.contentPadding, C0859R.attr.contentPaddingBottom, C0859R.attr.contentPaddingLeft, C0859R.attr.contentPaddingRight, C0859R.attr.contentPaddingTop};
        public static final int CardView_android_minHeight = 1;
        public static final int CardView_android_minWidth = 0;
        public static final int CardView_cardBackgroundColor = 2;
        public static final int CardView_cardCornerRadius = 3;
        public static final int CardView_cardElevation = 4;
        public static final int CardView_cardMaxElevation = 5;
        public static final int CardView_cardPreventCornerOverlap = 6;
        public static final int CardView_cardUseCompatPadding = 7;
        public static final int CardView_contentPadding = 8;
        public static final int CardView_contentPaddingBottom = 9;
        public static final int CardView_contentPaddingLeft = 10;
        public static final int CardView_contentPaddingRight = 11;
        public static final int CardView_contentPaddingTop = 12;
    }

    /* renamed from: android.support.v7.cardview.R$attr */
    public static final class attr implements TypeEvaluator<Integer> {
        public final /* bridge */ /* synthetic */ Object evaluate(float f, Object obj, Object obj2) {
            Integer num = (Integer) obj2;
            obj = ((Integer) obj).intValue();
            return Integer.valueOf((int) (((float) obj) + (f * ((float) (num.intValue() - obj)))));
        }
    }

    /* renamed from: android.support.v7.cardview.R$color */
    public static final class color implements Logger {
        private int logLevel = 4;

        public final boolean isLoggable$505cff18$134632() {
            return this.logLevel <= 3;
        }

        /* renamed from: d */
        public final void mo769d(String str, String str2, Throwable th) {
            if ((this.logLevel <= 3 ? 1 : null) != null) {
                Log.d(str, str2, th);
            }
        }

        /* renamed from: w */
        public final void mo777w(String str, String str2, Throwable th) {
            if ((this.logLevel <= 5 ? 1 : null) != null) {
                Log.w(str, str2, th);
            }
        }

        /* renamed from: e */
        public final void mo771e(String str, String str2, Throwable th) {
            if ((this.logLevel <= 6 ? 1 : null) != null) {
                Log.e(str, str2, th);
            }
        }

        /* renamed from: d */
        public final void mo768d(String str, String str2) {
            if ((this.logLevel <= 3 ? 1 : null) != null) {
                Log.d(str, str2, null);
            }
        }

        /* renamed from: v */
        public final void mo775v(String str, String str2) {
            if ((this.logLevel <= 2 ? 1 : null) != null) {
                Log.v(str, str2, null);
            }
        }

        /* renamed from: i */
        public final void mo772i(String str, String str2) {
            if ((this.logLevel <= 4 ? 1 : null) != null) {
                Log.i(str, str2, null);
            }
        }

        /* renamed from: w */
        public final void mo776w(String str, String str2) {
            if ((this.logLevel <= 5 ? 1 : null) != null) {
                Log.w(str, str2, null);
            }
        }

        /* renamed from: e */
        public final void mo770e(String str, String str2) {
            if ((this.logLevel <= 6 ? 1 : null) != null) {
                Log.e(str, str2, null);
            }
        }

        public final void log(int i, String str, String str2) {
            if ((this.logLevel <= i ? 1 : null) != null) {
                Log.println(i, str, str2);
            }
        }
    }

    /* renamed from: android.support.v7.cardview.R$style */
    public static final class style implements Backoff {
        private final long baseTimeMillis = 1000;
        private final int power = 8;

        public final long getDelayMillis(int i) {
            return (long) (1000.0d * Math.pow(8.0d, (double) i));
        }
    }

    public final /* bridge */ /* synthetic */ Object evaluate(float f, Object obj, Object obj2) {
        Number number = (Number) obj2;
        obj = ((Number) obj).floatValue();
        return Float.valueOf(obj + (f * (number.floatValue() - obj)));
    }
}
