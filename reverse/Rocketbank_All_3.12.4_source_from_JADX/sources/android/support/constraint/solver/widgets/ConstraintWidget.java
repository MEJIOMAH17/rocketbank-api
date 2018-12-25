package android.support.constraint.solver.widgets;

import android.support.constraint.solver.Cache;
import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.SolverVariable;
import android.support.constraint.solver.widgets.ConstraintAnchor.Strength;
import android.support.constraint.solver.widgets.ConstraintAnchor.Type;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;

public class ConstraintWidget {
    public static float DEFAULT_BIAS = 0.5f;
    protected ArrayList<ConstraintAnchor> mAnchors = new ArrayList();
    ConstraintAnchor mBaseline = new ConstraintAnchor(this, Type.BASELINE);
    int mBaselineDistance = 0;
    ConstraintAnchor mBottom = new ConstraintAnchor(this, Type.BOTTOM);
    ConstraintAnchor mCenter = new ConstraintAnchor(this, Type.CENTER);
    ConstraintAnchor mCenterX = new ConstraintAnchor(this, Type.CENTER_X);
    ConstraintAnchor mCenterY = new ConstraintAnchor(this, Type.CENTER_Y);
    private float mCircleConstraintAngle = BitmapDescriptorFactory.HUE_RED;
    private Object mCompanionWidget;
    private int mContainerItemSkip = 0;
    private String mDebugName = null;
    protected float mDimensionRatio = BitmapDescriptorFactory.HUE_RED;
    protected int mDimensionRatioSide = -1;
    private int mDrawHeight = 0;
    private int mDrawWidth = 0;
    private int mDrawX = 0;
    private int mDrawY = 0;
    int mHeight = 0;
    float mHorizontalBiasPercent = DEFAULT_BIAS;
    boolean mHorizontalChainFixedPosition;
    int mHorizontalChainStyle = 0;
    ConstraintWidget mHorizontalNextWidget = null;
    public int mHorizontalResolution = -1;
    boolean mHorizontalWrapVisited;
    boolean mIsHeightWrapContent;
    boolean mIsWidthWrapContent;
    ConstraintAnchor mLeft = new ConstraintAnchor(this, Type.LEFT);
    protected ConstraintAnchor[] mListAnchors = new ConstraintAnchor[]{this.mLeft, this.mRight, this.mTop, this.mBottom, this.mBaseline, this.mCenter};
    protected DimensionBehaviour[] mListDimensionBehaviors = new DimensionBehaviour[]{DimensionBehaviour.FIXED, DimensionBehaviour.FIXED};
    protected ConstraintWidget[] mListNextMatchConstraintsWidget = new ConstraintWidget[]{null, null};
    protected ConstraintWidget[] mListNextVisibleWidget = new ConstraintWidget[]{null, null};
    int mMatchConstraintDefaultHeight = 0;
    int mMatchConstraintDefaultWidth = 0;
    int mMatchConstraintMaxHeight = 0;
    int mMatchConstraintMaxWidth = 0;
    int mMatchConstraintMinHeight = 0;
    int mMatchConstraintMinWidth = 0;
    float mMatchConstraintPercentHeight = 1.0f;
    float mMatchConstraintPercentWidth = 1.0f;
    private int[] mMaxDimension = new int[]{ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED};
    protected int mMinHeight;
    protected int mMinWidth;
    protected int mOffsetX = 0;
    protected int mOffsetY = 0;
    ConstraintWidget mParent = null;
    ResolutionDimension mResolutionHeight;
    ResolutionDimension mResolutionWidth;
    float mResolvedDimensionRatio = 1.0f;
    int mResolvedDimensionRatioSide = -1;
    ConstraintAnchor mRight = new ConstraintAnchor(this, Type.RIGHT);
    ConstraintAnchor mTop = new ConstraintAnchor(this, Type.TOP);
    private String mType = null;
    float mVerticalBiasPercent = DEFAULT_BIAS;
    boolean mVerticalChainFixedPosition;
    int mVerticalChainStyle = 0;
    ConstraintWidget mVerticalNextWidget = null;
    public int mVerticalResolution = -1;
    boolean mVerticalWrapVisited;
    private int mVisibility = 0;
    float[] mWeight = new float[]{BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED};
    int mWidth = 0;
    private int mWrapHeight;
    private int mWrapWidth;
    protected int mX = 0;
    protected int mY = 0;

    public enum ContentAlignment {
        BEGIN,
        MIDDLE,
        END,
        TOP,
        VERTICAL_MIDDLE,
        BOTTOM,
        LEFT,
        RIGHT
    }

    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public void resolve() {
    }

    public final void setMaxWidth(int i) {
        this.mMaxDimension[0] = i;
    }

    public final void setMaxHeight(int i) {
        this.mMaxDimension[1] = i;
    }

    public final boolean isSpreadWidth() {
        return this.mMatchConstraintDefaultWidth == 0 && this.mDimensionRatio == BitmapDescriptorFactory.HUE_RED && this.mMatchConstraintMinWidth == 0 && this.mMatchConstraintMaxWidth == 0 && this.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public final boolean isSpreadHeight() {
        return this.mMatchConstraintDefaultHeight == 0 && this.mDimensionRatio == BitmapDescriptorFactory.HUE_RED && this.mMatchConstraintMinHeight == 0 && this.mMatchConstraintMaxHeight == 0 && this.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT;
    }

    public void reset() {
        this.mLeft.reset();
        this.mTop.reset();
        this.mRight.reset();
        this.mBottom.reset();
        this.mBaseline.reset();
        this.mCenterX.reset();
        this.mCenterY.reset();
        this.mCenter.reset();
        this.mParent = null;
        this.mCircleConstraintAngle = BitmapDescriptorFactory.HUE_RED;
        this.mWidth = 0;
        this.mHeight = 0;
        this.mDimensionRatio = BitmapDescriptorFactory.HUE_RED;
        this.mDimensionRatioSide = -1;
        this.mX = 0;
        this.mY = 0;
        this.mDrawX = 0;
        this.mDrawY = 0;
        this.mDrawWidth = 0;
        this.mDrawHeight = 0;
        this.mOffsetX = 0;
        this.mOffsetY = 0;
        this.mBaselineDistance = 0;
        this.mMinWidth = 0;
        this.mMinHeight = 0;
        this.mWrapWidth = 0;
        this.mWrapHeight = 0;
        this.mHorizontalBiasPercent = DEFAULT_BIAS;
        this.mVerticalBiasPercent = DEFAULT_BIAS;
        this.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
        this.mListDimensionBehaviors[1] = DimensionBehaviour.FIXED;
        this.mCompanionWidget = null;
        this.mContainerItemSkip = 0;
        this.mVisibility = 0;
        this.mType = null;
        this.mHorizontalWrapVisited = false;
        this.mVerticalWrapVisited = false;
        this.mHorizontalChainStyle = 0;
        this.mVerticalChainStyle = 0;
        this.mHorizontalChainFixedPosition = false;
        this.mVerticalChainFixedPosition = false;
        this.mWeight[0] = BitmapDescriptorFactory.HUE_RED;
        this.mWeight[1] = BitmapDescriptorFactory.HUE_RED;
        this.mHorizontalResolution = -1;
        this.mVerticalResolution = -1;
        this.mMaxDimension[0] = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.mMaxDimension[1] = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.mMatchConstraintDefaultWidth = 0;
        this.mMatchConstraintDefaultHeight = 0;
        this.mMatchConstraintPercentWidth = 1.0f;
        this.mMatchConstraintPercentHeight = 1.0f;
        this.mMatchConstraintMaxWidth = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.mMatchConstraintMaxHeight = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.mMatchConstraintMinWidth = 0;
        this.mMatchConstraintMinHeight = 0;
        this.mResolvedDimensionRatioSide = -1;
        this.mResolvedDimensionRatio = 1.0f;
        if (this.mResolutionWidth != null) {
            this.mResolutionWidth.reset();
        }
        if (this.mResolutionHeight != null) {
            this.mResolutionHeight.reset();
        }
    }

    public void resetResolutionNodes() {
        for (int i = 0; i < 6; i++) {
            this.mListAnchors[i].getResolutionNode().reset();
        }
    }

    public final void updateResolutionNodes() {
        for (int i = 0; i < 6; i++) {
            ResolutionAnchor resolutionNode = this.mListAnchors[i].getResolutionNode();
            ConstraintAnchor constraintAnchor = resolutionNode.myAnchor.mTarget;
            if (constraintAnchor != null) {
                if (constraintAnchor.mTarget == resolutionNode.myAnchor) {
                    resolutionNode.type = 4;
                    constraintAnchor.getResolutionNode().type = 4;
                }
                int margin = resolutionNode.myAnchor.getMargin();
                if (resolutionNode.myAnchor.mType == Type.RIGHT || resolutionNode.myAnchor.mType == Type.BOTTOM) {
                    margin = -margin;
                }
                resolutionNode.target = constraintAnchor.getResolutionNode();
                resolutionNode.offset = (float) margin;
                resolutionNode.target.dependents.add(resolutionNode);
            }
        }
    }

    public void analyze(int i) {
        Optimizer.analyze(i, this);
    }

    public final ResolutionDimension getResolutionWidth() {
        if (this.mResolutionWidth == null) {
            this.mResolutionWidth = new ResolutionDimension();
        }
        return this.mResolutionWidth;
    }

    public final ResolutionDimension getResolutionHeight() {
        if (this.mResolutionHeight == null) {
            this.mResolutionHeight = new ResolutionDimension();
        }
        return this.mResolutionHeight;
    }

    public ConstraintWidget() {
        this.mAnchors.add(this.mLeft);
        this.mAnchors.add(this.mTop);
        this.mAnchors.add(this.mRight);
        this.mAnchors.add(this.mBottom);
        this.mAnchors.add(this.mCenterX);
        this.mAnchors.add(this.mCenterY);
        this.mAnchors.add(this.mCenter);
        this.mAnchors.add(this.mBaseline);
    }

    public void resetSolverVariables(Cache cache) {
        cache = this.mLeft;
        if (cache.mSolverVariable == null) {
            cache.mSolverVariable = new SolverVariable(SolverVariable.Type.UNRESTRICTED);
        } else {
            cache.mSolverVariable.reset();
        }
        cache = this.mTop;
        if (cache.mSolverVariable == null) {
            cache.mSolverVariable = new SolverVariable(SolverVariable.Type.UNRESTRICTED);
        } else {
            cache.mSolverVariable.reset();
        }
        cache = this.mRight;
        if (cache.mSolverVariable == null) {
            cache.mSolverVariable = new SolverVariable(SolverVariable.Type.UNRESTRICTED);
        } else {
            cache.mSolverVariable.reset();
        }
        cache = this.mBottom;
        if (cache.mSolverVariable == null) {
            cache.mSolverVariable = new SolverVariable(SolverVariable.Type.UNRESTRICTED);
        } else {
            cache.mSolverVariable.reset();
        }
        cache = this.mBaseline;
        if (cache.mSolverVariable == null) {
            cache.mSolverVariable = new SolverVariable(SolverVariable.Type.UNRESTRICTED);
        } else {
            cache.mSolverVariable.reset();
        }
        cache = this.mCenter;
        if (cache.mSolverVariable == null) {
            cache.mSolverVariable = new SolverVariable(SolverVariable.Type.UNRESTRICTED);
        } else {
            cache.mSolverVariable.reset();
        }
        cache = this.mCenterX;
        if (cache.mSolverVariable == null) {
            cache.mSolverVariable = new SolverVariable(SolverVariable.Type.UNRESTRICTED);
        } else {
            cache.mSolverVariable.reset();
        }
        cache = this.mCenterY;
        if (cache.mSolverVariable == null) {
            cache.mSolverVariable = new SolverVariable(SolverVariable.Type.UNRESTRICTED);
        } else {
            cache.mSolverVariable.reset();
        }
    }

    public final void setWidthWrapContent(boolean z) {
        this.mIsWidthWrapContent = z;
    }

    public final void setHeightWrapContent(boolean z) {
        this.mIsHeightWrapContent = z;
    }

    public final void connectCircularConstraint(ConstraintWidget constraintWidget, float f, int i) {
        int i2 = i;
        getAnchor(Type.CENTER).connect(constraintWidget.getAnchor(Type.CENTER), i2, 0, Strength.STRONG, 0, true);
        this.mCircleConstraintAngle = f;
    }

    public final void setVisibility(int i) {
        this.mVisibility = i;
    }

    public final int getVisibility() {
        return this.mVisibility;
    }

    public final String getDebugName() {
        return this.mDebugName;
    }

    public final void setDebugName(String str) {
        this.mDebugName = str;
    }

    public String toString() {
        String stringBuilder;
        StringBuilder stringBuilder2 = new StringBuilder();
        if (this.mDebugName != null) {
            StringBuilder stringBuilder3 = new StringBuilder("id: ");
            stringBuilder3.append(this.mDebugName);
            stringBuilder3.append(" ");
            stringBuilder = stringBuilder3.toString();
        } else {
            stringBuilder = "";
        }
        stringBuilder2.append(stringBuilder);
        stringBuilder2.append("(");
        stringBuilder2.append(this.mX);
        stringBuilder2.append(", ");
        stringBuilder2.append(this.mY);
        stringBuilder2.append(") - (");
        stringBuilder2.append(this.mWidth);
        stringBuilder2.append(" x ");
        stringBuilder2.append(this.mHeight);
        stringBuilder2.append(") wrap: (");
        stringBuilder2.append(this.mWrapWidth);
        stringBuilder2.append(" x ");
        stringBuilder2.append(this.mWrapHeight);
        stringBuilder2.append(")");
        return stringBuilder2.toString();
    }

    public final int getX() {
        return this.mX;
    }

    public final int getY() {
        return this.mY;
    }

    public final int getWidth() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mWidth;
    }

