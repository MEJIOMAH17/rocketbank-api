package android.support.v7.gridlayout;

import io.fabric.sdk.android.services.concurrency.internal.Backoff;
import ru.rocketbank.r2d2.C0859R;

/* renamed from: android.support.v7.gridlayout.R */
public final class C0222R {
    private final int maxRetries;

    /* renamed from: android.support.v7.gridlayout.R$dimen */
    public static final class dimen {
        private final Backoff backoff;
        private final int retryCount;
        private final C0222R retryPolicy$245149d8;

        public dimen(Backoff backoff, C0222R c0222r) {
            this(0, backoff, c0222r);
        }

        private dimen(int i, Backoff backoff, C0222R c0222r) {
            this.retryCount = i;
            this.backoff = backoff;
            this.retryPolicy$245149d8 = c0222r;
        }

        public final long getRetryDelay() {
            return this.backoff.getDelayMillis(this.retryCount);
        }

        public final dimen nextRetryState$3053fe0c() {
            return new dimen(this.retryCount + 1, this.backoff, this.retryPolicy$245149d8);
        }

        public final dimen initialRetryState$3053fe0c() {
            return new dimen(this.backoff, this.retryPolicy$245149d8);
        }
    }

    /* renamed from: android.support.v7.gridlayout.R$styleable */
    public static final class styleable {
        public static final int[] CoordinatorLayout = new int[]{C0859R.attr.keylines, C0859R.attr.statusBarBackground};
        public static final int[] CoordinatorLayout_Layout = new int[]{16842931, C0859R.attr.layout_anchor, C0859R.attr.layout_anchorGravity, C0859R.attr.layout_behavior, C0859R.attr.layout_dodgeInsetEdges, C0859R.attr.layout_insetEdge, C0859R.attr.layout_keyline};
        public static final int[] FontFamily = new int[]{C0859R.attr.fontProviderAuthority, C0859R.attr.fontProviderCerts, C0859R.attr.fontProviderFetchStrategy, C0859R.attr.fontProviderFetchTimeout, C0859R.attr.fontProviderPackage, C0859R.attr.fontProviderQuery};
        public static final int[] FontFamilyFont = new int[]{16844082, 16844083, 16844095, C0859R.attr.font, C0859R.attr.fontStyle, C0859R.attr.fontWeight};
        public static final int[] GridLayout = new int[]{C0859R.attr.alignmentMode, C0859R.attr.columnCount, C0859R.attr.columnOrderPreserved, C0859R.attr.orientation, C0859R.attr.rowCount, C0859R.attr.rowOrderPreserved, C0859R.attr.useDefaultMargins};
        public static final int[] GridLayout_Layout = new int[]{16842996, 16842997, 16842998, 16842999, 16843000, 16843001, 16843002, C0859R.attr.layout_column, C0859R.attr.layout_columnSpan, C0859R.attr.layout_columnWeight, C0859R.attr.layout_gravity, C0859R.attr.layout_row, C0859R.attr.layout_rowSpan, C0859R.attr.layout_rowWeight};
        public static final int GridLayout_Layout_android_layout_margin = 2;
        public static final int GridLayout_Layout_android_layout_marginBottom = 6;
        public static final int GridLayout_Layout_android_layout_marginLeft = 3;
        public static final int GridLayout_Layout_android_layout_marginRight = 5;
        public static final int GridLayout_Layout_android_layout_marginTop = 4;
        public static final int GridLayout_Layout_layout_column = 7;
        public static final int GridLayout_Layout_layout_columnSpan = 8;
        public static final int GridLayout_Layout_layout_columnWeight = 9;
        public static final int GridLayout_Layout_layout_gravity = 10;
        public static final int GridLayout_Layout_layout_row = 11;
        public static final int GridLayout_Layout_layout_rowSpan = 12;
        public static final int GridLayout_Layout_layout_rowWeight = 13;
        public static final int GridLayout_alignmentMode = 0;
        public static final int GridLayout_columnCount = 1;
        public static final int GridLayout_columnOrderPreserved = 2;
        public static final int GridLayout_orientation = 3;
        public static final int GridLayout_rowCount = 4;
        public static final int GridLayout_rowOrderPreserved = 5;
        public static final int GridLayout_useDefaultMargins = 6;
    }

    public C0222R() {
        this(1);
    }

    public C0222R(int i) {
        this.maxRetries = i;
    }
}
