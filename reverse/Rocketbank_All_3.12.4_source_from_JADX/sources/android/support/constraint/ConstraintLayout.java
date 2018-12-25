package android.support.constraint;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build.VERSION;
import android.support.constraint.solver.widgets.ConstraintWidget;
import android.support.constraint.solver.widgets.ConstraintWidgetContainer;
import android.support.constraint.solver.widgets.Guideline;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashMap;

public class ConstraintLayout extends ViewGroup {
    SparseArray<View> mChildrenByIds = new SparseArray();
    private ArrayList<ConstraintHelper> mConstraintHelpers = new ArrayList(4);
    private ConstraintSet mConstraintSet = null;
    private int mConstraintSetId = -1;
    private HashMap<String, Integer> mDesignIds = new HashMap();
    private boolean mDirtyHierarchy = true;
    private int mLastMeasureHeight = -1;
    int mLastMeasureHeightMode = 0;
    int mLastMeasureHeightSize = -1;
    private int mLastMeasureWidth = -1;
    int mLastMeasureWidthMode = 0;
    int mLastMeasureWidthSize = -1;
    ConstraintWidgetContainer mLayoutWidget = new ConstraintWidgetContainer();
    private int mMaxHeight = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    private int mMaxWidth = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    private int mMinHeight = 0;
    private int mMinWidth = 0;
    private int mOptimizationLevel = 3;
    private final ArrayList<ConstraintWidget> mVariableDimensionsWidgets = new ArrayList(100);

    public static class LayoutParams extends MarginLayoutParams {
        public int baselineToBaseline = -1;
        public int bottomToBottom = -1;
        public int bottomToTop = -1;
        public float circleAngle = BitmapDescriptorFactory.HUE_RED;
        public int circleConstraint = -1;
        public int circleRadius = 0;
        public boolean constrainedHeight = false;
        public boolean constrainedWidth = false;
        public String dimensionRatio = null;
        int dimensionRatioSide = 1;
        float dimensionRatioValue = BitmapDescriptorFactory.HUE_RED;
        public int editorAbsoluteX = -1;
        public int editorAbsoluteY = -1;
        public int endToEnd = -1;
        public int endToStart = -1;
        public int goneBottomMargin = -1;
        public int goneEndMargin = -1;
        public int goneLeftMargin = -1;
        public int goneRightMargin = -1;
        public int goneStartMargin = -1;
        public int goneTopMargin = -1;
        public int guideBegin = -1;
        public int guideEnd = -1;
        public float guidePercent = -1.0f;
        public boolean helped = false;
        public float horizontalBias = 0.5f;
        public int horizontalChainStyle = 0;
        boolean horizontalDimensionFixed = true;
        public float horizontalWeight = BitmapDescriptorFactory.HUE_RED;
        boolean isGuideline = false;
        boolean isHelper = false;
        boolean isInPlaceholder = false;
        public int leftToLeft = -1;
        public int leftToRight = -1;
        public int matchConstraintDefaultHeight = 0;
        public int matchConstraintDefaultWidth = 0;
        public int matchConstraintMaxHeight = 0;
        public int matchConstraintMaxWidth = 0;
        public int matchConstraintMinHeight = 0;
        public int matchConstraintMinWidth = 0;
        public float matchConstraintPercentHeight = 1.0f;
        public float matchConstraintPercentWidth = 1.0f;
        boolean needsBaseline = false;
        public int orientation = -1;
        int resolveGoneLeftMargin = -1;
        int resolveGoneRightMargin = -1;
        int resolvedGuideBegin;
        int resolvedGuideEnd;
        float resolvedGuidePercent;
        float resolvedHorizontalBias = 0.5f;
        int resolvedLeftToLeft = -1;
        int resolvedLeftToRight = -1;
        int resolvedRightToLeft = -1;
        int resolvedRightToRight = -1;
        public int rightToLeft = -1;
        public int rightToRight = -1;
        public int startToEnd = -1;
        public int startToStart = -1;
        public int topToBottom = -1;
        public int topToTop = -1;
        public float verticalBias = 0.5f;
        public int verticalChainStyle = 0;
        boolean verticalDimensionFixed = true;
        public float verticalWeight = BitmapDescriptorFactory.HUE_RED;
        ConstraintWidget widget = new ConstraintWidget();

        static class Table {
            public static final SparseIntArray map;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                map = sparseIntArray;
                sparseIntArray.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                map.append(C0887R.styleable.ConstraintLayout_Layout_android_orientation, 1);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                map.append(C0887R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
            }
        }