    public final int getWrapWidth() {
        return this.mWrapWidth;
    }

    public final int getHeight() {
        if (this.mVisibility == 8) {
            return 0;
        }
        return this.mHeight;
    }

    public final int getWrapHeight() {
        return this.mWrapHeight;
    }

    public final int getDrawX() {
        return this.mDrawX + this.mOffsetX;
    }

    public final int getDrawY() {
        return this.mDrawY + this.mOffsetY;
    }

    protected final int getRootX() {
        return this.mX + this.mOffsetX;
    }

    protected final int getRootY() {
        return this.mY + this.mOffsetY;
    }

    public final int getBaselineDistance() {
        return this.mBaselineDistance;
    }

    public final Object getCompanionWidget() {
        return this.mCompanionWidget;
    }

    public ArrayList<ConstraintAnchor> getAnchors() {
        return this.mAnchors;
    }

    public final void setX(int i) {
        this.mX = i;
    }

    public final void setY(int i) {
        this.mY = i;
    }

    public final void setOrigin(int i, int i2) {
        this.mX = i;
        this.mY = i2;
    }

    public void setOffset(int i, int i2) {
        this.mOffsetX = i;
        this.mOffsetY = i2;
    }

    public void updateDrawPosition() {
        int i = this.mX;
        int i2 = this.mY;
        int i3 = this.mX + this.mWidth;
        int i4 = this.mY + this.mHeight;
        this.mDrawX = i;
        this.mDrawY = i2;
        this.mDrawWidth = i3 - i;
        this.mDrawHeight = i4 - i2;
    }

    public final void setWidth(int i) {
        this.mWidth = i;
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
    }

    public final void setHeight(int i) {
        this.mHeight = i;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
    }

    public final void setHorizontalMatchStyle(int i, int i2, int i3, float f) {
        this.mMatchConstraintDefaultWidth = i;
        this.mMatchConstraintMinWidth = i2;
        this.mMatchConstraintMaxWidth = i3;
        this.mMatchConstraintPercentWidth = f;
        if (f < 1065353216 && this.mMatchConstraintDefaultWidth == 0) {
            this.mMatchConstraintDefaultWidth = 2;
        }
    }

    public final void setVerticalMatchStyle(int i, int i2, int i3, float f) {
        this.mMatchConstraintDefaultHeight = i;
        this.mMatchConstraintMinHeight = i2;
        this.mMatchConstraintMaxHeight = i3;
        this.mMatchConstraintPercentHeight = f;
        if (f < 1065353216 && this.mMatchConstraintDefaultHeight == 0) {
            this.mMatchConstraintDefaultHeight = 2;
        }
    }

    public final void setDimensionRatio(java.lang.String r9) {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r8 = this;
        r0 = 0;
        if (r9 == 0) goto L_0x008e;
    L_0x0003:
        r1 = r9.length();
        if (r1 != 0) goto L_0x000b;
    L_0x0009:
        goto L_0x008e;
    L_0x000b:
        r1 = -1;
        r2 = r9.length();
        r3 = 44;
        r3 = r9.indexOf(r3);
        r4 = 0;
        r5 = 1;
        if (r3 <= 0) goto L_0x0037;
    L_0x001a:
        r6 = r2 + -1;
        if (r3 >= r6) goto L_0x0037;
    L_0x001e:
        r6 = r9.substring(r4, r3);
        r7 = "W";
        r7 = r6.equalsIgnoreCase(r7);
        if (r7 == 0) goto L_0x002c;
    L_0x002a:
        r1 = r4;
        goto L_0x0035;
    L_0x002c:
        r4 = "H";
        r4 = r6.equalsIgnoreCase(r4);
        if (r4 == 0) goto L_0x0035;
    L_0x0034:
        r1 = r5;
    L_0x0035:
        r4 = r3 + 1;
    L_0x0037:
        r3 = 58;
        r3 = r9.indexOf(r3);
        if (r3 < 0) goto L_0x0075;
    L_0x003f:
        r2 = r2 - r5;
        if (r3 >= r2) goto L_0x0075;
    L_0x0042:
        r2 = r9.substring(r4, r3);
        r3 = r3 + r5;
        r9 = r9.substring(r3);
        r3 = r2.length();
        if (r3 <= 0) goto L_0x0084;
    L_0x0051:
        r3 = r9.length();
        if (r3 <= 0) goto L_0x0084;
    L_0x0057:
        r2 = java.lang.Float.parseFloat(r2);	 Catch:{ NumberFormatException -> 0x0084 }
        r9 = java.lang.Float.parseFloat(r9);	 Catch:{ NumberFormatException -> 0x0084 }
        r3 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1));	 Catch:{ NumberFormatException -> 0x0084 }
        if (r3 <= 0) goto L_0x0084;	 Catch:{ NumberFormatException -> 0x0084 }
    L_0x0063:
        r3 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1));	 Catch:{ NumberFormatException -> 0x0084 }
        if (r3 <= 0) goto L_0x0084;	 Catch:{ NumberFormatException -> 0x0084 }
    L_0x0067:
        if (r1 != r5) goto L_0x006f;	 Catch:{ NumberFormatException -> 0x0084 }
    L_0x0069:
        r9 = r9 / r2;	 Catch:{ NumberFormatException -> 0x0084 }
        r9 = java.lang.Math.abs(r9);	 Catch:{ NumberFormatException -> 0x0084 }
        goto L_0x0085;	 Catch:{ NumberFormatException -> 0x0084 }
    L_0x006f:
        r2 = r2 / r9;	 Catch:{ NumberFormatException -> 0x0084 }
        r9 = java.lang.Math.abs(r2);	 Catch:{ NumberFormatException -> 0x0084 }
        goto L_0x0085;
    L_0x0075:
        r9 = r9.substring(r4);
        r2 = r9.length();
        if (r2 <= 0) goto L_0x0084;
    L_0x007f:
        r9 = java.lang.Float.parseFloat(r9);	 Catch:{ NumberFormatException -> 0x0084 }
        goto L_0x0085;
    L_0x0084:
        r9 = r0;
    L_0x0085:
        r0 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1));
        if (r0 <= 0) goto L_0x008d;
    L_0x0089:
        r8.mDimensionRatio = r9;
        r8.mDimensionRatioSide = r1;
    L_0x008d:
        return;
    L_0x008e:
        r8.mDimensionRatio = r0;
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.ConstraintWidget.setDimensionRatio(java.lang.String):void");
    }

    public final void setHorizontalBiasPercent(float f) {
        this.mHorizontalBiasPercent = f;
    }

    public final void setVerticalBiasPercent(float f) {
        this.mVerticalBiasPercent = f;
    }

    public final void setMinWidth(int i) {
        if (i < 0) {
            this.mMinWidth = 0;
        } else {
            this.mMinWidth = i;
        }
    }

    public final void setMinHeight(int i) {
        if (i < 0) {
            this.mMinHeight = 0;
        } else {
            this.mMinHeight = i;
        }
    }

    public final void setWrapWidth(int i) {
        this.mWrapWidth = i;
    }

    public final void setWrapHeight(int i) {
        this.mWrapHeight = i;
    }

    public final void setHorizontalDimension(int i, int i2) {
        this.mX = i;
        this.mWidth = i2 - i;
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
    }

    public final void setVerticalDimension(int i, int i2) {
        this.mY = i;
        this.mHeight = i2 - i;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
    }

    public final void setBaselineDistance(int i) {
        this.mBaselineDistance = i;
    }

    public final void setCompanionWidget(Object obj) {
        this.mCompanionWidget = obj;
    }

    public final void setHorizontalWeight(float f) {
        this.mWeight[0] = f;
    }

    public final void setVerticalWeight(float f) {
        this.mWeight[1] = f;
    }

    public final void setHorizontalChainStyle(int i) {
        this.mHorizontalChainStyle = i;
    }

    public final void setVerticalChainStyle(int i) {
        this.mVerticalChainStyle = i;
    }

    public boolean allowedInBarrier() {
        return this.mVisibility != 8;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void connect$411e6efd(android.support.constraint.solver.widgets.ConstraintAnchor.Type r15, android.support.constraint.solver.widgets.ConstraintWidget r16, android.support.constraint.solver.widgets.ConstraintAnchor.Type r17, android.support.constraint.solver.widgets.ConstraintAnchor.Strength r18, int r19) {
        /*
        r14 = this;
        r6 = r14;
        r0 = r15;
        r7 = r16;
        r8 = r17;
        r9 = r19;
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER;
        r10 = 1;
        r11 = 0;
        if (r0 != r1) goto L_0x0108;
    L_0x000e:
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER;
        if (r8 != r0) goto L_0x00bb;
    L_0x0012:
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        r0 = r6.getAnchor(r0);
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        r1 = r6.getAnchor(r1);
        r2 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r8 = r6.getAnchor(r2);
        r2 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r12 = r6.getAnchor(r2);
        if (r0 == 0) goto L_0x0035;
    L_0x002c:
        r0 = r0.mTarget;
        if (r0 == 0) goto L_0x0032;
    L_0x0030:
        r0 = r10;
        goto L_0x0033;
    L_0x0032:
        r0 = r11;
    L_0x0033:
        if (r0 != 0) goto L_0x0041;
    L_0x0035:
        if (r1 == 0) goto L_0x0043;
    L_0x0037:
        r0 = r1.mTarget;
        if (r0 == 0) goto L_0x003d;
    L_0x003b:
        r0 = r10;
        goto L_0x003e;
    L_0x003d:
        r0 = r11;
    L_0x003e:
        if (r0 != 0) goto L_0x0041;
    L_0x0040:
        goto L_0x0043;
    L_0x0041:
        r13 = r11;
        goto L_0x0057;
    L_0x0043:
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        r0 = r6;
        r2 = r7;
        r4 = r18;
        r5 = r9;
        r0.connect$411e6efd(r1, r2, r3, r4, r5);
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        r0.connect$411e6efd(r1, r2, r3, r4, r5);
        r13 = r10;
    L_0x0057:
        if (r8 == 0) goto L_0x0062;
    L_0x0059:
        r0 = r8.mTarget;
        if (r0 == 0) goto L_0x005f;
    L_0x005d:
        r0 = r10;
        goto L_0x0060;
    L_0x005f:
        r0 = r11;
    L_0x0060:
        if (r0 != 0) goto L_0x006e;
    L_0x0062:
        if (r12 == 0) goto L_0x0070;
    L_0x0064:
        r0 = r12.mTarget;
        if (r0 == 0) goto L_0x006a;
    L_0x0068:
        r0 = r10;
        goto L_0x006b;
    L_0x006a:
        r0 = r11;
    L_0x006b:
        if (r0 != 0) goto L_0x006e;
    L_0x006d:
        goto L_0x0070;
    L_0x006e:
        r10 = r11;
        goto L_0x0083;
    L_0x0070:
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r0 = r6;
        r2 = r7;
        r4 = r18;
        r5 = r9;
        r0.connect$411e6efd(r1, r2, r3, r4, r5);
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r0.connect$411e6efd(r1, r2, r3, r4, r5);
    L_0x0083:
        if (r13 == 0) goto L_0x0097;
    L_0x0085:
        if (r10 == 0) goto L_0x0097;
    L_0x0087:
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER;
        r0 = r6.getAnchor(r0);
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER;
        r1 = r7.getAnchor(r1);
        r0.connect$37b91e6c(r1, r9);
        return;
    L_0x0097:
        if (r13 == 0) goto L_0x00a9;
    L_0x0099:
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_X;
        r0 = r6.getAnchor(r0);
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_X;
        r1 = r7.getAnchor(r1);
        r0.connect$37b91e6c(r1, r9);
        return;
    L_0x00a9:
        if (r10 == 0) goto L_0x00ba;
    L_0x00ab:
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_Y;
        r0 = r6.getAnchor(r0);
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_Y;
        r1 = r7.getAnchor(r1);
        r0.connect$37b91e6c(r1, r9);
    L_0x00ba:
        return;
    L_0x00bb:
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        if (r8 == r0) goto L_0x00ea;
    L_0x00bf:
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        if (r8 != r0) goto L_0x00c4;
    L_0x00c3:
        goto L_0x00ea;
    L_0x00c4:
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        if (r8 == r0) goto L_0x00cc;
    L_0x00c8:
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        if (r8 != r0) goto L_0x0267;
    L_0x00cc:
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r0 = r6;
        r2 = r7;
        r3 = r8;
        r4 = r18;
        r5 = r9;
        r0.connect$411e6efd(r1, r2, r3, r4, r5);
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r0.connect$411e6efd(r1, r2, r3, r4, r5);
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER;
        r0 = r6.getAnchor(r0);
        r1 = r16.getAnchor(r17);
        r0.connect$37b91e6c(r1, r9);
        return;
    L_0x00ea:
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        r0 = r6;
        r2 = r7;
        r3 = r8;
        r4 = r18;
        r5 = r9;
        r0.connect$411e6efd(r1, r2, r3, r4, r5);
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        r0.connect$411e6efd(r1, r2, r3, r4, r5);
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER;
        r0 = r6.getAnchor(r0);
        r1 = r16.getAnchor(r17);
        r0.connect$37b91e6c(r1, r9);
        return;
    L_0x0108:
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_X;
        if (r0 != r1) goto L_0x0134;
    L_0x010c:
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        if (r8 == r1) goto L_0x0114;
    L_0x0110:
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        if (r8 != r1) goto L_0x0134;
    L_0x0114:
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        r0 = r6.getAnchor(r0);
        r1 = r16.getAnchor(r17);
        r2 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        r2 = r6.getAnchor(r2);
        r0.connect$37b91e6c(r1, r9);
        r2.connect$37b91e6c(r1, r9);
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_X;
        r0 = r6.getAnchor(r0);
        r0.connect$37b91e6c(r1, r9);
        return;
    L_0x0134:
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_Y;
        if (r0 != r1) goto L_0x0160;
    L_0x0138:
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        if (r8 == r1) goto L_0x0140;
    L_0x013c:
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        if (r8 != r1) goto L_0x0160;
    L_0x0140:
        r0 = r16.getAnchor(r17);
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r1 = r6.getAnchor(r1);
        r1.connect$37b91e6c(r0, r9);
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r1 = r6.getAnchor(r1);
        r1.connect$37b91e6c(r0, r9);
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_Y;
        r1 = r6.getAnchor(r1);
        r1.connect$37b91e6c(r0, r9);
        return;
    L_0x0160:
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_X;
        if (r0 != r1) goto L_0x0194;
    L_0x0164:
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_X;
        if (r8 != r1) goto L_0x0194;
    L_0x0168:
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        r0 = r6.getAnchor(r0);
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        r1 = r7.getAnchor(r1);
        r0.connect$37b91e6c(r1, r9);
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        r0 = r6.getAnchor(r0);
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        r1 = r7.getAnchor(r1);
        r0.connect$37b91e6c(r1, r9);
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_X;
        r0 = r6.getAnchor(r0);
        r1 = r16.getAnchor(r17);
        r0.connect$37b91e6c(r1, r9);
        return;
    L_0x0194:
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_Y;
        if (r0 != r1) goto L_0x01c8;
    L_0x0198:
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_Y;
        if (r8 != r1) goto L_0x01c8;
    L_0x019c:
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r0 = r6.getAnchor(r0);
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r1 = r7.getAnchor(r1);
        r0.connect$37b91e6c(r1, r9);
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r0 = r6.getAnchor(r0);
        r1 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r1 = r7.getAnchor(r1);
        r0.connect$37b91e6c(r1, r9);
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_Y;
        r0 = r6.getAnchor(r0);
        r1 = r16.getAnchor(r17);
        r0.connect$37b91e6c(r1, r9);
        return;
    L_0x01c8:
        r1 = r6.getAnchor(r0);
        r2 = r16.getAnchor(r17);
        r3 = r1.isValidConnection(r2);
        if (r3 == 0) goto L_0x0267;
    L_0x01d6:
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BASELINE;
        if (r0 != r3) goto L_0x01f4;
    L_0x01da:
        r0 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        r0 = r6.getAnchor(r0);
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        r3 = r6.getAnchor(r3);
        if (r0 == 0) goto L_0x01eb;
    L_0x01e8:
        r0.reset();
    L_0x01eb:
        if (r3 == 0) goto L_0x01f0;
    L_0x01ed:
        r3.reset();
    L_0x01f0:
        r0 = r18;
        goto L_0x0264;
    L_0x01f4:
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.TOP;
        if (r0 == r3) goto L_0x022f;
    L_0x01f8:
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BOTTOM;
        if (r0 != r3) goto L_0x01fd;
    L_0x01fc:
        goto L_0x022f;
    L_0x01fd:
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.LEFT;
        if (r0 == r3) goto L_0x0205;
    L_0x0201:
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.RIGHT;
        if (r0 != r3) goto L_0x01f0;
    L_0x0205:
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER;
        r3 = r6.getAnchor(r3);
        r4 = r3.mTarget;
        if (r4 == r2) goto L_0x0212;
    L_0x020f:
        r3.reset();
    L_0x0212:
        r0 = r6.getAnchor(r0);
        r0 = r0.getOpposite();
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_X;
        r3 = r6.getAnchor(r3);
        r4 = r3.mTarget;
        if (r4 == 0) goto L_0x0225;
    L_0x0224:
        goto L_0x0226;
    L_0x0225:
        r10 = r11;
    L_0x0226:
        if (r10 == 0) goto L_0x01f0;
    L_0x0228:
        r0.reset();
        r3.reset();
        goto L_0x01f0;
    L_0x022f:
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.BASELINE;
        r3 = r6.getAnchor(r3);
        if (r3 == 0) goto L_0x023a;
    L_0x0237:
        r3.reset();
    L_0x023a:
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER;
        r3 = r6.getAnchor(r3);
        r4 = r3.mTarget;
        if (r4 == r2) goto L_0x0247;
    L_0x0244:
        r3.reset();
    L_0x0247:
        r0 = r6.getAnchor(r0);
        r0 = r0.getOpposite();
        r3 = android.support.constraint.solver.widgets.ConstraintAnchor.Type.CENTER_Y;
        r3 = r6.getAnchor(r3);
        r4 = r3.mTarget;
        if (r4 == 0) goto L_0x025a;
    L_0x0259:
        goto L_0x025b;
    L_0x025a:
        r10 = r11;
    L_0x025b:
        if (r10 == 0) goto L_0x01f0;
    L_0x025d:
        r0.reset();
        r3.reset();
        goto L_0x01f0;
    L_0x0264:
        r1.connect(r2, r11, r0, r9);
    L_0x0267:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.ConstraintWidget.connect$411e6efd(android.support.constraint.solver.widgets.ConstraintAnchor$Type, android.support.constraint.solver.widgets.ConstraintWidget, android.support.constraint.solver.widgets.ConstraintAnchor$Type, android.support.constraint.solver.widgets.ConstraintAnchor$Strength, int):void");
    }

    public final void resetAnchors() {
        int size = this.mAnchors.size();
        for (int i = 0; i < size; i++) {
            ((ConstraintAnchor) this.mAnchors.get(i)).reset();
        }
    }

    public ConstraintAnchor getAnchor(Type type) {
        switch (type) {
            case LEFT:
                return this.mLeft;
            case TOP:
                return this.mTop;
            case RIGHT:
                return this.mRight;
            case BOTTOM:
                return this.mBottom;
            case BASELINE:
                return this.mBaseline;
            case CENTER:
                return this.mCenter;
            case CENTER_X:
                return this.mCenterX;
            case CENTER_Y:
                return this.mCenterY;
            case NONE:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    public final DimensionBehaviour getHorizontalDimensionBehaviour() {
        return this.mListDimensionBehaviors[0];
    }

    public final DimensionBehaviour getVerticalDimensionBehaviour() {
        return this.mListDimensionBehaviors[1];
    }

    public final void setHorizontalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[0] = dimensionBehaviour;
        if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            this.mWidth = this.mWrapWidth;
            if (this.mWidth < this.mMinWidth) {
                this.mWidth = this.mMinWidth;
            }
        }
    }

    public final void setVerticalDimensionBehaviour(DimensionBehaviour dimensionBehaviour) {
        this.mListDimensionBehaviors[1] = dimensionBehaviour;
        if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            this.mHeight = this.mWrapHeight;
            if (this.mHeight < this.mMinHeight) {
                this.mHeight = this.mMinHeight;
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void addToSolver(android.support.constraint.solver.LinearSystem r42) {
        /*
        r41 = this;
        r15 = r41;
        r14 = r42;
        r0 = r15.mLeft;
        r21 = r14.createObjectVariable(r0);
        r0 = r15.mRight;
        r13 = r14.createObjectVariable(r0);
        r0 = r15.mTop;
        r12 = r14.createObjectVariable(r0);
        r0 = r15.mBottom;
        r11 = r14.createObjectVariable(r0);
        r0 = r15.mBaseline;
        r10 = r14.createObjectVariable(r0);
        r0 = r15.mParent;
        r1 = 8;
        r9 = 1;
        r8 = 0;
        if (r0 == 0) goto L_0x00e6;
    L_0x002a:
        r0 = r15.mParent;
        if (r0 == 0) goto L_0x003a;
    L_0x002e:
        r0 = r15.mParent;
        r0 = r0.mListDimensionBehaviors;
        r0 = r0[r8];
        r2 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (r0 != r2) goto L_0x003a;
    L_0x0038:
        r0 = r9;
        goto L_0x003b;
    L_0x003a:
        r0 = r8;
    L_0x003b:
        r2 = r15.mParent;
        if (r2 == 0) goto L_0x004b;
    L_0x003f:
        r2 = r15.mParent;
        r2 = r2.mListDimensionBehaviors;
        r2 = r2[r9];
        r3 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (r2 != r3) goto L_0x004b;
    L_0x0049:
        r2 = r9;
        goto L_0x004c;
    L_0x004b:
        r2 = r8;
    L_0x004c:
        r3 = r15.mLeft;
        r3 = r3.mTarget;
        if (r3 == 0) goto L_0x005c;
    L_0x0052:
        r3 = r15.mLeft;
        r3 = r3.mTarget;
        r3 = r3.mTarget;
        r4 = r15.mLeft;
        if (r3 == r4) goto L_0x006c;
    L_0x005c:
        r3 = r15.mRight;
        r3 = r3.mTarget;
        if (r3 == 0) goto L_0x0075;
    L_0x0062:
        r3 = r15.mRight;
        r3 = r3.mTarget;
        r3 = r3.mTarget;
        r4 = r15.mRight;
        if (r3 != r4) goto L_0x0075;
    L_0x006c:
        r3 = r15.mParent;
        r3 = (android.support.constraint.solver.widgets.ConstraintWidgetContainer) r3;
        r3.addChain(r15, r8);
        r3 = r9;
        goto L_0x0076;
    L_0x0075:
        r3 = r8;
    L_0x0076:
        r4 = r15.mTop;
        r4 = r4.mTarget;
        if (r4 == 0) goto L_0x0086;
    L_0x007c:
        r4 = r15.mTop;
        r4 = r4.mTarget;
        r4 = r4.mTarget;
        r5 = r15.mTop;
        if (r4 == r5) goto L_0x0096;
    L_0x0086:
        r4 = r15.mBottom;
        r4 = r4.mTarget;
        if (r4 == 0) goto L_0x009f;
    L_0x008c:
        r4 = r15.mBottom;
        r4 = r4.mTarget;
        r4 = r4.mTarget;
        r5 = r15.mBottom;
        if (r4 != r5) goto L_0x009f;
    L_0x0096:
        r4 = r15.mParent;
        r4 = (android.support.constraint.solver.widgets.ConstraintWidgetContainer) r4;
        r4.addChain(r15, r9);
        r4 = r9;
        goto L_0x00a0;
    L_0x009f:
        r4 = r8;
    L_0x00a0:
        if (r0 == 0) goto L_0x00bd;
    L_0x00a2:
        r5 = r15.mVisibility;
        if (r5 == r1) goto L_0x00bd;
    L_0x00a6:
        r5 = r15.mLeft;
        r5 = r5.mTarget;
        if (r5 != 0) goto L_0x00bd;
    L_0x00ac:
        r5 = r15.mRight;
        r5 = r5.mTarget;
        if (r5 != 0) goto L_0x00bd;
    L_0x00b2:
        r5 = r15.mParent;
        r5 = r5.mRight;
        r5 = r14.createObjectVariable(r5);
        r14.addGreaterThan(r5, r13, r8, r9);
    L_0x00bd:
        if (r2 == 0) goto L_0x00de;
    L_0x00bf:
        r5 = r15.mVisibility;
        if (r5 == r1) goto L_0x00de;
    L_0x00c3:
        r5 = r15.mTop;
        r5 = r5.mTarget;
        if (r5 != 0) goto L_0x00de;
    L_0x00c9:
        r5 = r15.mBottom;
        r5 = r5.mTarget;
        if (r5 != 0) goto L_0x00de;
    L_0x00cf:
        r5 = r15.mBaseline;
        if (r5 != 0) goto L_0x00de;
    L_0x00d3:
        r5 = r15.mParent;
        r5 = r5.mBottom;
        r5 = r14.createObjectVariable(r5);
        r14.addGreaterThan(r5, r11, r8, r9);
    L_0x00de:
        r22 = r2;
        r16 = r3;
        r23 = r4;
        r2 = r0;
        goto L_0x00ed;
    L_0x00e6:
        r2 = r8;
        r16 = r2;
        r22 = r16;
        r23 = r22;
    L_0x00ed:
        r0 = r15.mWidth;
        r3 = r15.mMinWidth;
        if (r0 >= r3) goto L_0x00f5;
    L_0x00f3:
        r0 = r15.mMinWidth;
    L_0x00f5:
        r3 = r15.mHeight;
        r4 = r15.mMinHeight;
        if (r3 >= r4) goto L_0x00fd;
    L_0x00fb:
        r3 = r15.mMinHeight;
    L_0x00fd:
        r4 = r15.mListDimensionBehaviors;
        r4 = r4[r8];
        r5 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (r4 == r5) goto L_0x0107;
    L_0x0105:
        r4 = r9;
        goto L_0x0108;
    L_0x0107:
        r4 = r8;
    L_0x0108:
        r5 = r15.mListDimensionBehaviors;
        r5 = r5[r9];
        r6 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (r5 == r6) goto L_0x0112;
    L_0x0110:
        r5 = r9;
        goto L_0x0113;
    L_0x0112:
        r5 = r8;
    L_0x0113:
        r6 = r15.mDimensionRatioSide;
        r15.mResolvedDimensionRatioSide = r6;
        r6 = r15.mDimensionRatio;
        r15.mResolvedDimensionRatio = r6;
        r6 = r15.mDimensionRatio;
        r7 = 0;
        r6 = (r6 > r7 ? 1 : (r6 == r7 ? 0 : -1));
        r7 = -1;
        if (r6 <= 0) goto L_0x0268;
    L_0x0123:
        r6 = r15.mVisibility;
        if (r6 == r1) goto L_0x0268;
    L_0x0127:
        r1 = r15.mListDimensionBehaviors;
        r1 = r1[r8];
        r6 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        r17 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        if (r1 != r6) goto L_0x0230;
    L_0x0131:
        r1 = r15.mListDimensionBehaviors;
        r1 = r1[r9];
        r6 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (r1 != r6) goto L_0x0230;
    L_0x0139:
        r1 = r15.mMatchConstraintDefaultWidth;
        r6 = 3;
        if (r1 != 0) goto L_0x0140;
    L_0x013e:
        r15.mMatchConstraintDefaultWidth = r6;
    L_0x0140:
        r1 = r15.mMatchConstraintDefaultHeight;
        if (r1 != 0) goto L_0x0146;
    L_0x0144:
        r15.mMatchConstraintDefaultHeight = r6;
    L_0x0146:
        r1 = r15.mResolvedDimensionRatioSide;
        if (r1 != r7) goto L_0x0161;
    L_0x014a:
        if (r4 == 0) goto L_0x0151;
    L_0x014c:
        if (r5 != 0) goto L_0x0151;
    L_0x014e:
        r15.mResolvedDimensionRatioSide = r8;
        goto L_0x0161;
    L_0x0151:
        if (r4 != 0) goto L_0x0161;
    L_0x0153:
        if (r5 == 0) goto L_0x0161;
    L_0x0155:
        r15.mResolvedDimensionRatioSide = r9;
        r1 = r15.mDimensionRatioSide;
        if (r1 != r7) goto L_0x0161;
    L_0x015b:
        r1 = r15.mResolvedDimensionRatio;
        r1 = r17 / r1;
        r15.mResolvedDimensionRatio = r1;
    L_0x0161:
        r1 = r15.mResolvedDimensionRatioSide;
        if (r1 != 0) goto L_0x017e;
    L_0x0165:
        r1 = r15.mTop;
        r1 = r1.mTarget;
        if (r1 == 0) goto L_0x016d;
    L_0x016b:
        r1 = r9;
        goto L_0x016e;
    L_0x016d:
        r1 = r8;
    L_0x016e:
        if (r1 == 0) goto L_0x017b;
    L_0x0170:
        r1 = r15.mBottom;
        r1 = r1.mTarget;
        if (r1 == 0) goto L_0x0178;
    L_0x0176:
        r1 = r9;
        goto L_0x0179;
    L_0x0178:
        r1 = r8;
    L_0x0179:
        if (r1 != 0) goto L_0x017e;
    L_0x017b:
        r15.mResolvedDimensionRatioSide = r9;
        goto L_0x019a;
    L_0x017e:
        r1 = r15.mResolvedDimensionRatioSide;
        if (r1 != r9) goto L_0x019a;
    L_0x0182:
        r1 = r15.mLeft;
        r1 = r1.mTarget;
        if (r1 == 0) goto L_0x018a;
    L_0x0188:
        r1 = r9;
        goto L_0x018b;
    L_0x018a:
        r1 = r8;
    L_0x018b:
        if (r1 == 0) goto L_0x0198;
    L_0x018d:
        r1 = r15.mRight;
        r1 = r1.mTarget;
        if (r1 == 0) goto L_0x0195;
    L_0x0193:
        r1 = r9;
        goto L_0x0196;
    L_0x0195:
        r1 = r8;
    L_0x0196:
        if (r1 != 0) goto L_0x019a;
    L_0x0198:
        r15.mResolvedDimensionRatioSide = r8;
    L_0x019a:
        r1 = r15.mResolvedDimensionRatioSide;
        if (r1 != r7) goto L_0x0201;
    L_0x019e:
        r1 = r15.mTop;
        r1 = r1.mTarget;
        if (r1 == 0) goto L_0x01a6;
    L_0x01a4:
        r1 = r9;
        goto L_0x01a7;
    L_0x01a6:
        r1 = r8;
    L_0x01a7:
        if (r1 == 0) goto L_0x01ca;
    L_0x01a9:
        r1 = r15.mBottom;
        r1 = r1.mTarget;
        if (r1 == 0) goto L_0x01b1;
    L_0x01af:
        r1 = r9;
        goto L_0x01b2;
    L_0x01b1:
        r1 = r8;
    L_0x01b2:
        if (r1 == 0) goto L_0x01ca;
    L_0x01b4:
        r1 = r15.mLeft;
        r1 = r1.mTarget;
        if (r1 == 0) goto L_0x01bc;
    L_0x01ba:
        r1 = r9;
        goto L_0x01bd;
    L_0x01bc:
        r1 = r8;
    L_0x01bd:
        if (r1 == 0) goto L_0x01ca;
    L_0x01bf:
        r1 = r15.mRight;
        r1 = r1.mTarget;
        if (r1 == 0) goto L_0x01c7;
    L_0x01c5:
        r1 = r9;
        goto L_0x01c8;
    L_0x01c7:
        r1 = r8;
    L_0x01c8:
        if (r1 != 0) goto L_0x0201;
    L_0x01ca:
        r1 = r15.mTop;
        r1 = r1.mTarget;
        if (r1 == 0) goto L_0x01d2;
    L_0x01d0:
        r1 = r9;
        goto L_0x01d3;
    L_0x01d2:
        r1 = r8;
    L_0x01d3:
        if (r1 == 0) goto L_0x01e3;
    L_0x01d5:
        r1 = r15.mBottom;
        r1 = r1.mTarget;
        if (r1 == 0) goto L_0x01dd;
    L_0x01db:
        r1 = r9;
        goto L_0x01de;
    L_0x01dd:
        r1 = r8;
    L_0x01de:
        if (r1 == 0) goto L_0x01e3;
    L_0x01e0:
        r15.mResolvedDimensionRatioSide = r8;
        goto L_0x0201;
    L_0x01e3:
        r1 = r15.mLeft;
        r1 = r1.mTarget;
        if (r1 == 0) goto L_0x01eb;
    L_0x01e9:
        r1 = r9;
        goto L_0x01ec;
    L_0x01eb:
        r1 = r8;
    L_0x01ec:
        if (r1 == 0) goto L_0x0201;
    L_0x01ee:
        r1 = r15.mRight;
        r1 = r1.mTarget;
        if (r1 == 0) goto L_0x01f6;
    L_0x01f4:
        r1 = r9;
        goto L_0x01f7;
    L_0x01f6:
        r1 = r8;
    L_0x01f7:
        if (r1 == 0) goto L_0x0201;
    L_0x01f9:
        r1 = r15.mResolvedDimensionRatio;
        r1 = r17 / r1;
        r15.mResolvedDimensionRatio = r1;
        r15.mResolvedDimensionRatioSide = r9;
    L_0x0201:
        r1 = r15.mResolvedDimensionRatioSide;
        if (r1 != r7) goto L_0x0218;
    L_0x0205:
        if (r2 == 0) goto L_0x020c;
    L_0x0207:
        if (r22 != 0) goto L_0x020c;
    L_0x0209:
        r15.mResolvedDimensionRatioSide = r8;
        goto L_0x0218;
    L_0x020c:
        if (r2 != 0) goto L_0x0218;
    L_0x020e:
        if (r22 == 0) goto L_0x0218;
    L_0x0210:
        r1 = r15.mResolvedDimensionRatio;
        r1 = r17 / r1;
        r15.mResolvedDimensionRatio = r1;
        r15.mResolvedDimensionRatioSide = r9;
    L_0x0218:
        r1 = r15.mResolvedDimensionRatioSide;
        if (r1 != r7) goto L_0x0241;
    L_0x021c:
        r1 = r15.mMatchConstraintMinWidth;
        if (r1 <= 0) goto L_0x0227;
    L_0x0220:
        r1 = r15.mMatchConstraintMinHeight;
        if (r1 != 0) goto L_0x0227;
    L_0x0224:
        r15.mResolvedDimensionRatioSide = r8;
        goto L_0x0241;
    L_0x0227:
        r1 = r15.mResolvedDimensionRatio;
        r1 = r17 / r1;
        r15.mResolvedDimensionRatio = r1;
        r15.mResolvedDimensionRatioSide = r9;
        goto L_0x0241;
    L_0x0230:
        r1 = r15.mListDimensionBehaviors;
        r1 = r1[r8];
        r4 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (r1 != r4) goto L_0x0248;
    L_0x0238:
        r15.mResolvedDimensionRatioSide = r8;
        r0 = r15.mResolvedDimensionRatio;
        r1 = r15.mHeight;
        r1 = (float) r1;
        r0 = r0 * r1;
        r0 = (int) r0;
    L_0x0241:
        r17 = r0;
        r25 = r3;
    L_0x0245:
        r24 = r9;
        goto L_0x026e;
    L_0x0248:
        r1 = r15.mListDimensionBehaviors;
        r1 = r1[r9];
        r4 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (r1 != r4) goto L_0x0241;
    L_0x0250:
        r15.mResolvedDimensionRatioSide = r9;
        r1 = r15.mDimensionRatioSide;
        if (r1 != r7) goto L_0x025c;
    L_0x0256:
        r1 = r15.mResolvedDimensionRatio;
        r1 = r17 / r1;
        r15.mResolvedDimensionRatio = r1;
    L_0x025c:
        r1 = r15.mResolvedDimensionRatio;
        r3 = r15.mWidth;
        r3 = (float) r3;
        r1 = r1 * r3;
        r1 = (int) r1;
        r17 = r0;
        r25 = r1;
        goto L_0x0245;
    L_0x0268:
        r17 = r0;
        r25 = r3;
        r24 = r8;
    L_0x026e:
        if (r24 == 0) goto L_0x027b;
    L_0x0270:
        r0 = r15.mResolvedDimensionRatioSide;
        if (r0 == 0) goto L_0x0278;
    L_0x0274:
        r0 = r15.mResolvedDimensionRatioSide;
        if (r0 != r7) goto L_0x027b;
    L_0x0278:
        r18 = r9;
        goto L_0x027d;
    L_0x027b:
        r18 = r8;
    L_0x027d:
        r0 = r15.mListDimensionBehaviors;
        r0 = r0[r8];
        r1 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (r0 != r1) goto L_0x028b;
    L_0x0285:
        r0 = r15 instanceof android.support.constraint.solver.widgets.ConstraintWidgetContainer;
        if (r0 == 0) goto L_0x028b;
    L_0x0289:
        r6 = r9;
        goto L_0x028c;
    L_0x028b:
        r6 = r8;
    L_0x028c:
        r0 = r15.mCenter;
        r0 = r0.mTarget;
        if (r0 == 0) goto L_0x0294;
    L_0x0292:
        r0 = r9;
        goto L_0x0295;
    L_0x0294:
        r0 = r8;
    L_0x0295:
        r26 = r0 ^ 1;
        r0 = r15.mHorizontalResolution;
        r5 = 2;
        r27 = 0;
        if (r0 == r5) goto L_0x031a;
    L_0x029e:
        r0 = r15.mParent;
        if (r0 == 0) goto L_0x02ac;
    L_0x02a2:
        r0 = r15.mParent;
        r0 = r0.mRight;
        r0 = r14.createObjectVariable(r0);
        r4 = r0;
        goto L_0x02ae;
    L_0x02ac:
        r4 = r27;
    L_0x02ae:
        r0 = r15.mParent;
        if (r0 == 0) goto L_0x02bc;
    L_0x02b2:
        r0 = r15.mParent;
        r0 = r0.mLeft;
        r0 = r14.createObjectVariable(r0);
        r3 = r0;
        goto L_0x02be;
    L_0x02bc:
        r3 = r27;
    L_0x02be:
        r0 = r15.mListDimensionBehaviors;
        r19 = r0[r8];
        r1 = r15.mLeft;
        r0 = r15.mRight;
        r9 = r15.mX;
        r29 = r11;
        r11 = r15.mMinWidth;
        r5 = r15.mMaxDimension;
        r20 = r5[r8];
        r5 = r15.mHorizontalBiasPercent;
        r31 = r13;
        r13 = r15.mMatchConstraintDefaultWidth;
        r32 = r13;
        r13 = r15.mMatchConstraintMinWidth;
        r33 = r13;
        r13 = r15.mMatchConstraintMaxWidth;
        r34 = r13;
        r13 = r15.mMatchConstraintPercentWidth;
        r35 = r0;
        r0 = r15;
        r36 = r1;
        r1 = r14;
        r30 = r5;
        r5 = r19;
        r7 = r36;
        r8 = r35;
        r37 = r10;
        r10 = r17;
        r28 = r29;
        r38 = r12;
        r12 = r20;
        r29 = r31;
        r17 = r32;
        r19 = r33;
        r20 = r34;
        r31 = r13;
        r13 = r30;
        r14 = r18;
        r15 = r16;
        r16 = r17;
        r17 = r19;
        r18 = r20;
        r19 = r31;
        r20 = r26;
        r0.applyConstraints(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20);
        r15 = r41;
        goto L_0x0322;
    L_0x031a:
        r37 = r10;
        r28 = r11;
        r38 = r12;
        r29 = r13;
    L_0x0322:
        r0 = r15.mVerticalResolution;
        r1 = 2;
        if (r0 != r1) goto L_0x0328;
    L_0x0327:
        return;
    L_0x0328:
        r0 = r15.mListDimensionBehaviors;
        r14 = 1;
        r0 = r0[r14];
        r1 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (r0 != r1) goto L_0x0337;
    L_0x0331:
        r0 = r15 instanceof android.support.constraint.solver.widgets.ConstraintWidgetContainer;
        if (r0 == 0) goto L_0x0337;
    L_0x0335:
        r6 = r14;
        goto L_0x0338;
    L_0x0337:
        r6 = 0;
    L_0x0338:
        if (r24 == 0) goto L_0x0346;
    L_0x033a:
        r0 = r15.mResolvedDimensionRatioSide;
        if (r0 == r14) goto L_0x0343;
    L_0x033e:
        r0 = r15.mResolvedDimensionRatioSide;
        r1 = -1;
        if (r0 != r1) goto L_0x0346;
    L_0x0343:
        r16 = r14;
        goto L_0x0348;
    L_0x0346:
        r16 = 0;
    L_0x0348:
        r0 = r15.mBaselineDistance;
        if (r0 <= 0) goto L_0x0386;
    L_0x034c:
        r0 = r15.mBaseline;
        r0 = r0.getResolutionNode();
        r0 = r0.state;
        if (r0 != r14) goto L_0x0365;
    L_0x0356:
        r0 = r15.mBaseline;
        r0 = r0.getResolutionNode();
        r13 = r42;
        r0.addResolvedValue(r13);
        r12 = r38;
    L_0x0363:
        r11 = 0;
        goto L_0x038b;
    L_0x0365:
        r13 = r42;
        r0 = r15.mBaselineDistance;
        r1 = 6;
        r2 = r37;
        r12 = r38;
        r13.addEquality(r2, r12, r0, r1);
        r0 = r15.mBaseline;
        r0 = r0.mTarget;
        if (r0 == 0) goto L_0x0363;
    L_0x0377:
        r0 = r15.mBaseline;
        r0 = r0.mTarget;
        r0 = r13.createObjectVariable(r0);
        r11 = 0;
        r13.addEquality(r2, r0, r11, r1);
        r20 = r11;
        goto L_0x038d;
    L_0x0386:
        r12 = r38;
        r11 = 0;
        r13 = r42;
    L_0x038b:
        r20 = r26;
    L_0x038d:
        r0 = r15.mParent;
        if (r0 == 0) goto L_0x039b;
    L_0x0391:
        r0 = r15.mParent;
        r0 = r0.mBottom;
        r0 = r13.createObjectVariable(r0);
        r4 = r0;
        goto L_0x039d;
    L_0x039b:
        r4 = r27;
    L_0x039d:
        r0 = r15.mParent;
        if (r0 == 0) goto L_0x03ab;
    L_0x03a1:
        r0 = r15.mParent;
        r0 = r0.mTop;
        r0 = r13.createObjectVariable(r0);
        r3 = r0;
        goto L_0x03ad;
    L_0x03ab:
        r3 = r27;
    L_0x03ad:
        r0 = r15.mListDimensionBehaviors;
        r5 = r0[r14];
        r7 = r15.mTop;
        r8 = r15.mBottom;
        r9 = r15.mY;
        r10 = r15.mMinHeight;
        r0 = r15.mMaxDimension;
        r17 = r0[r14];
        r2 = r15.mVerticalBiasPercent;
        r1 = r15.mMatchConstraintDefaultHeight;
        r0 = r15.mMatchConstraintMinHeight;
        r14 = r15.mMatchConstraintMaxHeight;
        r39 = r14;
        r14 = r15.mMatchConstraintPercentHeight;
        r18 = r0;
        r0 = r15;
        r19 = r1;
        r1 = r13;
        r26 = r2;
        r2 = r22;
        r22 = r10;
        r10 = r25;
        r25 = r11;
        r11 = r22;
        r22 = r12;
        r12 = r17;
        r13 = r26;
        r27 = r14;
        r26 = r39;
        r14 = r16;
        r15 = r23;
        r16 = r19;
        r17 = r18;
        r18 = r26;
        r19 = r27;
        r0.applyConstraints(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20);
        if (r24 == 0) goto L_0x041d;
    L_0x03f6:
        r6 = r41;
        r0 = r6.mResolvedDimensionRatioSide;
        r7 = 1;
        if (r0 != r7) goto L_0x040d;
    L_0x03fd:
        r5 = r6.mResolvedDimensionRatio;
        r0 = r42;
        r1 = r28;
        r2 = r22;
        r3 = r29;
        r4 = r21;
        r0.addRatio$76df2730(r1, r2, r3, r4, r5);
        goto L_0x0420;
    L_0x040d:
        r5 = r6.mResolvedDimensionRatio;
        r0 = r42;
        r1 = r29;
        r2 = r21;
        r3 = r28;
        r4 = r22;
        r0.addRatio$76df2730(r1, r2, r3, r4, r5);
        goto L_0x0420;
    L_0x041d:
        r6 = r41;
        r7 = 1;
    L_0x0420:
        r0 = r6.mCenter;
        r0 = r0.mTarget;
        if (r0 == 0) goto L_0x0427;
    L_0x0426:
        goto L_0x0429;
    L_0x0427:
        r7 = r25;
    L_0x0429:
        if (r7 == 0) goto L_0x0447;
    L_0x042b:
        r0 = r6.mCenter;
        r0 = r0.mTarget;
        r0 = r0.mOwner;
        r1 = r6.mCircleConstraintAngle;
        r2 = 1119092736; // 0x42b40000 float:90.0 double:5.529052754E-315;
        r1 = r1 + r2;
        r1 = (double) r1;
        r1 = java.lang.Math.toRadians(r1);
        r1 = (float) r1;
        r2 = r6.mCenter;
        r2 = r2.getMargin();
        r3 = r42;
        r3.addCenterPoint(r6, r0, r1, r2);
    L_0x0447:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.ConstraintWidget.addToSolver(android.support.constraint.solver.LinearSystem):void");
    }

    private void applyConstraints(LinearSystem linearSystem, boolean z, SolverVariable solverVariable, SolverVariable solverVariable2, DimensionBehaviour dimensionBehaviour, boolean z2, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i, int i2, int i3, int i4, float f, boolean z3, boolean z4, int i5, int i6, int i7, float f2, boolean z5) {
        ConstraintWidget constraintWidget = this;
        LinearSystem linearSystem2 = linearSystem;
        SolverVariable solverVariable3 = solverVariable;
        SolverVariable solverVariable4 = solverVariable2;
        ConstraintAnchor constraintAnchor3 = constraintAnchor;
        ConstraintAnchor constraintAnchor4 = constraintAnchor2;
        int i8 = i3;
        int i9 = i4;
        SolverVariable createObjectVariable = linearSystem2.createObjectVariable(constraintAnchor3);
        SolverVariable createObjectVariable2 = linearSystem2.createObjectVariable(constraintAnchor4);
        SolverVariable createObjectVariable3 = linearSystem2.createObjectVariable(constraintAnchor3.mTarget);
        SolverVariable createObjectVariable4 = linearSystem2.createObjectVariable(constraintAnchor4.mTarget);
        if (linearSystem2.graphOptimizer && constraintAnchor.getResolutionNode().state == 1 && constraintAnchor2.getResolutionNode().state == 1) {
            LinearSystem.getMetrics$51a36633();
            constraintAnchor.getResolutionNode().addResolvedValue(linearSystem2);
            constraintAnchor2.getResolutionNode().addResolvedValue(linearSystem2);
            if (!z4 && z) {
                linearSystem2.addGreaterThan(solverVariable4, createObjectVariable2, 0, 6);
            }
            return;
        }
        Object obj;
        int i10;
        Object obj2;
        int i11;
        int i12;
        SolverVariable solverVariable5;
        int i13;
        int i14;
        SolverVariable createObjectVariable5;
        SolverVariable solverVariable6;
        SolverVariable createObjectVariable6;
        int i15;
        int i16;
        SolverVariable solverVariable7;
        SolverVariable solverVariable8;
        SolverVariable solverVariable9;
        int i17;
        SolverVariable solverVariable10;
        int i18;
        int i19;
        int i20;
        SolverVariable solverVariable11;
        SolverVariable solverVariable12;
        SolverVariable solverVariable13;
        LinearSystem.getMetrics$51a36633();
        Object obj3 = constraintAnchor3.mTarget != null ? 1 : null;
        Object obj4 = constraintAnchor4.mTarget != null ? 1 : null;
        Object obj5 = constraintWidget.mCenter.mTarget != null ? 1 : null;
        int i21 = obj3 != null ? 1 : 0;
        if (obj4 != null) {
            i21++;
        }
        if (obj5 != null) {
            i21++;
        }
        int i22 = i21;
        int i23 = z3 ? 3 : i5;
        switch (dimensionBehaviour) {
            case MATCH_CONSTRAINT:
                obj = 1;
                break;
            default:
                obj = null;
                break;
        }
        if (constraintWidget.mVisibility == 8) {
            i10 = 0;
            obj = null;
        } else {
            i10 = i2;
        }
        if (z5) {
            if (obj3 == null && obj4 == null && obj5 == null) {
                linearSystem2.addEquality(createObjectVariable, i);
            } else if (obj3 != null && obj4 == null) {
                obj2 = obj5;
                i11 = 6;
                linearSystem2.addEquality(createObjectVariable, createObjectVariable3, constraintAnchor.getMargin(), 6);
                if (obj != null) {
                    if (z2) {
                        linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i10, i11);
                    } else {
                        linearSystem2.addEquality(createObjectVariable2, createObjectVariable, 0, 3);
                        if (i8 <= 0) {
                            i12 = 6;
                            linearSystem2.addGreaterThan(createObjectVariable2, createObjectVariable, i8, 6);
                        } else {
                            i12 = 6;
                        }
                        if (i9 < ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
                            linearSystem2.addLowerThan(createObjectVariable2, createObjectVariable, i9, i12);
                        }
                    }
                    i12 = i6;
                    i11 = i7;
                    solverVariable5 = createObjectVariable3;
                    i13 = i22;
                    i14 = i23;
                } else {
                    i12 = i11;
                    i11 = i6;
                    if (i11 != -2) {
                        i11 = i7;
                        i12 = i10;
                    } else {
                        i12 = i11;
                        i11 = i7;
                    }
                    if (i11 == -2) {
                        i11 = i10;
                    }
                    if (i12 <= 0) {
                        i9 = 6;
                        linearSystem2.addGreaterThan(createObjectVariable2, createObjectVariable, i12, 6);
                        i10 = Math.max(i10, i12);
                    } else {
                        i9 = 6;
                    }
                    if (i11 > 0) {
                        if (z) {
                            linearSystem2.addLowerThan(createObjectVariable2, createObjectVariable, i11, i9);
                        } else {
                            linearSystem2.addLowerThan(createObjectVariable2, createObjectVariable, i11, 1);
                        }
                        i10 = Math.min(i10, i11);
                    }
                    i9 = i10;
                    solverVariable5 = createObjectVariable3;
                    i10 = i23;
                    if (i10 != 1) {
                        if (z) {
                            linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i9, 6);
                        } else if (z4) {
                            linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i9, 1);
                        } else {
                            linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i9, 4);
                        }
                    } else if (i10 == 2) {
                        i14 = i10;
                        if (constraintAnchor3.mType != Type.TOP) {
                            if (constraintAnchor3.mType == Type.BOTTOM) {
                                SolverVariable createObjectVariable7 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.LEFT));
                                createObjectVariable5 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.RIGHT));
                                solverVariable6 = createObjectVariable7;
                                linearSystem2.addConstraint(linearSystem.createRow().createRowDimensionRatio(createObjectVariable2, createObjectVariable, createObjectVariable5, solverVariable6, f2));
                                obj = null;
                                if (obj == null) {
                                    i13 = i22;
                                    if (!(i13 == 2 || z3)) {
                                        i9 = Math.max(i12, i9);
                                        if (i11 > 0) {
                                            i9 = Math.min(i11, i9);
                                        }
                                        linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i9, 6);
                                        obj = null;
                                    }
                                } else {
                                    i13 = i22;
                                }
                            }
                        }
                        createObjectVariable6 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.TOP));
                        createObjectVariable5 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.BOTTOM));
                        solverVariable6 = createObjectVariable6;
                        linearSystem2.addConstraint(linearSystem.createRow().createRowDimensionRatio(createObjectVariable2, createObjectVariable, createObjectVariable5, solverVariable6, f2));
                        obj = null;
                        if (obj == null) {
                            i13 = i22;
                        } else {
                            i13 = i22;
                            i9 = Math.max(i12, i9);
                            if (i11 > 0) {
                                i9 = Math.min(i11, i9);
                            }
                            linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i9, 6);
                            obj = null;
                        }
                    }
                    i14 = i10;
                    if (obj == null) {
                        i13 = i22;
                        i9 = Math.max(i12, i9);
                        if (i11 > 0) {
                            i9 = Math.min(i11, i9);
                        }
                        linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i9, 6);
                        obj = null;
                    } else {
                        i13 = i22;
                    }
                }
                if (z5) {
                    if (z4) {
                        if (obj3 == null || obj4 != null || r26 != null) {
                            i15 = 0;
                            createObjectVariable3 = solverVariable2;
                            if (obj3 == null && obj4 == null) {
                                if (z) {
                                    linearSystem2.addGreaterThan(createObjectVariable3, createObjectVariable2, 0, 5);
                                }
                                i16 = i15;
                                solverVariable7 = createObjectVariable2;
                                i9 = 6;
                                if (z) {
                                    linearSystem2.addGreaterThan(solverVariable2, solverVariable7, i16, i9);
                                }
                                return;
                            } else if (obj3 == null || obj4 == null) {
                                solverVariable8 = createObjectVariable4;
                                solverVariable9 = solverVariable;
                                if (!(obj3 == null || obj4 == null)) {
                                    if (obj == null) {
                                        if (z || i8 != 0) {
                                            i17 = 6;
                                        } else {
                                            i17 = 6;
                                            linearSystem2.addGreaterThan(createObjectVariable2, createObjectVariable, 0, 6);
                                        }
                                        if (i14 != 0) {
                                            if (i11 <= 0) {
                                                if (i12 > 0) {
                                                    i10 = 0;
                                                    i8 = i17;
                                                    solverVariable10 = solverVariable5;
                                                    linearSystem2.addEquality(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), i8);
                                                    linearSystem2.addEquality(createObjectVariable2, solverVariable8, -constraintAnchor2.getMargin(), i8);
                                                    if (i11 <= 0) {
                                                        if (i12 <= 0) {
                                                            i18 = 0;
                                                            i19 = i10;
                                                            i8 = i18;
                                                        }
                                                    }
                                                    i18 = 1;
                                                    i19 = i10;
                                                    i8 = i18;
                                                }
                                            }
                                            i8 = 4;
                                            i10 = 1;
                                            solverVariable10 = solverVariable5;
                                            linearSystem2.addEquality(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), i8);
                                            linearSystem2.addEquality(createObjectVariable2, solverVariable8, -constraintAnchor2.getMargin(), i8);
                                            if (i11 <= 0) {
                                                if (i12 <= 0) {
                                                    i18 = 0;
                                                    i19 = i10;
                                                    i8 = i18;
                                                }
                                            }
                                            i18 = 1;
                                            i19 = i10;
                                            i8 = i18;
                                        } else {
                                            solverVariable10 = solverVariable5;
                                            i12 = i14;
                                            i8 = 1;
                                            if (i12 != 1) {
                                                i19 = 1;
                                                i20 = i17;
                                            } else {
                                                if (i12 != 3) {
                                                    i10 = z3 ? i17 : 4;
                                                    linearSystem2.addEquality(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), i10);
                                                    linearSystem2.addEquality(createObjectVariable2, solverVariable8, -constraintAnchor2.getMargin(), i10);
                                                } else {
                                                    i8 = 0;
                                                }
                                                i19 = i8;
                                            }
                                        }
                                        i20 = 5;
                                    } else {
                                        solverVariable10 = solverVariable5;
                                        i8 = 1;
                                        i17 = 6;
                                        if (z) {
                                            i19 = 5;
                                        } else {
                                            i19 = 5;
                                            linearSystem2.addGreaterThan(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), 5);
                                            linearSystem2.addLowerThan(createObjectVariable2, solverVariable8, -constraintAnchor2.getMargin(), 5);
                                        }
                                        i20 = i19;
                                        i19 = 0;
                                    }
                                    if (i8 == 0) {
                                        createObjectVariable6 = solverVariable9;
                                        i12 = 0;
                                        SolverVariable solverVariable14 = solverVariable10;
                                        i13 = i17;
                                        solverVariable4 = solverVariable8;
                                        solverVariable10 = solverVariable14;
                                        solverVariable11 = createObjectVariable2;
                                        solverVariable12 = createObjectVariable;
                                        linearSystem2.addCentering(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), f, solverVariable4, createObjectVariable2, constraintAnchor2.getMargin(), i20);
                                    } else {
                                        solverVariable4 = solverVariable8;
                                        solverVariable11 = createObjectVariable2;
                                        solverVariable12 = createObjectVariable;
                                    }
                                    if (i19 == 0) {
                                        i9 = 6;
                                        linearSystem2.addGreaterThan(solverVariable12, solverVariable10, constraintAnchor.getMargin(), 6);
                                        linearSystem2.addLowerThan(solverVariable11, solverVariable4, -constraintAnchor2.getMargin(), 6);
                                    } else {
                                        i9 = 6;
                                    }
                                    solverVariable7 = solverVariable11;
                                    if (z) {
                                        i16 = 0;
                                        linearSystem2.addGreaterThan(solverVariable12, solverVariable, 0, i9);
                                        if (z) {
                                            linearSystem2.addGreaterThan(solverVariable2, solverVariable7, i16, i9);
                                        }
                                        return;
                                    }
                                }
                                i16 = i15;
                                solverVariable7 = createObjectVariable2;
                                i9 = 6;
                                if (z) {
                                    linearSystem2.addGreaterThan(solverVariable2, solverVariable7, i16, i9);
                                }
                                return;
                            } else {
                                linearSystem2.addEquality(createObjectVariable2, createObjectVariable4, -constraintAnchor2.getMargin(), 6);
                                if (z) {
                                    linearSystem2.addGreaterThan(createObjectVariable, solverVariable, 0, 5);
                                }
                                i16 = i15;
                                solverVariable7 = createObjectVariable2;
                                i9 = 6;
                                if (z) {
                                    linearSystem2.addGreaterThan(solverVariable2, solverVariable7, i16, i9);
                                }
                                return;
                            }
                        } else if (z) {
                            i15 = 0;
                            linearSystem2.addGreaterThan(solverVariable2, createObjectVariable2, 0, 5);
                            i16 = i15;
                            solverVariable7 = createObjectVariable2;
                            i9 = 6;
                            if (z) {
                                linearSystem2.addGreaterThan(solverVariable2, solverVariable7, i16, i9);
                            }
                            return;
                        } else {
                            solverVariable7 = createObjectVariable2;
                            i9 = 6;
                        }
                        i16 = 0;
                        if (z) {
                            linearSystem2.addGreaterThan(solverVariable2, solverVariable7, i16, i9);
                        }
                        return;
                    }
                }
                solverVariable7 = createObjectVariable2;
                solverVariable12 = createObjectVariable;
                createObjectVariable6 = solverVariable;
                solverVariable13 = solverVariable2;
                if (i13 < 2 && z) {
                    linearSystem2.addGreaterThan(solverVariable12, createObjectVariable6, 0, 6);
                    linearSystem2.addGreaterThan(solverVariable13, solverVariable7, 0, 6);
                }
            }
        }
        obj2 = obj5;
        i11 = 6;
        if (obj != null) {
            i12 = i11;
            i11 = i6;
            if (i11 != -2) {
                i12 = i11;
                i11 = i7;
            } else {
                i11 = i7;
                i12 = i10;
            }
            if (i11 == -2) {
                i11 = i10;
            }
            if (i12 <= 0) {
                i9 = 6;
            } else {
                i9 = 6;
                linearSystem2.addGreaterThan(createObjectVariable2, createObjectVariable, i12, 6);
                i10 = Math.max(i10, i12);
            }
            if (i11 > 0) {
                if (z) {
                    linearSystem2.addLowerThan(createObjectVariable2, createObjectVariable, i11, i9);
                } else {
                    linearSystem2.addLowerThan(createObjectVariable2, createObjectVariable, i11, 1);
                }
                i10 = Math.min(i10, i11);
            }
            i9 = i10;
            solverVariable5 = createObjectVariable3;
            i10 = i23;
            if (i10 != 1) {
                if (i10 == 2) {
                    i14 = i10;
                    if (constraintAnchor3.mType != Type.TOP) {
                        if (constraintAnchor3.mType == Type.BOTTOM) {
                            SolverVariable createObjectVariable72 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.LEFT));
                            createObjectVariable5 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.RIGHT));
                            solverVariable6 = createObjectVariable72;
                            linearSystem2.addConstraint(linearSystem.createRow().createRowDimensionRatio(createObjectVariable2, createObjectVariable, createObjectVariable5, solverVariable6, f2));
                            obj = null;
                            if (obj == null) {
                                i13 = i22;
                            } else {
                                i13 = i22;
                                i9 = Math.max(i12, i9);
                                if (i11 > 0) {
                                    i9 = Math.min(i11, i9);
                                }
                                linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i9, 6);
                                obj = null;
                            }
                        }
                    }
                    createObjectVariable6 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.TOP));
                    createObjectVariable5 = linearSystem2.createObjectVariable(constraintWidget.mParent.getAnchor(Type.BOTTOM));
                    solverVariable6 = createObjectVariable6;
                    linearSystem2.addConstraint(linearSystem.createRow().createRowDimensionRatio(createObjectVariable2, createObjectVariable, createObjectVariable5, solverVariable6, f2));
                    obj = null;
                    if (obj == null) {
                        i13 = i22;
                        i9 = Math.max(i12, i9);
                        if (i11 > 0) {
                            i9 = Math.min(i11, i9);
                        }
                        linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i9, 6);
                        obj = null;
                    } else {
                        i13 = i22;
                    }
                }
            } else if (z) {
                linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i9, 6);
            } else if (z4) {
                linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i9, 1);
            } else {
                linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i9, 4);
            }
            i14 = i10;
            if (obj == null) {
                i13 = i22;
            } else {
                i13 = i22;
                i9 = Math.max(i12, i9);
                if (i11 > 0) {
                    i9 = Math.min(i11, i9);
                }
                linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i9, 6);
                obj = null;
            }
        } else {
            if (z2) {
                linearSystem2.addEquality(createObjectVariable2, createObjectVariable, i10, i11);
            } else {
                linearSystem2.addEquality(createObjectVariable2, createObjectVariable, 0, 3);
                if (i8 <= 0) {
                    i12 = 6;
                } else {
                    i12 = 6;
                    linearSystem2.addGreaterThan(createObjectVariable2, createObjectVariable, i8, 6);
                }
                if (i9 < ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) {
                    linearSystem2.addLowerThan(createObjectVariable2, createObjectVariable, i9, i12);
                }
            }
            i12 = i6;
            i11 = i7;
            solverVariable5 = createObjectVariable3;
            i13 = i22;
            i14 = i23;
        }
        if (z5) {
            if (z4) {
                if (obj3 == null) {
                }
                i15 = 0;
                createObjectVariable3 = solverVariable2;
                if (obj3 == null) {
                }
                if (obj3 == null) {
                }
                solverVariable8 = createObjectVariable4;
                solverVariable9 = solverVariable;
                if (obj == null) {
                    solverVariable10 = solverVariable5;
                    i8 = 1;
                    i17 = 6;
                    if (z) {
                        i19 = 5;
                    } else {
                        i19 = 5;
                        linearSystem2.addGreaterThan(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), 5);
                        linearSystem2.addLowerThan(createObjectVariable2, solverVariable8, -constraintAnchor2.getMargin(), 5);
                    }
                    i20 = i19;
                    i19 = 0;
                } else {
                    if (z) {
                    }
                    i17 = 6;
                    if (i14 != 0) {
                        solverVariable10 = solverVariable5;
                        i12 = i14;
                        i8 = 1;
                        if (i12 != 1) {
                            if (i12 != 3) {
                                i8 = 0;
                            } else {
                                if (z3) {
                                }
                                linearSystem2.addEquality(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), i10);
                                linearSystem2.addEquality(createObjectVariable2, solverVariable8, -constraintAnchor2.getMargin(), i10);
                            }
                            i19 = i8;
                        } else {
                            i19 = 1;
                            i20 = i17;
                        }
                    } else {
                        if (i11 <= 0) {
                            if (i12 > 0) {
                                i10 = 0;
                                i8 = i17;
                                solverVariable10 = solverVariable5;
                                linearSystem2.addEquality(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), i8);
                                linearSystem2.addEquality(createObjectVariable2, solverVariable8, -constraintAnchor2.getMargin(), i8);
                                if (i11 <= 0) {
                                    if (i12 <= 0) {
                                        i18 = 0;
                                        i19 = i10;
                                        i8 = i18;
                                    }
                                }
                                i18 = 1;
                                i19 = i10;
                                i8 = i18;
                            }
                        }
                        i8 = 4;
                        i10 = 1;
                        solverVariable10 = solverVariable5;
                        linearSystem2.addEquality(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), i8);
                        linearSystem2.addEquality(createObjectVariable2, solverVariable8, -constraintAnchor2.getMargin(), i8);
                        if (i11 <= 0) {
                            if (i12 <= 0) {
                                i18 = 0;
                                i19 = i10;
                                i8 = i18;
                            }
                        }
                        i18 = 1;
                        i19 = i10;
                        i8 = i18;
                    }
                    i20 = 5;
                }
                if (i8 == 0) {
                    solverVariable4 = solverVariable8;
                    solverVariable11 = createObjectVariable2;
                    solverVariable12 = createObjectVariable;
                } else {
                    createObjectVariable6 = solverVariable9;
                    i12 = 0;
                    SolverVariable solverVariable142 = solverVariable10;
                    i13 = i17;
                    solverVariable4 = solverVariable8;
                    solverVariable10 = solverVariable142;
                    solverVariable11 = createObjectVariable2;
                    solverVariable12 = createObjectVariable;
                    linearSystem2.addCentering(createObjectVariable, solverVariable10, constraintAnchor.getMargin(), f, solverVariable4, createObjectVariable2, constraintAnchor2.getMargin(), i20);
                }
                if (i19 == 0) {
                    i9 = 6;
                } else {
                    i9 = 6;
                    linearSystem2.addGreaterThan(solverVariable12, solverVariable10, constraintAnchor.getMargin(), 6);
                    linearSystem2.addLowerThan(solverVariable11, solverVariable4, -constraintAnchor2.getMargin(), 6);
                }
                solverVariable7 = solverVariable11;
                if (z) {
                    i16 = 0;
                    linearSystem2.addGreaterThan(solverVariable12, solverVariable, 0, i9);
                    if (z) {
                        linearSystem2.addGreaterThan(solverVariable2, solverVariable7, i16, i9);
                    }
                    return;
                }
                i16 = 0;
                if (z) {
                    linearSystem2.addGreaterThan(solverVariable2, solverVariable7, i16, i9);
                }
                return;
            }
        }
        solverVariable7 = createObjectVariable2;
        solverVariable12 = createObjectVariable;
        createObjectVariable6 = solverVariable;
        solverVariable13 = solverVariable2;
        linearSystem2.addGreaterThan(solverVariable12, createObjectVariable6, 0, 6);
        linearSystem2.addGreaterThan(solverVariable13, solverVariable7, 0, 6);
    }

    public void updateFromSolver$12aaac66() {
        int objectVariableValue = LinearSystem.getObjectVariableValue(this.mLeft);
        int objectVariableValue2 = LinearSystem.getObjectVariableValue(this.mTop);
        int objectVariableValue3 = LinearSystem.getObjectVariableValue(this.mRight) - objectVariableValue;
        int objectVariableValue4 = LinearSystem.getObjectVariableValue(this.mBottom) - objectVariableValue2;
        this.mX = objectVariableValue;
        this.mY = objectVariableValue2;
        if (this.mVisibility == 8) {
            this.mWidth = 0;
            this.mHeight = 0;
            return;
        }
        if (this.mListDimensionBehaviors[0] == DimensionBehaviour.FIXED && objectVariableValue3 < this.mWidth) {
            objectVariableValue3 = this.mWidth;
        }
        if (this.mListDimensionBehaviors[1] == DimensionBehaviour.FIXED && objectVariableValue4 < this.mHeight) {
            objectVariableValue4 = this.mHeight;
        }
        this.mWidth = objectVariableValue3;
        this.mHeight = objectVariableValue4;
        if (this.mHeight < this.mMinHeight) {
            this.mHeight = this.mMinHeight;
        }
        if (this.mWidth < this.mMinWidth) {
            this.mWidth = this.mMinWidth;
        }
    }

    public final int getRight() {
        return this.mX + this.mWidth;
    }

    public final int getBottom() {
        return this.mY + this.mHeight;
    }
}