        public LayoutParams(android.content.Context r10, android.util.AttributeSet r11) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r9 = this;
            r9.<init>(r10, r11);
            r0 = -1;
            r9.guideBegin = r0;
            r9.guideEnd = r0;
            r1 = -1082130432; // 0xffffffffbf800000 float:-1.0 double:NaN;
            r9.guidePercent = r1;
            r9.leftToLeft = r0;
            r9.leftToRight = r0;
            r9.rightToLeft = r0;
            r9.rightToRight = r0;
            r9.topToTop = r0;
            r9.topToBottom = r0;
            r9.bottomToTop = r0;
            r9.bottomToBottom = r0;
            r9.baselineToBaseline = r0;
            r9.circleConstraint = r0;
            r1 = 0;
            r9.circleRadius = r1;
            r2 = 0;
            r9.circleAngle = r2;
            r9.startToEnd = r0;
            r9.startToStart = r0;
            r9.endToStart = r0;
            r9.endToEnd = r0;
            r9.goneLeftMargin = r0;
            r9.goneTopMargin = r0;
            r9.goneRightMargin = r0;
            r9.goneBottomMargin = r0;
            r9.goneStartMargin = r0;
            r9.goneEndMargin = r0;
            r3 = 1056964608; // 0x3f000000 float:0.5 double:5.222099017E-315;
            r9.horizontalBias = r3;
            r9.verticalBias = r3;
            r4 = 0;
            r9.dimensionRatio = r4;
            r9.dimensionRatioValue = r2;
            r4 = 1;
            r9.dimensionRatioSide = r4;
            r9.horizontalWeight = r2;
            r9.verticalWeight = r2;
            r9.horizontalChainStyle = r1;
            r9.verticalChainStyle = r1;
            r9.matchConstraintDefaultWidth = r1;
            r9.matchConstraintDefaultHeight = r1;
            r9.matchConstraintMinWidth = r1;
            r9.matchConstraintMinHeight = r1;
            r9.matchConstraintMaxWidth = r1;
            r9.matchConstraintMaxHeight = r1;
            r5 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
            r9.matchConstraintPercentWidth = r5;
            r9.matchConstraintPercentHeight = r5;
            r9.editorAbsoluteX = r0;
            r9.editorAbsoluteY = r0;
            r9.orientation = r0;
            r9.constrainedWidth = r1;
            r9.constrainedHeight = r1;
            r9.horizontalDimensionFixed = r4;
            r9.verticalDimensionFixed = r4;
            r9.needsBaseline = r1;
            r9.isGuideline = r1;
            r9.isHelper = r1;
            r9.isInPlaceholder = r1;
            r9.resolvedLeftToLeft = r0;
            r9.resolvedLeftToRight = r0;
            r9.resolvedRightToLeft = r0;
            r9.resolvedRightToRight = r0;
            r9.resolveGoneLeftMargin = r0;
            r9.resolveGoneRightMargin = r0;
            r9.resolvedHorizontalBias = r3;
            r3 = new android.support.constraint.solver.widgets.ConstraintWidget;
            r3.<init>();
            r9.widget = r3;
            r9.helped = r1;
            r3 = android.support.constraint.C0887R.styleable.ConstraintLayout_Layout;
            r10 = r10.obtainStyledAttributes(r11, r3);
            r11 = r10.getIndexCount();
            r3 = r1;
        L_0x009a:
            if (r3 >= r11) goto L_0x03e4;
        L_0x009c:
            r5 = r10.getIndex(r3);
            r6 = android.support.constraint.ConstraintLayout.LayoutParams.Table.map;
            r6 = r6.get(r5);
            r7 = -2;
            switch(r6) {
                case 0: goto L_0x03e0;
                case 1: goto L_0x03d8;
                case 2: goto L_0x03c5;
                case 3: goto L_0x03bc;
                case 4: goto L_0x03a3;
                case 5: goto L_0x039a;
                case 6: goto L_0x0391;
                case 7: goto L_0x0388;
                case 8: goto L_0x0375;
                case 9: goto L_0x0362;
                case 10: goto L_0x034e;
                case 11: goto L_0x033a;
                case 12: goto L_0x0326;
                case 13: goto L_0x0312;
                case 14: goto L_0x02fe;
                case 15: goto L_0x02ea;
                case 16: goto L_0x02d6;
                case 17: goto L_0x02c2;
                case 18: goto L_0x02ae;
                case 19: goto L_0x029a;
                case 20: goto L_0x0286;
                case 21: goto L_0x027c;
                case 22: goto L_0x0272;
                case 23: goto L_0x0268;
                case 24: goto L_0x025e;
                case 25: goto L_0x0254;
                case 26: goto L_0x024a;
                case 27: goto L_0x0240;
                case 28: goto L_0x0236;
                case 29: goto L_0x022c;
                case 30: goto L_0x0222;
                case 31: goto L_0x020f;
                case 32: goto L_0x01fc;
                case 33: goto L_0x01e6;
                case 34: goto L_0x01d0;
                case 35: goto L_0x01c2;
                case 36: goto L_0x01ac;
                case 37: goto L_0x0196;
                case 38: goto L_0x0188;
                default: goto L_0x00aa;
            };
        L_0x00aa:
            switch(r6) {
                case 44: goto L_0x00e3;
                case 45: goto L_0x00db;
                case 46: goto L_0x00d3;
                case 47: goto L_0x00cb;
                case 48: goto L_0x00c3;
                case 49: goto L_0x00b9;
                case 50: goto L_0x00af;
                default: goto L_0x00ad;
            };
        L_0x00ad:
            goto L_0x03e0;
        L_0x00af:
            r6 = r9.editorAbsoluteY;
            r5 = r10.getDimensionPixelOffset(r5, r6);
            r9.editorAbsoluteY = r5;
            goto L_0x03e0;
        L_0x00b9:
            r6 = r9.editorAbsoluteX;
            r5 = r10.getDimensionPixelOffset(r5, r6);
            r9.editorAbsoluteX = r5;
            goto L_0x03e0;
        L_0x00c3:
            r5 = r10.getInt(r5, r1);
            r9.verticalChainStyle = r5;
            goto L_0x03e0;
        L_0x00cb:
            r5 = r10.getInt(r5, r1);
            r9.horizontalChainStyle = r5;
            goto L_0x03e0;
        L_0x00d3:
            r5 = r10.getFloat(r5, r2);
            r9.verticalWeight = r5;
            goto L_0x03e0;
        L_0x00db:
            r5 = r10.getFloat(r5, r2);
            r9.horizontalWeight = r5;
            goto L_0x03e0;
        L_0x00e3:
            r5 = r10.getString(r5);
            r9.dimensionRatio = r5;
            r5 = 2143289344; // 0x7fc00000 float:NaN double:1.058925634E-314;
            r9.dimensionRatioValue = r5;
            r9.dimensionRatioSide = r0;
            r5 = r9.dimensionRatio;
            if (r5 == 0) goto L_0x03e0;
        L_0x00f3:
            r5 = r9.dimensionRatio;
            r5 = r5.length();
            r6 = r9.dimensionRatio;
            r7 = 44;
            r6 = r6.indexOf(r7);
            if (r6 <= 0) goto L_0x0125;
        L_0x0103:
            r7 = r5 + -1;
            if (r6 >= r7) goto L_0x0125;
        L_0x0107:
            r7 = r9.dimensionRatio;
            r7 = r7.substring(r1, r6);
            r8 = "W";
            r8 = r7.equalsIgnoreCase(r8);
            if (r8 == 0) goto L_0x0118;
        L_0x0115:
            r9.dimensionRatioSide = r1;
            goto L_0x0122;
        L_0x0118:
            r8 = "H";
            r7 = r7.equalsIgnoreCase(r8);
            if (r7 == 0) goto L_0x0122;
        L_0x0120:
            r9.dimensionRatioSide = r4;
        L_0x0122:
            r6 = r6 + 1;
            goto L_0x0126;
        L_0x0125:
            r6 = r1;
        L_0x0126:
            r7 = r9.dimensionRatio;
            r8 = 58;
            r7 = r7.indexOf(r8);
            if (r7 < 0) goto L_0x0174;
        L_0x0130:
            r5 = r5 + -1;
            if (r7 >= r5) goto L_0x0174;
        L_0x0134:
            r5 = r9.dimensionRatio;
            r5 = r5.substring(r6, r7);
            r6 = r9.dimensionRatio;
            r7 = r7 + 1;
            r6 = r6.substring(r7);
            r7 = r5.length();
            if (r7 <= 0) goto L_0x03e0;
        L_0x0148:
            r7 = r6.length();
            if (r7 <= 0) goto L_0x03e0;
        L_0x014e:
            r5 = java.lang.Float.parseFloat(r5);	 Catch:{ NumberFormatException -> 0x03e0 }
            r6 = java.lang.Float.parseFloat(r6);	 Catch:{ NumberFormatException -> 0x03e0 }
            r7 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1));	 Catch:{ NumberFormatException -> 0x03e0 }
            if (r7 <= 0) goto L_0x03e0;	 Catch:{ NumberFormatException -> 0x03e0 }
        L_0x015a:
            r7 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1));	 Catch:{ NumberFormatException -> 0x03e0 }
            if (r7 <= 0) goto L_0x03e0;	 Catch:{ NumberFormatException -> 0x03e0 }
        L_0x015e:
            r7 = r9.dimensionRatioSide;	 Catch:{ NumberFormatException -> 0x03e0 }
            if (r7 != r4) goto L_0x016b;	 Catch:{ NumberFormatException -> 0x03e0 }
        L_0x0162:
            r6 = r6 / r5;	 Catch:{ NumberFormatException -> 0x03e0 }
            r5 = java.lang.Math.abs(r6);	 Catch:{ NumberFormatException -> 0x03e0 }
            r9.dimensionRatioValue = r5;	 Catch:{ NumberFormatException -> 0x03e0 }
            goto L_0x03e0;	 Catch:{ NumberFormatException -> 0x03e0 }
        L_0x016b:
            r5 = r5 / r6;	 Catch:{ NumberFormatException -> 0x03e0 }
            r5 = java.lang.Math.abs(r5);	 Catch:{ NumberFormatException -> 0x03e0 }
            r9.dimensionRatioValue = r5;	 Catch:{ NumberFormatException -> 0x03e0 }
            goto L_0x03e0;
        L_0x0174:
            r5 = r9.dimensionRatio;
            r5 = r5.substring(r6);
            r6 = r5.length();
            if (r6 <= 0) goto L_0x03e0;
        L_0x0180:
            r5 = java.lang.Float.parseFloat(r5);	 Catch:{ NumberFormatException -> 0x03e0 }
            r9.dimensionRatioValue = r5;	 Catch:{ NumberFormatException -> 0x03e0 }
            goto L_0x03e0;
        L_0x0188:
            r6 = r9.matchConstraintPercentHeight;
            r5 = r10.getFloat(r5, r6);
            r5 = java.lang.Math.max(r2, r5);
            r9.matchConstraintPercentHeight = r5;
            goto L_0x03e0;
        L_0x0196:
            r6 = r9.matchConstraintMaxHeight;	 Catch:{ Exception -> 0x01a0 }
            r6 = r10.getDimensionPixelSize(r5, r6);	 Catch:{ Exception -> 0x01a0 }
            r9.matchConstraintMaxHeight = r6;	 Catch:{ Exception -> 0x01a0 }
            goto L_0x03e0;
        L_0x01a0:
            r6 = r9.matchConstraintMaxHeight;
            r5 = r10.getInt(r5, r6);
            if (r5 != r7) goto L_0x03e0;
        L_0x01a8:
            r9.matchConstraintMaxHeight = r7;
            goto L_0x03e0;
        L_0x01ac:
            r6 = r9.matchConstraintMinHeight;	 Catch:{ Exception -> 0x01b6 }
            r6 = r10.getDimensionPixelSize(r5, r6);	 Catch:{ Exception -> 0x01b6 }
            r9.matchConstraintMinHeight = r6;	 Catch:{ Exception -> 0x01b6 }
            goto L_0x03e0;
        L_0x01b6:
            r6 = r9.matchConstraintMinHeight;
            r5 = r10.getInt(r5, r6);
            if (r5 != r7) goto L_0x03e0;
        L_0x01be:
            r9.matchConstraintMinHeight = r7;
            goto L_0x03e0;
        L_0x01c2:
            r6 = r9.matchConstraintPercentWidth;
            r5 = r10.getFloat(r5, r6);
            r5 = java.lang.Math.max(r2, r5);
            r9.matchConstraintPercentWidth = r5;
            goto L_0x03e0;
        L_0x01d0:
            r6 = r9.matchConstraintMaxWidth;	 Catch:{ Exception -> 0x01da }
            r6 = r10.getDimensionPixelSize(r5, r6);	 Catch:{ Exception -> 0x01da }
            r9.matchConstraintMaxWidth = r6;	 Catch:{ Exception -> 0x01da }
            goto L_0x03e0;
        L_0x01da:
            r6 = r9.matchConstraintMaxWidth;
            r5 = r10.getInt(r5, r6);
            if (r5 != r7) goto L_0x03e0;
        L_0x01e2:
            r9.matchConstraintMaxWidth = r7;
            goto L_0x03e0;
        L_0x01e6:
            r6 = r9.matchConstraintMinWidth;	 Catch:{ Exception -> 0x01f0 }
            r6 = r10.getDimensionPixelSize(r5, r6);	 Catch:{ Exception -> 0x01f0 }
            r9.matchConstraintMinWidth = r6;	 Catch:{ Exception -> 0x01f0 }
            goto L_0x03e0;
        L_0x01f0:
            r6 = r9.matchConstraintMinWidth;
            r5 = r10.getInt(r5, r6);
            if (r5 != r7) goto L_0x03e0;
        L_0x01f8:
            r9.matchConstraintMinWidth = r7;
            goto L_0x03e0;
        L_0x01fc:
            r5 = r10.getInt(r5, r1);
            r9.matchConstraintDefaultHeight = r5;
            r5 = r9.matchConstraintDefaultHeight;
            if (r5 != r4) goto L_0x03e0;
        L_0x0206:
            r5 = "ConstraintLayout";
            r6 = "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.";
            android.util.Log.e(r5, r6);
            goto L_0x03e0;
        L_0x020f:
            r5 = r10.getInt(r5, r1);
            r9.matchConstraintDefaultWidth = r5;
            r5 = r9.matchConstraintDefaultWidth;
            if (r5 != r4) goto L_0x03e0;
        L_0x0219:
            r5 = "ConstraintLayout";
            r6 = "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.";
            android.util.Log.e(r5, r6);
            goto L_0x03e0;
        L_0x0222:
            r6 = r9.verticalBias;
            r5 = r10.getFloat(r5, r6);
            r9.verticalBias = r5;
            goto L_0x03e0;
        L_0x022c:
            r6 = r9.horizontalBias;
            r5 = r10.getFloat(r5, r6);
            r9.horizontalBias = r5;
            goto L_0x03e0;
        L_0x0236:
            r6 = r9.constrainedHeight;
            r5 = r10.getBoolean(r5, r6);
            r9.constrainedHeight = r5;
            goto L_0x03e0;
        L_0x0240:
            r6 = r9.constrainedWidth;
            r5 = r10.getBoolean(r5, r6);
            r9.constrainedWidth = r5;
            goto L_0x03e0;
        L_0x024a:
            r6 = r9.goneEndMargin;
            r5 = r10.getDimensionPixelSize(r5, r6);
            r9.goneEndMargin = r5;
            goto L_0x03e0;
        L_0x0254:
            r6 = r9.goneStartMargin;
            r5 = r10.getDimensionPixelSize(r5, r6);
            r9.goneStartMargin = r5;
            goto L_0x03e0;
        L_0x025e:
            r6 = r9.goneBottomMargin;
            r5 = r10.getDimensionPixelSize(r5, r6);
            r9.goneBottomMargin = r5;
            goto L_0x03e0;
        L_0x0268:
            r6 = r9.goneRightMargin;
            r5 = r10.getDimensionPixelSize(r5, r6);
            r9.goneRightMargin = r5;
            goto L_0x03e0;
        L_0x0272:
            r6 = r9.goneTopMargin;
            r5 = r10.getDimensionPixelSize(r5, r6);
            r9.goneTopMargin = r5;
            goto L_0x03e0;
        L_0x027c:
            r6 = r9.goneLeftMargin;
            r5 = r10.getDimensionPixelSize(r5, r6);
            r9.goneLeftMargin = r5;
            goto L_0x03e0;
        L_0x0286:
            r6 = r9.endToEnd;
            r6 = r10.getResourceId(r5, r6);
            r9.endToEnd = r6;
            r6 = r9.endToEnd;
            if (r6 != r0) goto L_0x03e0;
        L_0x0292:
            r5 = r10.getInt(r5, r0);
            r9.endToEnd = r5;
            goto L_0x03e0;
        L_0x029a:
            r6 = r9.endToStart;
            r6 = r10.getResourceId(r5, r6);
            r9.endToStart = r6;
            r6 = r9.endToStart;
            if (r6 != r0) goto L_0x03e0;
        L_0x02a6:
            r5 = r10.getInt(r5, r0);
            r9.endToStart = r5;
            goto L_0x03e0;
        L_0x02ae:
            r6 = r9.startToStart;
            r6 = r10.getResourceId(r5, r6);
            r9.startToStart = r6;
            r6 = r9.startToStart;
            if (r6 != r0) goto L_0x03e0;
        L_0x02ba:
            r5 = r10.getInt(r5, r0);
            r9.startToStart = r5;
            goto L_0x03e0;
        L_0x02c2:
            r6 = r9.startToEnd;
            r6 = r10.getResourceId(r5, r6);
            r9.startToEnd = r6;
            r6 = r9.startToEnd;
            if (r6 != r0) goto L_0x03e0;
        L_0x02ce:
            r5 = r10.getInt(r5, r0);
            r9.startToEnd = r5;
            goto L_0x03e0;
        L_0x02d6:
            r6 = r9.baselineToBaseline;
            r6 = r10.getResourceId(r5, r6);
            r9.baselineToBaseline = r6;
            r6 = r9.baselineToBaseline;
            if (r6 != r0) goto L_0x03e0;
        L_0x02e2:
            r5 = r10.getInt(r5, r0);
            r9.baselineToBaseline = r5;
            goto L_0x03e0;
        L_0x02ea:
            r6 = r9.bottomToBottom;
            r6 = r10.getResourceId(r5, r6);
            r9.bottomToBottom = r6;
            r6 = r9.bottomToBottom;
            if (r6 != r0) goto L_0x03e0;
        L_0x02f6:
            r5 = r10.getInt(r5, r0);
            r9.bottomToBottom = r5;
            goto L_0x03e0;
        L_0x02fe:
            r6 = r9.bottomToTop;
            r6 = r10.getResourceId(r5, r6);
            r9.bottomToTop = r6;
            r6 = r9.bottomToTop;
            if (r6 != r0) goto L_0x03e0;
        L_0x030a:
            r5 = r10.getInt(r5, r0);
            r9.bottomToTop = r5;
            goto L_0x03e0;
        L_0x0312:
            r6 = r9.topToBottom;
            r6 = r10.getResourceId(r5, r6);
            r9.topToBottom = r6;
            r6 = r9.topToBottom;
            if (r6 != r0) goto L_0x03e0;
        L_0x031e:
            r5 = r10.getInt(r5, r0);
            r9.topToBottom = r5;
            goto L_0x03e0;
        L_0x0326:
            r6 = r9.topToTop;
            r6 = r10.getResourceId(r5, r6);
            r9.topToTop = r6;
            r6 = r9.topToTop;
            if (r6 != r0) goto L_0x03e0;
        L_0x0332:
            r5 = r10.getInt(r5, r0);
            r9.topToTop = r5;
            goto L_0x03e0;
        L_0x033a:
            r6 = r9.rightToRight;
            r6 = r10.getResourceId(r5, r6);
            r9.rightToRight = r6;
            r6 = r9.rightToRight;
            if (r6 != r0) goto L_0x03e0;
        L_0x0346:
            r5 = r10.getInt(r5, r0);
            r9.rightToRight = r5;
            goto L_0x03e0;
        L_0x034e:
            r6 = r9.rightToLeft;
            r6 = r10.getResourceId(r5, r6);
            r9.rightToLeft = r6;
            r6 = r9.rightToLeft;
            if (r6 != r0) goto L_0x03e0;
        L_0x035a:
            r5 = r10.getInt(r5, r0);
            r9.rightToLeft = r5;
            goto L_0x03e0;
        L_0x0362:
            r6 = r9.leftToRight;
            r6 = r10.getResourceId(r5, r6);
            r9.leftToRight = r6;
            r6 = r9.leftToRight;
            if (r6 != r0) goto L_0x03e0;
        L_0x036e:
            r5 = r10.getInt(r5, r0);
            r9.leftToRight = r5;
            goto L_0x03e0;
        L_0x0375:
            r6 = r9.leftToLeft;
            r6 = r10.getResourceId(r5, r6);
            r9.leftToLeft = r6;
            r6 = r9.leftToLeft;
            if (r6 != r0) goto L_0x03e0;
        L_0x0381:
            r5 = r10.getInt(r5, r0);
            r9.leftToLeft = r5;
            goto L_0x03e0;
        L_0x0388:
            r6 = r9.guidePercent;
            r5 = r10.getFloat(r5, r6);
            r9.guidePercent = r5;
            goto L_0x03e0;
        L_0x0391:
            r6 = r9.guideEnd;
            r5 = r10.getDimensionPixelOffset(r5, r6);
            r9.guideEnd = r5;
            goto L_0x03e0;
        L_0x039a:
            r6 = r9.guideBegin;
            r5 = r10.getDimensionPixelOffset(r5, r6);
            r9.guideBegin = r5;
            goto L_0x03e0;
        L_0x03a3:
            r6 = r9.circleAngle;
            r5 = r10.getFloat(r5, r6);
            r6 = 1135869952; // 0x43b40000 float:360.0 double:5.611943214E-315;
            r5 = r5 % r6;
            r9.circleAngle = r5;
            r5 = r9.circleAngle;
            r5 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1));
            if (r5 >= 0) goto L_0x03e0;
        L_0x03b4:
            r5 = r9.circleAngle;
            r5 = r6 - r5;
            r5 = r5 % r6;
            r9.circleAngle = r5;
            goto L_0x03e0;
        L_0x03bc:
            r6 = r9.circleRadius;
            r5 = r10.getDimensionPixelSize(r5, r6);
            r9.circleRadius = r5;
            goto L_0x03e0;
        L_0x03c5:
            r6 = r9.circleConstraint;
            r6 = r10.getResourceId(r5, r6);
            r9.circleConstraint = r6;
            r6 = r9.circleConstraint;
            if (r6 != r0) goto L_0x03e0;
        L_0x03d1:
            r5 = r10.getInt(r5, r0);
            r9.circleConstraint = r5;
            goto L_0x03e0;
        L_0x03d8:
            r6 = r9.orientation;
            r5 = r10.getInt(r5, r6);
            r9.orientation = r5;
        L_0x03e0:
            r3 = r3 + 1;
            goto L_0x009a;
        L_0x03e4:
            r10.recycle();
            r9.validate();
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.ConstraintLayout.LayoutParams.<init>(android.content.Context, android.util.AttributeSet):void");
        }

        public final void validate() {
            this.isGuideline = false;
            this.horizontalDimensionFixed = true;
            this.verticalDimensionFixed = true;
            if (this.width == -2 && this.constrainedWidth) {
                this.horizontalDimensionFixed = false;
                this.matchConstraintDefaultWidth = 1;
            }
            if (this.height == -2 && this.constrainedHeight) {
                this.verticalDimensionFixed = false;
                this.matchConstraintDefaultHeight = 1;
            }
            if (this.width == 0 || this.width == -1) {
                this.horizontalDimensionFixed = false;
                if (this.width == 0 && this.matchConstraintDefaultWidth == 1) {
                    this.width = -2;
                    this.constrainedWidth = true;
                }
            }
            if (this.height == 0 || this.height == -1) {
                this.verticalDimensionFixed = false;
                if (this.height == 0 && this.matchConstraintDefaultHeight == 1) {
                    this.height = -2;
                    this.constrainedHeight = true;
                }
            }
            if (this.guidePercent != -1.0f || this.guideBegin != -1 || this.guideEnd != -1) {
                this.isGuideline = true;
                this.horizontalDimensionFixed = true;
                this.verticalDimensionFixed = true;
                if (!(this.widget instanceof Guideline)) {
                    this.widget = new Guideline();
                }
                ((Guideline) this.widget).setOrientation(this.orientation);
            }
        }

        public LayoutParams() {
            super(-2, -2);
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        @TargetApi(17)
        public void resolveLayoutDirection(int i) {
            int i2 = this.leftMargin;
            int i3 = this.rightMargin;
            super.resolveLayoutDirection(i);
            this.resolvedRightToLeft = -1;
            this.resolvedRightToRight = -1;
            this.resolvedLeftToLeft = -1;
            this.resolvedLeftToRight = -1;
            this.resolveGoneLeftMargin = -1;
            this.resolveGoneRightMargin = -1;
            this.resolveGoneLeftMargin = this.goneLeftMargin;
            this.resolveGoneRightMargin = this.goneRightMargin;
            this.resolvedHorizontalBias = this.horizontalBias;
            this.resolvedGuideBegin = this.guideBegin;
            this.resolvedGuideEnd = this.guideEnd;
            this.resolvedGuidePercent = this.guidePercent;
            Object obj = null;
            if ((1 == getLayoutDirection() ? 1 : null) != null) {
                if (this.startToEnd != -1) {
                    this.resolvedRightToLeft = this.startToEnd;
                } else {
                    if (this.startToStart != -1) {
                        this.resolvedRightToRight = this.startToStart;
                    }
                    if (this.endToStart != -1) {
                        this.resolvedLeftToRight = this.endToStart;
                        obj = 1;
                    }
                    if (this.endToEnd != -1) {
                        this.resolvedLeftToLeft = this.endToEnd;
                        obj = 1;
                    }
                    if (this.goneStartMargin != -1) {
                        this.resolveGoneRightMargin = this.goneStartMargin;
                    }
                    if (this.goneEndMargin != -1) {
                        this.resolveGoneLeftMargin = this.goneEndMargin;
                    }
                    if (obj != null) {
                        this.resolvedHorizontalBias = 1.0f - this.horizontalBias;
                    }
                    if (this.isGuideline && this.orientation == 1) {
                        if (this.guidePercent != -1.0f) {
                            this.resolvedGuidePercent = 1.0f - this.guidePercent;
                            this.resolvedGuideBegin = -1;
                            this.resolvedGuideEnd = -1;
                        } else if (this.guideBegin != -1) {
                            this.resolvedGuideEnd = this.guideBegin;
                            this.resolvedGuideBegin = -1;
                            this.resolvedGuidePercent = -1.0f;
                        } else if (this.guideEnd != -1) {
                            this.resolvedGuideBegin = this.guideEnd;
                            this.resolvedGuideEnd = -1;
                            this.resolvedGuidePercent = -1.0f;
                        }
                    }
                }
                obj = 1;
                if (this.endToStart != -1) {
                    this.resolvedLeftToRight = this.endToStart;
                    obj = 1;
                }
                if (this.endToEnd != -1) {
                    this.resolvedLeftToLeft = this.endToEnd;
                    obj = 1;
                }
                if (this.goneStartMargin != -1) {
                    this.resolveGoneRightMargin = this.goneStartMargin;
                }
                if (this.goneEndMargin != -1) {
                    this.resolveGoneLeftMargin = this.goneEndMargin;
                }
                if (obj != null) {
                    this.resolvedHorizontalBias = 1.0f - this.horizontalBias;
                }
                if (this.guidePercent != -1.0f) {
                    this.resolvedGuidePercent = 1.0f - this.guidePercent;
                    this.resolvedGuideBegin = -1;
                    this.resolvedGuideEnd = -1;
                } else if (this.guideBegin != -1) {
                    this.resolvedGuideEnd = this.guideBegin;
                    this.resolvedGuideBegin = -1;
                    this.resolvedGuidePercent = -1.0f;
                } else if (this.guideEnd != -1) {
                    this.resolvedGuideBegin = this.guideEnd;
                    this.resolvedGuideEnd = -1;
                    this.resolvedGuidePercent = -1.0f;
                }
            } else {
                if (this.startToEnd != -1) {
                    this.resolvedLeftToRight = this.startToEnd;
                }
                if (this.startToStart != -1) {
                    this.resolvedLeftToLeft = this.startToStart;
                }
                if (this.endToStart != -1) {
                    this.resolvedRightToLeft = this.endToStart;
                }
                if (this.endToEnd != -1) {
                    this.resolvedRightToRight = this.endToEnd;
                }
                if (this.goneStartMargin != -1) {
                    this.resolveGoneLeftMargin = this.goneStartMargin;
                }
                if (this.goneEndMargin != -1) {
                    this.resolveGoneRightMargin = this.goneEndMargin;
                }
            }
            if (this.endToStart == -1 && this.endToEnd == -1 && this.startToStart == -1 && this.startToEnd == -1) {
                if (this.rightToLeft != -1) {
                    this.resolvedRightToLeft = this.rightToLeft;
                    if (this.rightMargin <= 0 && i3 > 0) {
                        this.rightMargin = i3;
                    }
                } else if (this.rightToRight != -1) {
                    this.resolvedRightToRight = this.rightToRight;
                    if (this.rightMargin <= 0 && i3 > 0) {
                        this.rightMargin = i3;
                    }
                }
                if (this.leftToLeft != -1) {
                    this.resolvedLeftToLeft = this.leftToLeft;
                    if (this.leftMargin <= 0 && i2 > 0) {
                        this.leftMargin = i2;
                    }
                } else if (this.leftToRight != -1) {
                    this.resolvedLeftToRight = this.leftToRight;
                    if (this.leftMargin <= 0 && i2 > 0) {
                        this.leftMargin = i2;
                    }
                }
            }
        }
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    private void setDesignInformation$51f9981a(Object obj, Object obj2) {
        if ((obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.mDesignIds == null) {
                this.mDesignIds = new HashMap();
            }
            obj = (String) obj;
            int indexOf = obj.indexOf("/");
            if (indexOf != -1) {
                obj = obj.substring(indexOf + 1);
            }
            this.mDesignIds.put(obj, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    public final Object getDesignInformation$6ae075e8(Object obj) {
        if (obj instanceof String) {
            String str = (String) obj;
            if (this.mDesignIds != null && this.mDesignIds.containsKey(str)) {
                return this.mDesignIds.get(str);
            }
        }
        return null;
    }

    public ConstraintLayout(Context context) {
        super(context);
        init(null);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(attributeSet);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet);
    }

    public void setId(int i) {
        this.mChildrenByIds.remove(getId());
        super.setId(i);
        this.mChildrenByIds.put(getId(), this);
    }

    private void init(android.util.AttributeSet r8) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r7 = this;
        r0 = r7.mLayoutWidget;
        r0.setCompanionWidget(r7);
        r0 = r7.mChildrenByIds;
        r1 = r7.getId();
        r0.put(r1, r7);
        r0 = 0;
        r7.mConstraintSet = r0;
        if (r8 == 0) goto L_0x008d;
    L_0x0013:
        r1 = r7.getContext();
        r2 = android.support.constraint.C0887R.styleable.ConstraintLayout_Layout;
        r8 = r1.obtainStyledAttributes(r8, r2);
        r1 = r8.getIndexCount();
        r2 = 0;
        r3 = r2;
    L_0x0023:
        if (r3 >= r1) goto L_0x008a;
    L_0x0025:
        r4 = r8.getIndex(r3);
        r5 = android.support.constraint.C0887R.styleable.ConstraintLayout_Layout_android_minWidth;
        if (r4 != r5) goto L_0x0036;
    L_0x002d:
        r5 = r7.mMinWidth;
        r4 = r8.getDimensionPixelOffset(r4, r5);
        r7.mMinWidth = r4;
        goto L_0x0087;
    L_0x0036:
        r5 = android.support.constraint.C0887R.styleable.ConstraintLayout_Layout_android_minHeight;
        if (r4 != r5) goto L_0x0043;
    L_0x003a:
        r5 = r7.mMinHeight;
        r4 = r8.getDimensionPixelOffset(r4, r5);
        r7.mMinHeight = r4;
        goto L_0x0087;
    L_0x0043:
        r5 = android.support.constraint.C0887R.styleable.ConstraintLayout_Layout_android_maxWidth;
        if (r4 != r5) goto L_0x0050;
    L_0x0047:
        r5 = r7.mMaxWidth;
        r4 = r8.getDimensionPixelOffset(r4, r5);
        r7.mMaxWidth = r4;
        goto L_0x0087;
    L_0x0050:
        r5 = android.support.constraint.C0887R.styleable.ConstraintLayout_Layout_android_maxHeight;
        if (r4 != r5) goto L_0x005d;
    L_0x0054:
        r5 = r7.mMaxHeight;
        r4 = r8.getDimensionPixelOffset(r4, r5);
        r7.mMaxHeight = r4;
        goto L_0x0087;
    L_0x005d:
        r5 = android.support.constraint.C0887R.styleable.ConstraintLayout_Layout_layout_optimizationLevel;
        if (r4 != r5) goto L_0x006a;
    L_0x0061:
        r5 = r7.mOptimizationLevel;
        r4 = r8.getInt(r4, r5);
        r7.mOptimizationLevel = r4;
        goto L_0x0087;
    L_0x006a:
        r5 = android.support.constraint.C0887R.styleable.ConstraintLayout_Layout_constraintSet;
        if (r4 != r5) goto L_0x0087;
    L_0x006e:
        r4 = r8.getResourceId(r4, r2);
        r5 = new android.support.constraint.ConstraintSet;	 Catch:{ NotFoundException -> 0x0083 }
        r5.<init>();	 Catch:{ NotFoundException -> 0x0083 }
        r7.mConstraintSet = r5;	 Catch:{ NotFoundException -> 0x0083 }
        r5 = r7.mConstraintSet;	 Catch:{ NotFoundException -> 0x0083 }
        r6 = r7.getContext();	 Catch:{ NotFoundException -> 0x0083 }
        r5.load(r6, r4);	 Catch:{ NotFoundException -> 0x0083 }
        goto L_0x0085;
    L_0x0083:
        r7.mConstraintSet = r0;
    L_0x0085:
        r7.mConstraintSetId = r4;
    L_0x0087:
        r3 = r3 + 1;
        goto L_0x0023;
    L_0x008a:
        r8.recycle();
    L_0x008d:
        r8 = r7.mLayoutWidget;
        r0 = r7.mOptimizationLevel;
        r8.setOptimizationLevel(r0);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.ConstraintLayout.init(android.util.AttributeSet):void");
    }

    public void addView(View view, int i, android.view.ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (VERSION.SDK_INT < 14) {
            onViewAdded(view);
        }
    }

    public void removeView(View view) {
        super.removeView(view);
        if (VERSION.SDK_INT < 14) {
            onViewRemoved(view);
        }
    }

    public void onViewAdded(View view) {
        if (VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        ConstraintWidgetContainer constraintWidgetContainer = view == this ? this.mLayoutWidget : view == null ? null : ((LayoutParams) view.getLayoutParams()).widget;
        if ((view instanceof Guideline) && !(r0 instanceof Guideline)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            layoutParams.widget = new Guideline();
            layoutParams.isGuideline = true;
            ((Guideline) layoutParams.widget).setOrientation(layoutParams.orientation);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.validateParams();
            ((LayoutParams) view.getLayoutParams()).isHelper = true;
            if (!this.mConstraintHelpers.contains(constraintHelper)) {
                this.mConstraintHelpers.add(constraintHelper);
            }
        }
        this.mChildrenByIds.put(view.getId(), view);
        this.mDirtyHierarchy = true;
    }

    public void onViewRemoved(View view) {
        if (VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.mChildrenByIds.remove(view.getId());
        ConstraintWidget constraintWidget = view == this ? this.mLayoutWidget : view == null ? null : ((LayoutParams) view.getLayoutParams()).widget;
        this.mLayoutWidget.remove(constraintWidget);
        this.mConstraintHelpers.remove(view);
        this.mVariableDimensionsWidgets.remove(constraintWidget);
        this.mDirtyHierarchy = true;
    }

    private final ConstraintWidget getTargetWidget(int i) {
        if (i == 0) {
            return this.mLayoutWidget;
        }
        View view = (View) this.mChildrenByIds.get(i);
        if (view == this) {
            return this.mLayoutWidget;
        }
        if (view == null) {
            return 0;
        }
        return ((LayoutParams) view.getLayoutParams()).widget;
    }

    protected void onMeasure(int r50, int r51) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r49 = this;
        r0 = r49;
        r1 = r50;
        r2 = r51;
        java.lang.System.currentTimeMillis();
        r3 = android.view.View.MeasureSpec.getMode(r50);
        r4 = android.view.View.MeasureSpec.getSize(r50);
        r5 = android.view.View.MeasureSpec.getMode(r51);
        r6 = android.view.View.MeasureSpec.getSize(r51);
        r0.mLastMeasureWidthMode = r3;
        r0.mLastMeasureHeightMode = r5;
        r0.mLastMeasureWidthSize = r4;
        r0.mLastMeasureHeightSize = r6;
        r3 = r49.getPaddingLeft();
        r4 = r49.getPaddingTop();
        r5 = r0.mLayoutWidget;
        r5.setX(r3);
        r5 = r0.mLayoutWidget;
        r5.setY(r4);
        r5 = r0.mLayoutWidget;
        r6 = r0.mMaxWidth;
        r5.setMaxWidth(r6);
        r5 = r0.mLayoutWidget;
        r6 = r0.mMaxHeight;
        r5.setMaxHeight(r6);
        r5 = android.os.Build.VERSION.SDK_INT;
        r6 = 17;
        r7 = 0;
        r8 = 1;
        if (r5 < r6) goto L_0x0057;
    L_0x0049:
        r5 = r0.mLayoutWidget;
        r9 = r49.getLayoutDirection();
        if (r9 != r8) goto L_0x0053;
    L_0x0051:
        r9 = r8;
        goto L_0x0054;
    L_0x0053:
        r9 = r7;
    L_0x0054:
        r5.setRtl(r9);
    L_0x0057:
        r5 = android.view.View.MeasureSpec.getMode(r50);
        r9 = android.view.View.MeasureSpec.getSize(r50);
        r10 = android.view.View.MeasureSpec.getMode(r51);
        r11 = android.view.View.MeasureSpec.getSize(r51);
        r12 = r49.getPaddingTop();
        r13 = r49.getPaddingBottom();
        r12 = r12 + r13;
        r13 = r49.getPaddingLeft();
        r14 = r49.getPaddingRight();
        r13 = r13 + r14;
        r14 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.FIXED;
        r15 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.FIXED;
        r49.getLayoutParams();
        r8 = -2147483648; // 0xffffffff80000000 float:-0.0 double:NaN;
        r6 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        if (r5 == r8) goto L_0x0097;
    L_0x0086:
        if (r5 == 0) goto L_0x0094;
    L_0x0088:
        if (r5 == r6) goto L_0x008c;
    L_0x008a:
        r5 = r7;
        goto L_0x009a;
    L_0x008c:
        r5 = r0.mMaxWidth;
        r5 = java.lang.Math.min(r5, r9);
        r5 = r5 - r13;
        goto L_0x009a;
    L_0x0094:
        r14 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        goto L_0x008a;
    L_0x0097:
        r14 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        r5 = r9;
    L_0x009a:
        if (r10 == r8) goto L_0x00ae;
    L_0x009c:
        if (r10 == 0) goto L_0x00ab;
    L_0x009e:
        if (r10 == r6) goto L_0x00a2;
    L_0x00a0:
        r11 = r7;
        goto L_0x00b0;
    L_0x00a2:
        r8 = r0.mMaxHeight;
        r8 = java.lang.Math.min(r8, r11);
        r8 = r8 - r12;
        r11 = r8;
        goto L_0x00b0;
    L_0x00ab:
        r15 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        goto L_0x00a0;
    L_0x00ae:
        r15 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
    L_0x00b0:
        r8 = r0.mLayoutWidget;
        r8.setMinWidth(r7);
        r8 = r0.mLayoutWidget;
        r8.setMinHeight(r7);
        r8 = r0.mLayoutWidget;
        r8.setHorizontalDimensionBehaviour(r14);
        r8 = r0.mLayoutWidget;
        r8.setWidth(r5);
        r5 = r0.mLayoutWidget;
        r5.setVerticalDimensionBehaviour(r15);
        r5 = r0.mLayoutWidget;
        r5.setHeight(r11);
        r5 = r0.mLayoutWidget;
        r8 = r0.mMinWidth;
        r9 = r49.getPaddingLeft();
        r8 = r8 - r9;
        r9 = r49.getPaddingRight();
        r8 = r8 - r9;
        r5.setMinWidth(r8);
        r5 = r0.mLayoutWidget;
        r8 = r0.mMinHeight;
        r9 = r49.getPaddingTop();
        r8 = r8 - r9;
        r9 = r49.getPaddingBottom();
        r8 = r8 - r9;
        r5.setMinHeight(r8);
        r5 = r0.mLayoutWidget;
        r5 = r5.getWidth();
        r8 = r0.mLayoutWidget;
        r8 = r8.getHeight();
        r9 = r0.mDirtyHierarchy;
        r10 = 8;
        r11 = -1;
        if (r9 == 0) goto L_0x0605;
    L_0x0103:
        r0.mDirtyHierarchy = r7;
        r9 = r49.getChildCount();
        r12 = r7;
    L_0x010a:
        if (r12 >= r9) goto L_0x011b;
    L_0x010c:
        r13 = r0.getChildAt(r12);
        r13 = r13.isLayoutRequested();
        if (r13 == 0) goto L_0x0118;
    L_0x0116:
        r9 = 1;
        goto L_0x011c;
    L_0x0118:
        r12 = r12 + 1;
        goto L_0x010a;
    L_0x011b:
        r9 = r7;
    L_0x011c:
        if (r9 == 0) goto L_0x0605;
    L_0x011e:
        r9 = r0.mVariableDimensionsWidgets;
        r9.clear();
        r9 = r49.isInEditMode();
        r12 = r49.getChildCount();
        if (r9 == 0) goto L_0x0169;
    L_0x012d:
        r13 = r7;
    L_0x012e:
        if (r13 >= r12) goto L_0x0169;
    L_0x0130:
        r14 = r0.getChildAt(r13);
        r15 = r49.getResources();	 Catch:{ NotFoundException -> 0x0164 }
        r6 = r14.getId();	 Catch:{ NotFoundException -> 0x0164 }
        r6 = r15.getResourceName(r6);	 Catch:{ NotFoundException -> 0x0164 }
        r15 = r14.getId();	 Catch:{ NotFoundException -> 0x0164 }
        r15 = java.lang.Integer.valueOf(r15);	 Catch:{ NotFoundException -> 0x0164 }
        r0.setDesignInformation$51f9981a(r6, r15);	 Catch:{ NotFoundException -> 0x0164 }
        r15 = 47;	 Catch:{ NotFoundException -> 0x0164 }
        r15 = r6.indexOf(r15);	 Catch:{ NotFoundException -> 0x0164 }
        if (r15 == r11) goto L_0x0159;	 Catch:{ NotFoundException -> 0x0164 }
    L_0x0153:
        r15 = r15 + 1;	 Catch:{ NotFoundException -> 0x0164 }
        r6 = r6.substring(r15);	 Catch:{ NotFoundException -> 0x0164 }
    L_0x0159:
        r14 = r14.getId();	 Catch:{ NotFoundException -> 0x0164 }
        r14 = r0.getTargetWidget(r14);	 Catch:{ NotFoundException -> 0x0164 }
        r14.setDebugName(r6);	 Catch:{ NotFoundException -> 0x0164 }
    L_0x0164:
        r13 = r13 + 1;
        r6 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        goto L_0x012e;
    L_0x0169:
        r6 = r7;
    L_0x016a:
        if (r6 >= r12) goto L_0x0189;
    L_0x016c:
        r14 = r0.getChildAt(r6);
        if (r14 != r0) goto L_0x0175;
    L_0x0172:
        r13 = r0.mLayoutWidget;
        goto L_0x0181;
    L_0x0175:
        if (r14 != 0) goto L_0x0179;
    L_0x0177:
        r13 = 0;
        goto L_0x0181;
    L_0x0179:
        r13 = r14.getLayoutParams();
        r13 = (android.support.constraint.ConstraintLayout.LayoutParams) r13;
        r13 = r13.widget;
    L_0x0181:
        if (r13 == 0) goto L_0x0186;
    L_0x0183:
        r13.reset();
    L_0x0186:
        r6 = r6 + 1;
        goto L_0x016a;
    L_0x0189:
        r6 = r0.mConstraintSetId;
        if (r6 == r11) goto L_0x01b9;
    L_0x018d:
        r6 = r7;
    L_0x018e:
        if (r6 >= r12) goto L_0x01b9;
    L_0x0190:
        r14 = r0.getChildAt(r6);
        r15 = r14.getId();
        r13 = r0.mConstraintSetId;
        if (r15 != r13) goto L_0x01b6;
    L_0x019c:
        r13 = r14 instanceof android.support.constraint.Constraints;
        if (r13 == 0) goto L_0x01b6;
    L_0x01a0:
        r14 = (android.support.constraint.Constraints) r14;
        r13 = r14.myConstraintSet;
        if (r13 != 0) goto L_0x01ad;
    L_0x01a6:
        r13 = new android.support.constraint.ConstraintSet;
        r13.<init>();
        r14.myConstraintSet = r13;
    L_0x01ad:
        r13 = r14.myConstraintSet;
        r13.clone(r14);
        r13 = r14.myConstraintSet;
        r0.mConstraintSet = r13;
    L_0x01b6:
        r6 = r6 + 1;
        goto L_0x018e;
    L_0x01b9:
        r6 = r0.mConstraintSet;
        if (r6 == 0) goto L_0x01c2;
    L_0x01bd:
        r6 = r0.mConstraintSet;
        r6.applyToInternal(r0);
    L_0x01c2:
        r6 = r0.mLayoutWidget;
        r6.removeAllChildren();
        r6 = r0.mConstraintHelpers;
        r6 = r6.size();
        if (r6 <= 0) goto L_0x01e0;
    L_0x01cf:
        r13 = r7;
    L_0x01d0:
        if (r13 >= r6) goto L_0x01e0;
    L_0x01d2:
        r14 = r0.mConstraintHelpers;
        r14 = r14.get(r13);
        r14 = (android.support.constraint.ConstraintHelper) r14;
        r14.updatePreLayout(r0);
        r13 = r13 + 1;
        goto L_0x01d0;
    L_0x01e0:
        r6 = r7;
    L_0x01e1:
        if (r6 >= r12) goto L_0x01f3;
    L_0x01e3:
        r13 = r0.getChildAt(r6);
        r14 = r13 instanceof android.support.constraint.Placeholder;
        if (r14 == 0) goto L_0x01f0;
    L_0x01eb:
        r13 = (android.support.constraint.Placeholder) r13;
        r13.updatePreLayout(r0);
    L_0x01f0:
        r6 = r6 + 1;
        goto L_0x01e1;
    L_0x01f3:
        r6 = r7;
    L_0x01f4:
        if (r6 >= r12) goto L_0x0605;
    L_0x01f6:
        r13 = r0.getChildAt(r6);
        if (r13 != r0) goto L_0x01ff;
    L_0x01fc:
        r14 = r0.mLayoutWidget;
        goto L_0x020b;
    L_0x01ff:
        if (r13 != 0) goto L_0x0203;
    L_0x0201:
        r14 = 0;
        goto L_0x020b;
    L_0x0203:
        r14 = r13.getLayoutParams();
        r14 = (android.support.constraint.ConstraintLayout.LayoutParams) r14;
        r14 = r14.widget;
    L_0x020b:
        if (r14 == 0) goto L_0x05f0;
    L_0x020d:
        r15 = r13.getLayoutParams();
        r15 = (android.support.constraint.ConstraintLayout.LayoutParams) r15;
        r15.validate();
        if (r9 == 0) goto L_0x0246;
    L_0x0218:
        r7 = r49.getResources();	 Catch:{ NotFoundException -> 0x0246 }
        r11 = r13.getId();	 Catch:{ NotFoundException -> 0x0246 }
        r7 = r7.getResourceName(r11);	 Catch:{ NotFoundException -> 0x0246 }
        r11 = r13.getId();	 Catch:{ NotFoundException -> 0x0246 }
        r11 = java.lang.Integer.valueOf(r11);	 Catch:{ NotFoundException -> 0x0246 }
        r0.setDesignInformation$51f9981a(r7, r11);	 Catch:{ NotFoundException -> 0x0246 }
        r11 = "id/";	 Catch:{ NotFoundException -> 0x0246 }
        r11 = r7.indexOf(r11);	 Catch:{ NotFoundException -> 0x0246 }
        r11 = r11 + 3;	 Catch:{ NotFoundException -> 0x0246 }
        r7 = r7.substring(r11);	 Catch:{ NotFoundException -> 0x0246 }
        r11 = r13.getId();	 Catch:{ NotFoundException -> 0x0246 }
        r11 = r0.getTargetWidget(r11);	 Catch:{ NotFoundException -> 0x0246 }
        r11.setDebugName(r7);	 Catch:{ NotFoundException -> 0x0246 }
    L_0x0246:
        r7 = r13.getVisibility();
        r14.setVisibility(r7);
        r7 = r15.isInPlaceholder;
        if (r7 == 0) goto L_0x0254;
    L_0x0251:
        r14.setVisibility(r10);
    L_0x0254:
        r14.setCompanionWidget(r13);
        r7 = r0.mLayoutWidget;
        r7.add(r14);
        r7 = r15.verticalDimensionFixed;
        if (r7 == 0) goto L_0x0264;
    L_0x0260:
        r7 = r15.horizontalDimensionFixed;
        if (r7 != 0) goto L_0x0269;
    L_0x0264:
        r7 = r0.mVariableDimensionsWidgets;
        r7.add(r14);
    L_0x0269:
        r7 = r15.isGuideline;
        if (r7 == 0) goto L_0x02a5;
    L_0x026d:
        r14 = (android.support.constraint.solver.widgets.Guideline) r14;
        r7 = r15.resolvedGuideBegin;
        r11 = r15.resolvedGuideEnd;
        r13 = r15.resolvedGuidePercent;
        r10 = android.os.Build.VERSION.SDK_INT;
        r19 = r7;
        r7 = 17;
        if (r10 >= r7) goto L_0x0284;
    L_0x027d:
        r7 = r15.guideBegin;
        r11 = r15.guideEnd;
        r13 = r15.guidePercent;
        goto L_0x0286;
    L_0x0284:
        r7 = r19;
    L_0x0286:
        r10 = -1082130432; // 0xffffffffbf800000 float:-1.0 double:NaN;
        r10 = (r13 > r10 ? 1 : (r13 == r10 ? 0 : -1));
        if (r10 == 0) goto L_0x0298;
    L_0x028c:
        r14.setGuidePercent(r13);
    L_0x028f:
        r37 = r3;
        r38 = r4;
        r25 = r12;
        r10 = 0;
        goto L_0x05f7;
    L_0x0298:
        r10 = -1;
        if (r7 == r10) goto L_0x029f;
    L_0x029b:
        r14.setGuideBegin(r7);
        goto L_0x028f;
    L_0x029f:
        if (r11 == r10) goto L_0x028f;
    L_0x02a1:
        r14.setGuideEnd(r11);
        goto L_0x028f;
    L_0x02a5:
        r10 = -1;
        r7 = r15.leftToLeft;
        if (r7 != r10) goto L_0x02ee;
    L_0x02aa:
        r7 = r15.leftToRight;
        if (r7 != r10) goto L_0x02ee;
    L_0x02ae:
        r7 = r15.rightToLeft;
        if (r7 != r10) goto L_0x02ee;
    L_0x02b2:
        r7 = r15.rightToRight;
        if (r7 != r10) goto L_0x02ee;
    L_0x02b6:
        r7 = r15.startToStart;
        if (r7 != r10) goto L_0x02ee;
    L_0x02ba:
        r7 = r15.startToEnd;
        if (r7 != r10) goto L_0x02ee;
    L_0x02be:
        r7 = r15.endToStart;
        if (r7 != r10) goto L_0x02ee;
    L_0x02c2:
        r7 = r15.endToEnd;
        if (r7 != r10) goto L_0x02ee;
    L_0x02c6:
        r7 = r15.topToTop;
        if (r7 != r10) goto L_0x02ee;
    L_0x02ca:
        r7 = r15.topToBottom;
        if (r7 != r10) goto L_0x02ee;
    L_0x02ce:
        r7 = r15.bottomToTop;
        if (r7 != r10) goto L_0x02ee;
    L_0x02d2:
        r7 = r15.bottomToBottom;
        if (r7 != r10) goto L_0x02ee;
    L_0x02d6:
        r7 = r15.baselineToBaseline;
        if (r7 != r10) goto L_0x02ee;
    L_0x02da:
        r7 = r15.editorAbsoluteX;
        if (r7 != r10) goto L_0x02ee;
    L_0x02de:
        r7 = r15.editorAbsoluteY;
        if (r7 != r10) goto L_0x02ee;
    L_0x02e2:
        r7 = r15.circleConstraint;
        if (r7 != r10) goto L_0x02ee;
    L_0x02e6:
        r7 = r15.width;
        if (r7 == r10) goto L_0x02ee;
    L_0x02ea:
        r7 = r15.height;
        if (r7 != r10) goto L_0x028f;
    L_0x02ee:
        r7 = r15.resolvedLeftToLeft;
        r10 = r15.resolvedLeftToRight;
        r11 = r15.resolvedRightToLeft;
        r13 = r15.resolvedRightToRight;
        r20 = r7;
        r7 = r15.resolveGoneLeftMargin;
        r21 = r7;
        r7 = r15.resolveGoneRightMargin;
        r22 = r7;
        r7 = r15.resolvedHorizontalBias;
        r23 = r7;
        r7 = android.os.Build.VERSION.SDK_INT;
        r24 = r10;
        r10 = 17;
        if (r7 >= r10) goto L_0x0369;
    L_0x030c:
        r7 = r15.leftToLeft;
        r11 = r15.leftToRight;
        r13 = r15.rightToLeft;
        r10 = r15.rightToRight;
        r25 = r12;
        r12 = r15.goneLeftMargin;
        r26 = r12;
        r12 = r15.goneRightMargin;
        r27 = r12;
        r12 = r15.horizontalBias;
        r28 = r12;
        r12 = -1;
        if (r7 != r12) goto L_0x0338;
    L_0x0325:
        if (r11 != r12) goto L_0x0338;
    L_0x0327:
        r29 = r7;
        r7 = r15.startToStart;
        if (r7 == r12) goto L_0x0330;
    L_0x032d:
        r7 = r15.startToStart;
        goto L_0x033c;
    L_0x0330:
        r7 = r15.startToEnd;
        if (r7 == r12) goto L_0x033a;
    L_0x0334:
        r7 = r15.startToEnd;
        r11 = r7;
        goto L_0x033a;
    L_0x0338:
        r29 = r7;
    L_0x033a:
        r7 = r29;
    L_0x033c:
        if (r13 != r12) goto L_0x035a;
    L_0x033e:
        if (r10 != r12) goto L_0x035a;
    L_0x0340:
        r30 = r7;
        r7 = r15.endToStart;
        if (r7 == r12) goto L_0x034e;
    L_0x0346:
        r7 = r15.endToStart;
        r37 = r3;
        r38 = r4;
        r13 = r7;
        goto L_0x0360;
    L_0x034e:
        r7 = r15.endToEnd;
        if (r7 == r12) goto L_0x035c;
    L_0x0352:
        r7 = r15.endToEnd;
        r37 = r3;
        r38 = r4;
        r10 = r7;
        goto L_0x0360;
    L_0x035a:
        r30 = r7;
    L_0x035c:
        r37 = r3;
        r38 = r4;
    L_0x0360:
        r29 = r26;
        r33 = r27;
        r3 = r28;
        r7 = r30;
        goto L_0x037c;
    L_0x0369:
        r25 = r12;
        r12 = -1;
        r37 = r3;
        r38 = r4;
        r10 = r13;
        r7 = r20;
        r29 = r21;
        r33 = r22;
        r3 = r23;
        r13 = r11;
        r11 = r24;
    L_0x037c:
        r4 = r15.circleConstraint;
        if (r4 == r12) goto L_0x0391;
    L_0x0380:
        r3 = r15.circleConstraint;
        r3 = r0.getTargetWidget(r3);
        if (r3 == 0) goto L_0x053a;
    L_0x0388:
        r4 = r15.circleAngle;
        r7 = r15.circleRadius;
        r14.connectCircularConstraint(r3, r4, r7);
        goto L_0x053a;
    L_0x0391:
        if (r7 == r12) goto L_0x03b4;
    L_0x0393:
        r4 = r0.getTargetWidget(r7);
        if (r4 == 0) goto L_0x03b2;
    L_0x0399:
        r7 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        r11 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        r12 = r15.leftMargin;
        r26 = r14.getAnchor(r7);
        r27 = r4.getAnchor(r11);
        r30 = android.support.constraint.solver.widgets.ConstraintAnchor.Strength.STRONG;
        r31 = 0;
        r32 = 1;
        r28 = r12;
        r26.connect(r27, r28, r29, r30, r31, r32);
    L_0x03b2:
        r4 = -1;
        goto L_0x03d7;
    L_0x03b4:
        r4 = r12;
        if (r11 == r4) goto L_0x03d7;
    L_0x03b7:
        r4 = r0.getTargetWidget(r11);
        if (r4 == 0) goto L_0x03b2;
    L_0x03bd:
        r7 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        r11 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        r12 = r15.leftMargin;
        r26 = r14.getAnchor(r7);
        r27 = r4.getAnchor(r11);
        r30 = android.support.constraint.solver.widgets.ConstraintAnchor.Strength.STRONG;
        r31 = 0;
        r32 = 1;
        r28 = r12;
        r26.connect(r27, r28, r29, r30, r31, r32);
        goto L_0x03b2;
    L_0x03d7:
        if (r13 == r4) goto L_0x03f9;
    L_0x03d9:
        r4 = r0.getTargetWidget(r13);
        if (r4 == 0) goto L_0x041a;
    L_0x03df:
        r7 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        r10 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        r11 = r15.rightMargin;
        r30 = r14.getAnchor(r7);
        r31 = r4.getAnchor(r10);
        r34 = android.support.constraint.solver.widgets.ConstraintAnchor.Strength.STRONG;
        r35 = 0;
        r36 = 1;
        r32 = r11;
        r30.connect(r31, r32, r33, r34, r35, r36);
        goto L_0x041a;
    L_0x03f9:
        if (r10 == r4) goto L_0x041a;
    L_0x03fb:
        r4 = r0.getTargetWidget(r10);
        if (r4 == 0) goto L_0x041a;
    L_0x0401:
        r7 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        r10 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        r11 = r15.rightMargin;
        r30 = r14.getAnchor(r7);
        r31 = r4.getAnchor(r10);
        r34 = android.support.constraint.solver.widgets.ConstraintAnchor.Strength.STRONG;
        r35 = 0;
        r36 = 1;
        r32 = r11;
        r30.connect(r31, r32, r33, r34, r35, r36);
    L_0x041a:
        r4 = r15.topToTop;
        r7 = -1;
        if (r4 == r7) goto L_0x0445;
    L_0x041f:
        r4 = r15.topToTop;
        r4 = r0.getTargetWidget(r4);
        if (r4 == 0) goto L_0x046f;
    L_0x0427:
        r7 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r10 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r11 = r15.topMargin;
        r12 = r15.goneTopMargin;
        r26 = r14.getAnchor(r7);
        r27 = r4.getAnchor(r10);
        r30 = android.support.constraint.solver.widgets.ConstraintAnchor.Strength.STRONG;
        r31 = 0;
        r32 = 1;
        r28 = r11;
        r29 = r12;
        r26.connect(r27, r28, r29, r30, r31, r32);
        goto L_0x046f;
    L_0x0445:
        r4 = r15.topToBottom;
        r7 = -1;
        if (r4 == r7) goto L_0x046f;
    L_0x044a:
        r4 = r15.topToBottom;
        r4 = r0.getTargetWidget(r4);
        if (r4 == 0) goto L_0x046f;
    L_0x0452:
        r7 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r10 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r11 = r15.topMargin;
        r12 = r15.goneTopMargin;
        r26 = r14.getAnchor(r7);
        r27 = r4.getAnchor(r10);
        r30 = android.support.constraint.solver.widgets.ConstraintAnchor.Strength.STRONG;
        r31 = 0;
        r32 = 1;
        r28 = r11;
        r29 = r12;
        r26.connect(r27, r28, r29, r30, r31, r32);
    L_0x046f:
        r4 = r15.bottomToTop;
        r7 = -1;
        if (r4 == r7) goto L_0x049a;
    L_0x0474:
        r4 = r15.bottomToTop;
        r4 = r0.getTargetWidget(r4);
        if (r4 == 0) goto L_0x04c4;
    L_0x047c:
        r7 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r10 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r11 = r15.bottomMargin;
        r12 = r15.goneBottomMargin;
        r26 = r14.getAnchor(r7);
        r27 = r4.getAnchor(r10);
        r30 = android.support.constraint.solver.widgets.ConstraintAnchor.Strength.STRONG;
        r31 = 0;
        r32 = 1;
        r28 = r11;
        r29 = r12;
        r26.connect(r27, r28, r29, r30, r31, r32);
        goto L_0x04c4;
    L_0x049a:
        r4 = r15.bottomToBottom;
        r7 = -1;
        if (r4 == r7) goto L_0x04c4;
    L_0x049f:
        r4 = r15.bottomToBottom;
        r4 = r0.getTargetWidget(r4);
        if (r4 == 0) goto L_0x04c4;
    L_0x04a7:
        r7 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r10 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r11 = r15.bottomMargin;
        r12 = r15.goneBottomMargin;
        r26 = r14.getAnchor(r7);
        r27 = r4.getAnchor(r10);
        r30 = android.support.constraint.solver.widgets.ConstraintAnchor.Strength.STRONG;
        r31 = 0;
        r32 = 1;
        r28 = r11;
        r29 = r12;
        r26.connect(r27, r28, r29, r30, r31, r32);
    L_0x04c4:
        r4 = r15.baselineToBaseline;
        r7 = -1;
        if (r4 == r7) goto L_0x051b;
    L_0x04c9:
        r4 = r0.mChildrenByIds;
        r7 = r15.baselineToBaseline;
        r4 = r4.get(r7);
        r4 = (android.view.View) r4;
        r7 = r15.baselineToBaseline;
        r7 = r0.getTargetWidget(r7);
        if (r7 == 0) goto L_0x051b;
    L_0x04db:
        if (r4 == 0) goto L_0x051b;
    L_0x04dd:
        r10 = r4.getLayoutParams();
        r10 = r10 instanceof android.support.constraint.ConstraintLayout.LayoutParams;
        if (r10 == 0) goto L_0x051b;
    L_0x04e5:
        r4 = r4.getLayoutParams();
        r4 = (android.support.constraint.ConstraintLayout.LayoutParams) r4;
        r10 = 1;
        r15.needsBaseline = r10;
        r4.needsBaseline = r10;
        r4 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BASELINE;
        r26 = r14.getAnchor(r4);
        r4 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BASELINE;
        r27 = r7.getAnchor(r4);
        r28 = 0;
        r29 = -1;
        r30 = android.support.constraint.solver.widgets.ConstraintAnchor.Strength.STRONG;
        r31 = 0;
        r32 = 1;
        r26.connect(r27, r28, r29, r30, r31, r32);
        r4 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r4 = r14.getAnchor(r4);
        r4.reset();
        r4 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r4 = r14.getAnchor(r4);
        r4.reset();
    L_0x051b:
        r4 = 0;
        r7 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1));
        r10 = 1056964608; // 0x3f000000 float:0.5 double:5.222099017E-315;
        if (r7 < 0) goto L_0x0529;
    L_0x0522:
        r7 = (r3 > r10 ? 1 : (r3 == r10 ? 0 : -1));
        if (r7 == 0) goto L_0x0529;
    L_0x0526:
        r14.setHorizontalBiasPercent(r3);
    L_0x0529:
        r3 = r15.verticalBias;
        r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1));
        if (r3 < 0) goto L_0x053a;
    L_0x052f:
        r3 = r15.verticalBias;
        r3 = (r3 > r10 ? 1 : (r3 == r10 ? 0 : -1));
        if (r3 == 0) goto L_0x053a;
    L_0x0535:
        r3 = r15.verticalBias;
        r14.setVerticalBiasPercent(r3);
    L_0x053a:
        if (r9 == 0) goto L_0x054c;
    L_0x053c:
        r3 = r15.editorAbsoluteX;
        r4 = -1;
        if (r3 != r4) goto L_0x0545;
    L_0x0541:
        r3 = r15.editorAbsoluteY;
        if (r3 == r4) goto L_0x054c;
    L_0x0545:
        r3 = r15.editorAbsoluteX;
        r4 = r15.editorAbsoluteY;
        r14.setOrigin(r3, r4);
    L_0x054c:
        r3 = r15.horizontalDimensionFixed;
        if (r3 != 0) goto L_0x0579;
    L_0x0550:
        r3 = r15.width;
        r4 = -1;
        if (r3 != r4) goto L_0x056f;
    L_0x0555:
        r3 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
        r14.setHorizontalDimensionBehaviour(r3);
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        r3 = r14.getAnchor(r3);
        r4 = r15.leftMargin;
        r3.mMargin = r4;
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        r3 = r14.getAnchor(r3);
        r4 = r15.rightMargin;
        r3.mMargin = r4;
        goto L_0x0583;
    L_0x056f:
        r3 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        r14.setHorizontalDimensionBehaviour(r3);
        r3 = 0;
        r14.setWidth(r3);
        goto L_0x0583;
    L_0x0579:
        r3 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.FIXED;
        r14.setHorizontalDimensionBehaviour(r3);
        r3 = r15.width;
        r14.setWidth(r3);
    L_0x0583:
        r3 = r15.verticalDimensionFixed;
        if (r3 != 0) goto L_0x05b1;
    L_0x0587:
        r3 = r15.height;
        r4 = -1;
        if (r3 != r4) goto L_0x05a7;
    L_0x058c:
        r3 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_PARENT;
        r14.setVerticalDimensionBehaviour(r3);
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r3 = r14.getAnchor(r3);
        r4 = r15.topMargin;
        r3.mMargin = r4;
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r3 = r14.getAnchor(r3);
        r4 = r15.bottomMargin;
        r3.mMargin = r4;
        r10 = 0;
        goto L_0x05bc;
    L_0x05a7:
        r3 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        r14.setVerticalDimensionBehaviour(r3);
        r10 = 0;
        r14.setHeight(r10);
        goto L_0x05bc;
    L_0x05b1:
        r10 = 0;
        r3 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.FIXED;
        r14.setVerticalDimensionBehaviour(r3);
        r3 = r15.height;
        r14.setHeight(r3);
    L_0x05bc:
        r3 = r15.dimensionRatio;
        if (r3 == 0) goto L_0x05c5;
    L_0x05c0:
        r3 = r15.dimensionRatio;
        r14.setDimensionRatio(r3);
    L_0x05c5:
        r3 = r15.horizontalWeight;
        r14.setHorizontalWeight(r3);
        r3 = r15.verticalWeight;
        r14.setVerticalWeight(r3);
        r3 = r15.horizontalChainStyle;
        r14.setHorizontalChainStyle(r3);
        r3 = r15.verticalChainStyle;
        r14.setVerticalChainStyle(r3);
        r3 = r15.matchConstraintDefaultWidth;
        r4 = r15.matchConstraintMinWidth;
        r7 = r15.matchConstraintMaxWidth;
        r11 = r15.matchConstraintPercentWidth;
        r14.setHorizontalMatchStyle(r3, r4, r7, r11);
        r3 = r15.matchConstraintDefaultHeight;
        r4 = r15.matchConstraintMinHeight;
        r7 = r15.matchConstraintMaxHeight;
        r11 = r15.matchConstraintPercentHeight;
        r14.setVerticalMatchStyle(r3, r4, r7, r11);
        goto L_0x05f7;
    L_0x05f0:
        r37 = r3;
        r38 = r4;
        r10 = r7;
        r25 = r12;
    L_0x05f7:
        r6 = r6 + 1;
        r7 = r10;
        r12 = r25;
        r3 = r37;
        r4 = r38;
        r10 = 8;
        r11 = -1;
        goto L_0x01f4;
    L_0x0605:
        r37 = r3;
        r38 = r4;
        r10 = r7;
        r3 = r0.mOptimizationLevel;
        r4 = 8;
        r3 = r3 & r4;
        if (r3 != r4) goto L_0x0613;
    L_0x0611:
        r3 = 1;
        goto L_0x0614;
    L_0x0613:
        r3 = r10;
    L_0x0614:
        r4 = -2;
        if (r3 == 0) goto L_0x08d5;
    L_0x0617:
        r6 = r0.mLayoutWidget;
        r6.preOptimize();
        r6 = r0.mLayoutWidget;
        r6.optimizeForDimensions(r5, r8);
        r6 = r49.getPaddingTop();
        r7 = r49.getPaddingBottom();
        r6 = r6 + r7;
        r7 = r49.getPaddingLeft();
        r9 = r49.getPaddingRight();
        r7 = r7 + r9;
        r9 = r49.getChildCount();
        r11 = r10;
    L_0x0638:
        if (r11 >= r9) goto L_0x06f5;
    L_0x063a:
        r12 = r0.getChildAt(r11);
        r13 = r12.getVisibility();
        r14 = 8;
        if (r13 == r14) goto L_0x06e8;
    L_0x0646:
        r13 = r12.getLayoutParams();
        r13 = (android.support.constraint.ConstraintLayout.LayoutParams) r13;
        r14 = r13.widget;
        r15 = r13.isGuideline;
        if (r15 != 0) goto L_0x06e8;
    L_0x0652:
        r15 = r13.isHelper;
        if (r15 != 0) goto L_0x06e8;
    L_0x0656:
        r15 = r12.getVisibility();
        r14.setVisibility(r15);
        r15 = r13.width;
        r10 = r13.height;
        if (r15 == 0) goto L_0x06d5;
    L_0x0663:
        if (r10 != 0) goto L_0x0667;
    L_0x0665:
        goto L_0x06d5;
    L_0x0667:
        if (r15 != r4) goto L_0x066e;
    L_0x0669:
        r39 = r8;
        r17 = 1;
        goto L_0x0672;
    L_0x066e:
        r39 = r8;
        r17 = 0;
    L_0x0672:
        r8 = getChildMeasureSpec(r1, r7, r15);
        if (r10 != r4) goto L_0x067d;
    L_0x0678:
        r40 = r5;
        r18 = 1;
        goto L_0x0681;
    L_0x067d:
        r40 = r5;
        r18 = 0;
    L_0x0681:
        r5 = getChildMeasureSpec(r2, r6, r10);
        r12.measure(r8, r5);
        if (r15 != r4) goto L_0x068c;
    L_0x068a:
        r5 = 1;
        goto L_0x068d;
    L_0x068c:
        r5 = 0;
    L_0x068d:
        r14.setWidthWrapContent(r5);
        if (r10 != r4) goto L_0x0694;
    L_0x0692:
        r5 = 1;
        goto L_0x0695;
    L_0x0694:
        r5 = 0;
    L_0x0695:
        r14.setHeightWrapContent(r5);
        r5 = r12.getMeasuredWidth();
        r8 = r12.getMeasuredHeight();
        r14.setWidth(r5);
        r14.setHeight(r8);
        if (r17 == 0) goto L_0x06ab;
    L_0x06a8:
        r14.setWrapWidth(r5);
    L_0x06ab:
        if (r18 == 0) goto L_0x06b0;
    L_0x06ad:
        r14.setWrapHeight(r8);
    L_0x06b0:
        r10 = r13.needsBaseline;
        if (r10 == 0) goto L_0x06be;
    L_0x06b4:
        r10 = r12.getBaseline();
        r12 = -1;
        if (r10 == r12) goto L_0x06be;
    L_0x06bb:
        r14.setBaselineDistance(r10);
    L_0x06be:
        r10 = r13.horizontalDimensionFixed;
        if (r10 == 0) goto L_0x06ec;
    L_0x06c2:
        r10 = r13.verticalDimensionFixed;
        if (r10 == 0) goto L_0x06ec;
    L_0x06c6:
        r10 = r14.getResolutionWidth();
        r10.resolve(r5);
        r5 = r14.getResolutionHeight();
        r5.resolve(r8);
        goto L_0x06ec;
    L_0x06d5:
        r40 = r5;
        r39 = r8;
        r5 = r14.getResolutionWidth();
        r5.invalidate();
        r5 = r14.getResolutionHeight();
        r5.invalidate();
        goto L_0x06ec;
    L_0x06e8:
        r40 = r5;
        r39 = r8;
    L_0x06ec:
        r11 = r11 + 1;
        r8 = r39;
        r5 = r40;
        r10 = 0;
        goto L_0x0638;
    L_0x06f5:
        r40 = r5;
        r39 = r8;
        r5 = r0.mLayoutWidget;
        r5.solveGraph();
        r5 = 0;
    L_0x06ff:
        if (r5 >= r9) goto L_0x08d1;
    L_0x0701:
        r8 = r0.getChildAt(r5);
        r10 = r8.getVisibility();
        r11 = 8;
        if (r10 == r11) goto L_0x08c0;
    L_0x070d:
        r10 = r8.getLayoutParams();
        r10 = (android.support.constraint.ConstraintLayout.LayoutParams) r10;
        r11 = r10.widget;
        r12 = r10.isGuideline;
        if (r12 != 0) goto L_0x08c0;
    L_0x0719:
        r12 = r10.isHelper;
        if (r12 != 0) goto L_0x08c0;
    L_0x071d:
        r12 = r8.getVisibility();
        r11.setVisibility(r12);
        r12 = r10.width;
        r13 = r10.height;
        if (r12 == 0) goto L_0x072c;
    L_0x072a:
        if (r13 != 0) goto L_0x08c0;
    L_0x072c:
        r14 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        r14 = r11.getAnchor(r14);
        r14 = r14.getResolutionNode();
        r15 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        r15 = r11.getAnchor(r15);
        r15 = r15.getResolutionNode();
        r4 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        r4 = r11.getAnchor(r4);
        r4 = r4.getTarget();
        if (r4 == 0) goto L_0x075c;
    L_0x074c:
        r4 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        r4 = r11.getAnchor(r4);
        r4 = r4.getTarget();
        if (r4 == 0) goto L_0x075c;
    L_0x0758:
        r41 = r9;
        r4 = 1;
        goto L_0x075f;
    L_0x075c:
        r41 = r9;
        r4 = 0;
    L_0x075f:
        r9 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r9 = r11.getAnchor(r9);
        r9 = r9.getResolutionNode();
        r42 = r3;
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r3 = r11.getAnchor(r3);
        r3 = r3.getResolutionNode();
        r43 = r5;
        r5 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r5 = r11.getAnchor(r5);
        r5 = r5.getTarget();
        if (r5 == 0) goto L_0x0791;
    L_0x0783:
        r5 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r5 = r11.getAnchor(r5);
        r5 = r5.getTarget();
        if (r5 == 0) goto L_0x0791;
    L_0x078f:
        r5 = 1;
        goto L_0x0792;
    L_0x0791:
        r5 = 0;
    L_0x0792:
        if (r12 != 0) goto L_0x079a;
    L_0x0794:
        if (r13 != 0) goto L_0x079a;
    L_0x0796:
        if (r4 == 0) goto L_0x079a;
    L_0x0798:
        if (r5 != 0) goto L_0x08c6;
    L_0x079a:
        r44 = r10;
        r10 = r0.mLayoutWidget;
        r10 = r10.getHorizontalDimensionBehaviour();
        r45 = r8;
        r8 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (r10 == r8) goto L_0x07aa;
    L_0x07a8:
        r8 = 1;
        goto L_0x07ab;
    L_0x07aa:
        r8 = 0;
    L_0x07ab:
        r10 = r0.mLayoutWidget;
        r10 = r10.getVerticalDimensionBehaviour();
        r0 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (r10 == r0) goto L_0x07b7;
    L_0x07b5:
        r0 = 1;
        goto L_0x07b8;
    L_0x07b7:
        r0 = 0;
    L_0x07b8:
        if (r8 != 0) goto L_0x07c1;
    L_0x07ba:
        r10 = r11.getResolutionWidth();
        r10.invalidate();
    L_0x07c1:
        if (r0 != 0) goto L_0x07ca;
    L_0x07c3:
        r10 = r11.getResolutionHeight();
        r10.invalidate();
    L_0x07ca:
        if (r12 != 0) goto L_0x07fd;
    L_0x07cc:
        if (r8 == 0) goto L_0x07f4;
    L_0x07ce:
        r10 = r11.isSpreadWidth();
        if (r10 == 0) goto L_0x07f4;
    L_0x07d4:
        if (r4 == 0) goto L_0x07f4;
    L_0x07d6:
        r4 = r14.isResolved();
        if (r4 == 0) goto L_0x07f4;
    L_0x07dc:
        r4 = r15.isResolved();
        if (r4 == 0) goto L_0x07f4;
    L_0x07e2:
        r4 = r15.getResolvedValue();
        r10 = r14.getResolvedValue();
        r4 = r4 - r10;
        r12 = (int) r4;
        r4 = r11.getResolutionWidth();
        r4.resolve(r12);
        goto L_0x080b;
    L_0x07f4:
        r4 = -2;
        r8 = getChildMeasureSpec(r1, r7, r4);
        r14 = r8;
        r4 = 1;
        r8 = 0;
        goto L_0x0811;
    L_0x07fd:
        r4 = -2;
        r10 = -1;
        if (r12 != r10) goto L_0x0807;
    L_0x0801:
        r14 = getChildMeasureSpec(r1, r7, r10);
        r4 = 0;
        goto L_0x0811;
    L_0x0807:
        if (r12 != r4) goto L_0x080b;
    L_0x0809:
        r4 = 1;
        goto L_0x080c;
    L_0x080b:
        r4 = 0;
    L_0x080c:
        r10 = getChildMeasureSpec(r1, r7, r12);
        r14 = r10;
    L_0x0811:
        if (r13 != 0) goto L_0x0848;
    L_0x0813:
        if (r0 == 0) goto L_0x083d;
    L_0x0815:
        r10 = r11.isSpreadHeight();
        if (r10 == 0) goto L_0x083d;
    L_0x081b:
        if (r5 == 0) goto L_0x083d;
    L_0x081d:
        r5 = r9.isResolved();
        if (r5 == 0) goto L_0x083d;
    L_0x0823:
        r5 = r3.isResolved();
        if (r5 == 0) goto L_0x083d;
    L_0x0829:
        r3 = r3.getResolvedValue();
        r5 = r9.getResolvedValue();
        r3 = r3 - r5;
        r3 = (int) r3;
        r5 = r11.getResolutionHeight();
        r5.resolve(r3);
        r13 = r3;
        r3 = -2;
        goto L_0x0859;
    L_0x083d:
        r3 = -2;
        r0 = getChildMeasureSpec(r2, r6, r3);
        r9 = r0;
        r0 = r45;
        r5 = 1;
        r10 = 0;
        goto L_0x0861;
    L_0x0848:
        r3 = -2;
        r5 = -1;
        if (r13 != r5) goto L_0x0855;
    L_0x084c:
        r9 = getChildMeasureSpec(r2, r6, r5);
        r10 = r0;
        r0 = r45;
        r5 = 0;
        goto L_0x0861;
    L_0x0855:
        if (r13 != r3) goto L_0x0859;
    L_0x0857:
        r5 = 1;
        goto L_0x085a;
    L_0x0859:
        r5 = 0;
    L_0x085a:
        r9 = getChildMeasureSpec(r2, r6, r13);
        r10 = r0;
        r0 = r45;
    L_0x0861:
        r0.measure(r14, r9);
        if (r12 != r3) goto L_0x0868;
    L_0x0866:
        r9 = 1;
        goto L_0x0869;
    L_0x0868:
        r9 = 0;
    L_0x0869:
        r11.setWidthWrapContent(r9);
        if (r13 != r3) goto L_0x0870;
    L_0x086e:
        r3 = 1;
        goto L_0x0871;
    L_0x0870:
        r3 = 0;
    L_0x0871:
        r11.setHeightWrapContent(r3);
        r3 = r0.getMeasuredWidth();
        r9 = r0.getMeasuredHeight();
        r11.setWidth(r3);
        r11.setHeight(r9);
        if (r4 == 0) goto L_0x0887;
    L_0x0884:
        r11.setWrapWidth(r3);
    L_0x0887:
        if (r5 == 0) goto L_0x088c;
    L_0x0889:
        r11.setWrapHeight(r9);
    L_0x088c:
        if (r8 == 0) goto L_0x0896;
    L_0x088e:
        r4 = r11.getResolutionWidth();
        r4.resolve(r3);
        goto L_0x089d;
    L_0x0896:
        r3 = r11.getResolutionWidth();
        r3.remove();
    L_0x089d:
        if (r10 == 0) goto L_0x08a9;
    L_0x089f:
        r3 = r11.getResolutionHeight();
        r3.resolve(r9);
    L_0x08a6:
        r10 = r44;
        goto L_0x08b1;
    L_0x08a9:
        r3 = r11.getResolutionHeight();
        r3.remove();
        goto L_0x08a6;
    L_0x08b1:
        r3 = r10.needsBaseline;
        if (r3 == 0) goto L_0x08c6;
    L_0x08b5:
        r0 = r0.getBaseline();
        r3 = -1;
        if (r0 == r3) goto L_0x08c6;
    L_0x08bc:
        r11.setBaselineDistance(r0);
        goto L_0x08c6;
    L_0x08c0:
        r42 = r3;
        r43 = r5;
        r41 = r9;
    L_0x08c6:
        r5 = r43 + 1;
        r9 = r41;
        r3 = r42;
        r0 = r49;
        r4 = -2;
        goto L_0x06ff;
    L_0x08d1:
        r42 = r3;
        goto L_0x09d5;
    L_0x08d5:
        r42 = r3;
        r40 = r5;
        r39 = r8;
        r3 = r49.getPaddingTop();
        r4 = r49.getPaddingBottom();
        r3 = r3 + r4;
        r4 = r49.getPaddingLeft();
        r5 = r49.getPaddingRight();
        r4 = r4 + r5;
        r5 = r49.getChildCount();
        r6 = 0;
    L_0x08f2:
        if (r6 >= r5) goto L_0x09d5;
    L_0x08f4:
        r7 = r0.getChildAt(r6);
        r8 = r7.getVisibility();
        r9 = 8;
        if (r8 == r9) goto L_0x09d0;
    L_0x0900:
        r8 = r7.getLayoutParams();
        r8 = (android.support.constraint.ConstraintLayout.LayoutParams) r8;
        r9 = r8.widget;
        r10 = r8.isGuideline;
        if (r10 != 0) goto L_0x09d0;
    L_0x090c:
        r10 = r8.isHelper;
        if (r10 != 0) goto L_0x09d0;
    L_0x0910:
        r10 = r7.getVisibility();
        r9.setVisibility(r10);
        r10 = r8.width;
        r11 = r8.height;
        r12 = r8.horizontalDimensionFixed;
        if (r12 != 0) goto L_0x0942;
    L_0x091f:
        r12 = r8.verticalDimensionFixed;
        if (r12 != 0) goto L_0x0942;
    L_0x0923:
        r12 = r8.horizontalDimensionFixed;
        if (r12 != 0) goto L_0x092d;
    L_0x0927:
        r12 = r8.matchConstraintDefaultWidth;
        r13 = 1;
        if (r12 == r13) goto L_0x0943;
    L_0x092c:
        goto L_0x092e;
    L_0x092d:
        r13 = 1;
    L_0x092e:
        r12 = r8.width;
        r14 = -1;
        if (r12 == r14) goto L_0x0943;
    L_0x0933:
        r12 = r8.verticalDimensionFixed;
        if (r12 != 0) goto L_0x0940;
    L_0x0937:
        r12 = r8.matchConstraintDefaultHeight;
        if (r12 == r13) goto L_0x0943;
    L_0x093b:
        r12 = r8.height;
        if (r12 != r14) goto L_0x0940;
    L_0x093f:
        goto L_0x0943;
    L_0x0940:
        r12 = 0;
        goto L_0x0944;
    L_0x0942:
        r13 = 1;
    L_0x0943:
        r12 = r13;
    L_0x0944:
        if (r12 == 0) goto L_0x09ad;
    L_0x0946:
        if (r10 != 0) goto L_0x0952;
    L_0x0948:
        r12 = -2;
        r14 = getChildMeasureSpec(r1, r4, r12);
        r16 = r13;
        r15 = r14;
        r14 = -1;
        goto L_0x096c;
    L_0x0952:
        r12 = -2;
        r14 = -1;
        if (r10 != r14) goto L_0x095d;
    L_0x0956:
        r15 = getChildMeasureSpec(r1, r4, r14);
        r16 = 0;
        goto L_0x096c;
    L_0x095d:
        if (r10 != r12) goto L_0x0961;
    L_0x095f:
        r15 = r13;
        goto L_0x0962;
    L_0x0961:
        r15 = 0;
    L_0x0962:
        r16 = getChildMeasureSpec(r1, r4, r10);
        r48 = r16;
        r16 = r15;
        r15 = r48;
    L_0x096c:
        if (r11 != 0) goto L_0x0977;
    L_0x096e:
        r17 = getChildMeasureSpec(r2, r3, r12);
        r14 = r17;
        r17 = r13;
        goto L_0x0991;
    L_0x0977:
        if (r11 != r14) goto L_0x0982;
    L_0x0979:
        r17 = getChildMeasureSpec(r2, r3, r14);
        r14 = r17;
        r17 = 0;
        goto L_0x0991;
    L_0x0982:
        if (r11 != r12) goto L_0x0986;
    L_0x0984:
        r14 = r13;
        goto L_0x0987;
    L_0x0986:
        r14 = 0;
    L_0x0987:
        r17 = getChildMeasureSpec(r2, r3, r11);
        r48 = r17;
        r17 = r14;
        r14 = r48;
    L_0x0991:
        r7.measure(r15, r14);
        if (r10 != r12) goto L_0x0998;
    L_0x0996:
        r10 = r13;
        goto L_0x0999;
    L_0x0998:
        r10 = 0;
    L_0x0999:
        r9.setWidthWrapContent(r10);
        if (r11 != r12) goto L_0x09a0;
    L_0x099e:
        r10 = r13;
        goto L_0x09a1;
    L_0x09a0:
        r10 = 0;
    L_0x09a1:
        r9.setHeightWrapContent(r10);
        r10 = r7.getMeasuredWidth();
        r11 = r7.getMeasuredHeight();
        goto L_0x09b1;
    L_0x09ad:
        r16 = 0;
        r17 = 0;
    L_0x09b1:
        r9.setWidth(r10);
        r9.setHeight(r11);
        if (r16 == 0) goto L_0x09bc;
    L_0x09b9:
        r9.setWrapWidth(r10);
    L_0x09bc:
        if (r17 == 0) goto L_0x09c1;
    L_0x09be:
        r9.setWrapHeight(r11);
    L_0x09c1:
        r8 = r8.needsBaseline;
        if (r8 == 0) goto L_0x09d1;
    L_0x09c5:
        r7 = r7.getBaseline();
        r8 = -1;
        if (r7 == r8) goto L_0x09d1;
    L_0x09cc:
        r9.setBaselineDistance(r7);
        goto L_0x09d1;
    L_0x09d0:
        r13 = 1;
    L_0x09d1:
        r6 = r6 + 1;
        goto L_0x08f2;
    L_0x09d5:
        r13 = 1;
        r3 = r49.getChildCount();
        r4 = 0;
    L_0x09db:
        if (r4 >= r3) goto L_0x09ed;
    L_0x09dd:
        r5 = r0.getChildAt(r4);
        r6 = r5 instanceof android.support.constraint.Placeholder;
        if (r6 == 0) goto L_0x09ea;
    L_0x09e5:
        r5 = (android.support.constraint.Placeholder) r5;
        r5.updatePostMeasure$1127aab3();
    L_0x09ea:
        r4 = r4 + 1;
        goto L_0x09db;
    L_0x09ed:
        r3 = r0.mConstraintHelpers;
        r3 = r3.size();
        if (r3 <= 0) goto L_0x0a00;
    L_0x09f5:
        r4 = 0;
    L_0x09f6:
        if (r4 >= r3) goto L_0x0a00;
    L_0x09f8:
        r5 = r0.mConstraintHelpers;
        r5.get(r4);
        r4 = r4 + 1;
        goto L_0x09f6;
    L_0x0a00:
        r3 = r49.getChildCount();
        if (r3 <= 0) goto L_0x0a0b;
    L_0x0a06:
        r3 = r0.mLayoutWidget;
        r3.layout();
    L_0x0a0b:
        r3 = r0.mVariableDimensionsWidgets;
        r3 = r3.size();
        r4 = r49.getPaddingBottom();
        r4 = r38 + r4;
        r5 = r49.getPaddingRight();
        r5 = r37 + r5;
        if (r3 <= 0) goto L_0x0bfb;
    L_0x0a1f:
        r7 = r0.mLayoutWidget;
        r7 = r7.getHorizontalDimensionBehaviour();
        r8 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (r7 != r8) goto L_0x0a2b;
    L_0x0a29:
        r7 = r13;
        goto L_0x0a2c;
    L_0x0a2b:
        r7 = 0;
    L_0x0a2c:
        r8 = r0.mLayoutWidget;
        r8 = r8.getVerticalDimensionBehaviour();
        r9 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (r8 != r9) goto L_0x0a38;
    L_0x0a36:
        r8 = r13;
        goto L_0x0a39;
    L_0x0a38:
        r8 = 0;
    L_0x0a39:
        r9 = r0.mLayoutWidget;
        r9 = r9.getWidth();
        r10 = r0.mMinWidth;
        r9 = java.lang.Math.max(r9, r10);
        r10 = r0.mLayoutWidget;
        r10 = r10.getHeight();
        r11 = r0.mMinHeight;
        r10 = java.lang.Math.max(r10, r11);
        r11 = r9;
        r12 = r10;
        r9 = 0;
        r10 = 0;
        r14 = 0;
    L_0x0a56:
        if (r9 >= r3) goto L_0x0b6b;
    L_0x0a58:
        r15 = r0.mVariableDimensionsWidgets;
        r15 = r15.get(r9);
        r15 = (android.support.constraint.solver.widgets.ConstraintWidget) r15;
        r16 = r15.getCompanionWidget();
        r13 = r16;
        r13 = (android.view.View) r13;
        if (r13 == 0) goto L_0x0b5d;
    L_0x0a6a:
        r16 = r13.getLayoutParams();
        r6 = r16;
        r6 = (android.support.constraint.ConstraintLayout.LayoutParams) r6;
        r47 = r3;
        r3 = r6.isHelper;
        if (r3 != 0) goto L_0x0b5f;
    L_0x0a78:
        r3 = r6.isGuideline;
        if (r3 != 0) goto L_0x0b5f;
    L_0x0a7c:
        r3 = r13.getVisibility();
        r0 = 8;
        if (r3 == r0) goto L_0x0b5f;
    L_0x0a84:
        if (r42 == 0) goto L_0x0a9a;
    L_0x0a86:
        r3 = r15.getResolutionWidth();
        r3 = r3.isResolved();
        if (r3 == 0) goto L_0x0a9a;
    L_0x0a90:
        r3 = r15.getResolutionHeight();
        r3 = r3.isResolved();
        if (r3 != 0) goto L_0x0b5f;
    L_0x0a9a:
        r3 = r6.width;
        r0 = -2;
        if (r3 != r0) goto L_0x0aaa;
    L_0x0a9f:
        r0 = r6.horizontalDimensionFixed;
        if (r0 == 0) goto L_0x0aaa;
    L_0x0aa3:
        r0 = r6.width;
        r0 = getChildMeasureSpec(r1, r5, r0);
        goto L_0x0ab4;
    L_0x0aaa:
        r0 = r15.getWidth();
        r3 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r0 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r3);
    L_0x0ab4:
        r3 = r6.height;
        r1 = -2;
        if (r3 != r1) goto L_0x0ac4;
    L_0x0ab9:
        r3 = r6.verticalDimensionFixed;
        if (r3 == 0) goto L_0x0ac4;
    L_0x0abd:
        r3 = r6.height;
        r3 = getChildMeasureSpec(r2, r4, r3);
        goto L_0x0ace;
    L_0x0ac4:
        r3 = r15.getHeight();
        r1 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r3 = android.view.View.MeasureSpec.makeMeasureSpec(r3, r1);
    L_0x0ace:
        r13.measure(r0, r3);
        r0 = r13.getMeasuredWidth();
        r1 = r13.getMeasuredHeight();
        r3 = r15.getWidth();
        if (r0 == r3) goto L_0x0b08;
    L_0x0adf:
        r15.setWidth(r0);
        if (r42 == 0) goto L_0x0aeb;
    L_0x0ae4:
        r3 = r15.getResolutionWidth();
        r3.resolve(r0);
    L_0x0aeb:
        if (r7 == 0) goto L_0x0b07;
    L_0x0aed:
        r0 = r15.getRight();
        if (r0 <= r11) goto L_0x0b07;
    L_0x0af3:
        r0 = r15.getRight();
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        r3 = r15.getAnchor(r3);
        r3 = r3.getMargin();
        r0 = r0 + r3;
        r0 = java.lang.Math.max(r11, r0);
        r11 = r0;
    L_0x0b07:
        r10 = 1;
    L_0x0b08:
        r0 = r15.getHeight();
        if (r1 == r0) goto L_0x0b37;
    L_0x0b0e:
        r15.setHeight(r1);
        if (r42 == 0) goto L_0x0b1a;
    L_0x0b13:
        r0 = r15.getResolutionHeight();
        r0.resolve(r1);
    L_0x0b1a:
        if (r8 == 0) goto L_0x0b36;
    L_0x0b1c:
        r0 = r15.getBottom();
        if (r0 <= r12) goto L_0x0b36;
    L_0x0b22:
        r0 = r15.getBottom();
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r1 = r15.getAnchor(r1);
        r1 = r1.getMargin();
        r0 = r0 + r1;
        r0 = java.lang.Math.max(r12, r0);
        r12 = r0;
    L_0x0b36:
        r10 = 1;
    L_0x0b37:
        r0 = r6.needsBaseline;
        if (r0 == 0) goto L_0x0b4d;
    L_0x0b3b:
        r0 = r13.getBaseline();
        r1 = -1;
        if (r0 == r1) goto L_0x0b4e;
    L_0x0b42:
        r3 = r15.getBaselineDistance();
        if (r0 == r3) goto L_0x0b4e;
    L_0x0b48:
        r15.setBaselineDistance(r0);
        r10 = 1;
        goto L_0x0b4e;
    L_0x0b4d:
        r1 = -1;
    L_0x0b4e:
        r0 = android.os.Build.VERSION.SDK_INT;
        r3 = 11;
        if (r0 < r3) goto L_0x0b60;
    L_0x0b54:
        r0 = r13.getMeasuredState();
        r14 = combineMeasuredStates(r14, r0);
        goto L_0x0b60;
    L_0x0b5d:
        r47 = r3;
    L_0x0b5f:
        r1 = -1;
    L_0x0b60:
        r9 = r9 + 1;
        r3 = r47;
        r0 = r49;
        r1 = r50;
        r13 = 1;
        goto L_0x0a56;
    L_0x0b6b:
        r47 = r3;
        if (r10 == 0) goto L_0x0bb5;
    L_0x0b6f:
        r0 = r49;
        r1 = r0.mLayoutWidget;
        r3 = r40;
        r1.setWidth(r3);
        r1 = r0.mLayoutWidget;
        r3 = r39;
        r1.setHeight(r3);
        if (r42 == 0) goto L_0x0b86;
    L_0x0b81:
        r1 = r0.mLayoutWidget;
        r1.solveGraph();
    L_0x0b86:
        r1 = r0.mLayoutWidget;
        r1.layout();
        r1 = r0.mLayoutWidget;
        r1 = r1.getWidth();
        if (r1 >= r11) goto L_0x0b9a;
    L_0x0b93:
        r1 = r0.mLayoutWidget;
        r1.setWidth(r11);
        r8 = 1;
        goto L_0x0b9b;
    L_0x0b9a:
        r8 = 0;
    L_0x0b9b:
        r1 = r0.mLayoutWidget;
        r1 = r1.getHeight();
        if (r1 >= r12) goto L_0x0bab;
    L_0x0ba3:
        r1 = r0.mLayoutWidget;
        r1.setHeight(r12);
        r46 = 1;
        goto L_0x0bad;
    L_0x0bab:
        r46 = r8;
    L_0x0bad:
        if (r46 == 0) goto L_0x0bb7;
    L_0x0baf:
        r1 = r0.mLayoutWidget;
        r1.layout();
        goto L_0x0bb7;
    L_0x0bb5:
        r0 = r49;
    L_0x0bb7:
        r1 = r47;
        r3 = 0;
    L_0x0bba:
        if (r3 >= r1) goto L_0x0bfc;
    L_0x0bbc:
        r6 = r0.mVariableDimensionsWidgets;
        r6 = r6.get(r3);
        r6 = (android.support.constraint.solver.widgets.ConstraintWidget) r6;
        r7 = r6.getCompanionWidget();
        r7 = (android.view.View) r7;
        if (r7 == 0) goto L_0x0bf6;
    L_0x0bcc:
        r8 = r7.getMeasuredWidth();
        r9 = r6.getWidth();
        if (r8 != r9) goto L_0x0be0;
    L_0x0bd6:
        r8 = r7.getMeasuredHeight();
        r9 = r6.getHeight();
        if (r8 == r9) goto L_0x0bf6;
    L_0x0be0:
        r8 = r6.getWidth();
        r9 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r8 = android.view.View.MeasureSpec.makeMeasureSpec(r8, r9);
        r6 = r6.getHeight();
        r6 = android.view.View.MeasureSpec.makeMeasureSpec(r6, r9);
        r7.measure(r8, r6);
        goto L_0x0bf8;
    L_0x0bf6:
        r9 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
    L_0x0bf8:
        r3 = r3 + 1;
        goto L_0x0bba;
    L_0x0bfb:
        r14 = 0;
    L_0x0bfc:
        r1 = r0.mLayoutWidget;
        r1 = r1.getWidth();
        r1 = r1 + r5;
        r3 = r0.mLayoutWidget;
        r3 = r3.getHeight();
        r3 = r3 + r4;
        r4 = android.os.Build.VERSION.SDK_INT;
        r5 = 11;
        if (r4 < r5) goto L_0x0c49;
    L_0x0c10:
        r4 = r50;
        r1 = resolveSizeAndState(r1, r4, r14);
        r4 = r14 << 16;
        r2 = resolveSizeAndState(r3, r2, r4);
        r3 = 16777215; // 0xffffff float:2.3509886E-38 double:8.2890456E-317;
        r1 = r1 & r3;
        r2 = r2 & r3;
        r3 = r0.mMaxWidth;
        r1 = java.lang.Math.min(r3, r1);
        r3 = r0.mMaxHeight;
        r2 = java.lang.Math.min(r3, r2);
        r3 = r0.mLayoutWidget;
        r3 = r3.isWidthMeasuredTooSmall();
        r4 = 16777216; // 0x1000000 float:2.3509887E-38 double:8.289046E-317;
        if (r3 == 0) goto L_0x0c38;
    L_0x0c37:
        r1 = r1 | r4;
    L_0x0c38:
        r3 = r0.mLayoutWidget;
        r3 = r3.isHeightMeasuredTooSmall();
        if (r3 == 0) goto L_0x0c41;
    L_0x0c40:
        r2 = r2 | r4;
    L_0x0c41:
        r0.setMeasuredDimension(r1, r2);
        r0.mLastMeasureWidth = r1;
        r0.mLastMeasureHeight = r2;
        return;
    L_0x0c49:
        r0.setMeasuredDimension(r1, r3);
        r0.mLastMeasureWidth = r1;
        r0.mLastMeasureHeight = r3;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.ConstraintLayout.onMeasure(int, int):void");
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        z = getChildCount();
        i = isInEditMode();
        boolean z2 = false;
        for (boolean z3 = false; z3 < z; z3++) {
            i4 = getChildAt(z3);
            LayoutParams layoutParams = (LayoutParams) i4.getLayoutParams();
            ConstraintWidget constraintWidget = layoutParams.widget;
            if ((i4.getVisibility() != 8 || layoutParams.isGuideline || layoutParams.isHelper || i != 0) && !layoutParams.isInPlaceholder) {
                int drawX = constraintWidget.getDrawX();
                int drawY = constraintWidget.getDrawY();
                int width = constraintWidget.getWidth() + drawX;
                int height = constraintWidget.getHeight() + drawY;
                i4.layout(drawX, drawY, width, height);
                if (i4 instanceof Placeholder) {
                    i4 = ((Placeholder) i4).getContent();
                    if (i4 != 0) {
                        i4.setVisibility(0);
                        i4.layout(drawX, drawY, width, height);
                    }
                }
            }
        }
        z = this.mConstraintHelpers.size();
        if (z <= false) {
            while (z2 < z) {
                ((ConstraintHelper) this.mConstraintHelpers.get(z2)).updatePostLayout$1127aab3();
                z2++;
            }
        }
    }

    protected static LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = (float) getWidth();
            float height = (float) getHeight();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (childAt.getVisibility() != 8) {
                    Object tag = childAt.getTag();
                    if (tag != null && (tag instanceof String)) {
                        String[] split = ((String) tag).split(",");
                        if (split.length == 4) {
                            int parseInt = Integer.parseInt(split[0]);
                            int parseInt2 = Integer.parseInt(split[1]);
                            parseInt = (int) ((((float) parseInt) / 1080.0f) * width);
                            parseInt2 = (int) ((((float) parseInt2) / 1920.0f) * height);
                            int parseInt3 = (int) ((((float) Integer.parseInt(split[2])) / 1080.0f) * width);
                            int parseInt4 = (int) ((((float) Integer.parseInt(split[3])) / 1920.0f) * height);
                            Paint paint = new Paint();
                            paint.setColor(-65536);
                            float f = (float) parseInt;
                            float f2 = (float) parseInt2;
                            float f3 = (float) (parseInt + parseInt3);
                            Canvas canvas2 = canvas;
                            float f4 = f2;
                            float f5 = f2;
                            f2 = f3;
                            float f6 = f;
                            Paint paint2 = paint;
                            canvas2.drawLine(f, f4, f2, f5, paint);
                            float f7 = (float) (parseInt2 + parseInt4);
                            float f8 = f3;
                            f = f7;
                            canvas2.drawLine(f8, f5, f2, f, paint);
                            f4 = f7;
                            f2 = f6;
                            canvas2.drawLine(f8, f4, f2, f, paint);
                            f8 = f6;
                            canvas2.drawLine(f8, f4, f2, f5, paint);
                            paint.setColor(-16711936);
                            f2 = f3;
                            Paint paint3 = paint;
                            canvas2.drawLine(f8, f5, f2, f7, paint);
                            canvas2.drawLine(f8, f7, f2, f5, paint);
                        }
                    }
                }
            }
        }
        ConstraintLayout constraintLayout = this;
    }

    public void requestLayout() {
        super.requestLayout();
        this.mDirtyHierarchy = true;
        this.mLastMeasureWidth = -1;
        this.mLastMeasureHeight = -1;
        this.mLastMeasureWidthSize = -1;
        this.mLastMeasureHeightSize = -1;
        this.mLastMeasureWidthMode = 0;
        this.mLastMeasureHeightMode = 0;
    }
}
