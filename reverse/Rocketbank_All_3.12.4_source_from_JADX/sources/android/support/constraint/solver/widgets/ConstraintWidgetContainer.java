package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.widgets.ConstraintAnchor.Type;
import android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;

public class ConstraintWidgetContainer extends WidgetContainer {
    int mDebugSolverPassCount = 0;
    private boolean mHeightMeasuredTooSmall = false;
    ConstraintWidget[] mHorizontalChainsArray = new ConstraintWidget[4];
    int mHorizontalChainsSize = 0;
    private boolean mIsRtl = false;
    private int mOptimizationLevel = 3;
    int mPaddingBottom;
    int mPaddingLeft;
    int mPaddingRight;
    int mPaddingTop;
    private Snapshot mSnapshot;
    protected LinearSystem mSystem = new LinearSystem();
    ConstraintWidget[] mVerticalChainsArray = new ConstraintWidget[4];
    int mVerticalChainsSize = 0;
    private boolean mWidthMeasuredTooSmall = false;

    public final void setOptimizationLevel(int i) {
        this.mOptimizationLevel = i;
    }

    public final boolean optimizeFor(int i) {
        return (this.mOptimizationLevel & i) == i;
    }

    public final void reset() {
        this.mSystem.reset();
        this.mPaddingLeft = 0;
        this.mPaddingRight = 0;
        this.mPaddingTop = 0;
        this.mPaddingBottom = 0;
        super.reset();
    }

    public final boolean isWidthMeasuredTooSmall() {
        return this.mWidthMeasuredTooSmall;
    }

    public final boolean isHeightMeasuredTooSmall() {
        return this.mHeightMeasuredTooSmall;
    }

    public final void setRtl(boolean z) {
        this.mIsRtl = z;
    }

    public final boolean isRtl() {
        return this.mIsRtl;
    }

    public final void analyze(int i) {
        super.analyze(i);
        int size = this.mChildren.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((ConstraintWidget) this.mChildren.get(i2)).analyze(i);
        }
    }

    public final void layout() {
        int i;
        int i2;
        int i3;
        Exception e;
        Exception exception;
        ConstraintWidget constraintWidget;
        boolean z;
        boolean z2;
        int i4 = this.mX;
        int i5 = this.mY;
        boolean z3 = false;
        int max = Math.max(0, getWidth());
        int max2 = Math.max(0, getHeight());
        this.mWidthMeasuredTooSmall = false;
        this.mHeightMeasuredTooSmall = false;
        if (this.mParent != null) {
            if (r1.mSnapshot == null) {
                r1.mSnapshot = new Snapshot(r1);
            }
            r1.mSnapshot.updateFrom(r1);
            setX(0);
            setY(0);
            resetAnchors();
            resetSolverVariables(r1.mSystem.getCache());
        } else {
            r1.mX = 0;
            r1.mY = 0;
        }
        int i6 = 1;
        if (r1.mOptimizationLevel != 0) {
            if (((r1.mOptimizationLevel & 8) == 8 ? 1 : false) == 0) {
                optimizeReset();
            }
            if (((r1.mOptimizationLevel & 8) == 8 ? 1 : false) == 0) {
                analyze(r1.mOptimizationLevel);
            }
            solveGraph();
            r1.mSystem.graphOptimizer = true;
        } else {
            r1.mSystem.graphOptimizer = false;
        }
        DimensionBehaviour dimensionBehaviour = r1.mListDimensionBehaviors[1];
        DimensionBehaviour dimensionBehaviour2 = r1.mListDimensionBehaviors[0];
        r1.mHorizontalChainsSize = 0;
        r1.mVerticalChainsSize = 0;
        int size = r1.mChildren.size();
        for (i = 0; i < size; i++) {
            ConstraintWidget constraintWidget2 = (ConstraintWidget) r1.mChildren.get(i);
            if (constraintWidget2 instanceof WidgetContainer) {
                ((WidgetContainer) constraintWidget2).layout();
            }
        }
        int i7 = 0;
        int i8 = i7;
        i = 1;
        while (i != 0) {
            int size2;
            int i9;
            boolean[] zArr;
            int i10;
            ConstraintWidget constraintWidget3;
            boolean z4;
            i7 += i6;
            try {
                r1.mSystem.reset();
                LinearSystem linearSystem = r1.mSystem;
                addToSolver(linearSystem);
                size2 = r1.mChildren.size();
                i6 = z3;
                while (i6 < size2) {
                    ConstraintWidget constraintWidget4 = (ConstraintWidget) r1.mChildren.get(i6);
                    int i11 = size2;
                    if (constraintWidget4 instanceof ConstraintWidgetContainer) {
                        DimensionBehaviour dimensionBehaviour3 = constraintWidget4.mListDimensionBehaviors[0];
                        i2 = i;
                        try {
                            DimensionBehaviour dimensionBehaviour4 = constraintWidget4.mListDimensionBehaviors[1];
                            i3 = i8;
                            try {
                                if (dimensionBehaviour3 == DimensionBehaviour.WRAP_CONTENT) {
                                    constraintWidget4.setHorizontalDimensionBehaviour(DimensionBehaviour.FIXED);
                                }
                                if (dimensionBehaviour4 == DimensionBehaviour.WRAP_CONTENT) {
                                    constraintWidget4.setVerticalDimensionBehaviour(DimensionBehaviour.FIXED);
                                }
                                constraintWidget4.addToSolver(linearSystem);
                                if (dimensionBehaviour3 == DimensionBehaviour.WRAP_CONTENT) {
                                    constraintWidget4.setHorizontalDimensionBehaviour(dimensionBehaviour3);
                                }
                                if (dimensionBehaviour4 == DimensionBehaviour.WRAP_CONTENT) {
                                    constraintWidget4.setVerticalDimensionBehaviour(dimensionBehaviour4);
                                }
                            } catch (Exception e2) {
                                e = e2;
                            }
                        } catch (Exception e3) {
                            e = e3;
                        }
                    } else {
                        i2 = i;
                        i3 = i8;
                        Optimizer.checkMatchParent(r1, linearSystem, constraintWidget4);
                        constraintWidget4.addToSolver(linearSystem);
                    }
                    i6++;
                    size2 = i11;
                    i = i2;
                    i8 = i3;
                }
                i2 = i;
                i3 = i8;
                if (r1.mHorizontalChainsSize > 0) {
                    Chain.applyChainConstraints(r1, linearSystem, 0);
                }
                if (r1.mVerticalChainsSize > 0) {
                    Chain.applyChainConstraints(r1, linearSystem, 1);
                }
                try {
                    r1.mSystem.minimize();
                    i6 = 1;
                } catch (Exception e4) {
                    exception = e4;
                    i6 = 1;
                    exception.printStackTrace();
                    System.out.println("EXCEPTION : ".concat(String.valueOf(exception)));
                    i9 = 2;
                    if (i6 != 0) {
                        zArr = Optimizer.flags;
                        i10 = 0;
                        zArr[2] = false;
                        updateFromSolver$12aaac66();
                        i6 = r1.mChildren.size();
                        i = 0;
                        while (i < i6) {
                            constraintWidget = (ConstraintWidget) r1.mChildren.get(i);
                            constraintWidget.updateFromSolver$12aaac66();
                            if (constraintWidget.mListDimensionBehaviors[i10] == DimensionBehaviour.MATCH_CONSTRAINT) {
                            }
                            i9 = 1;
                            zArr[2] = true;
                            i++;
                            i9 = 2;
                            i10 = 0;
                        }
                        size2 = i9;
                    } else {
                        updateFromSolver$12aaac66();
                        for (i9 = 0; i9 < size; i9++) {
                            constraintWidget3 = (ConstraintWidget) r1.mChildren.get(i9);
                            if (constraintWidget3.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT) {
                            }
                            if (constraintWidget3.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
                            }
                        }
                        size2 = 2;
                    }
                    if (i7 < 8) {
                    }
                    z = i3;
                    z2 = false;
                    i = Math.max(r1.mMinWidth, getWidth());
                    if (i > getWidth()) {
                        setWidth(i);
                        r1.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
                        z2 = true;
                        z = true;
                    }
                    i = Math.max(r1.mMinHeight, getHeight());
                    if (i > getHeight()) {
                        setHeight(i);
                        z4 = true;
                        r1.mListDimensionBehaviors[1] = DimensionBehaviour.FIXED;
                        z2 = true;
                        z = z2;
                    } else {
                        z4 = true;
                    }
                    if (!z) {
                        r1.mWidthMeasuredTooSmall = z4;
                        r1.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
                        setWidth(max);
                        z2 = z4;
                        z = z2;
                        r1.mHeightMeasuredTooSmall = z4;
                        r1.mListDimensionBehaviors[z4] = DimensionBehaviour.FIXED;
                        setHeight(max2);
                        i = 1;
                        i8 = 1;
                        z3 = false;
                        i6 = 1;
                    }
                    i = z2;
                    i8 = z;
                    z3 = false;
                    i6 = 1;
                }
            } catch (Exception e5) {
                e4 = e5;
                i2 = i;
                i3 = i8;
                exception = e4;
                i6 = i2;
                exception.printStackTrace();
                System.out.println("EXCEPTION : ".concat(String.valueOf(exception)));
                i9 = 2;
                if (i6 != 0) {
                    updateFromSolver$12aaac66();
                    for (i9 = 0; i9 < size; i9++) {
                        constraintWidget3 = (ConstraintWidget) r1.mChildren.get(i9);
                        if (constraintWidget3.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT) {
                        }
                        if (constraintWidget3.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT) {
                        }
                    }
                    size2 = 2;
                } else {
                    zArr = Optimizer.flags;
                    i10 = 0;
                    zArr[2] = false;
                    updateFromSolver$12aaac66();
                    i6 = r1.mChildren.size();
                    i = 0;
                    while (i < i6) {
                        constraintWidget = (ConstraintWidget) r1.mChildren.get(i);
                        constraintWidget.updateFromSolver$12aaac66();
                        if (constraintWidget.mListDimensionBehaviors[i10] == DimensionBehaviour.MATCH_CONSTRAINT) {
                        }
                        i9 = 1;
                        zArr[2] = true;
                        i++;
                        i9 = 2;
                        i10 = 0;
                    }
                    size2 = i9;
                }
                if (i7 < 8) {
                }
                z = i3;
                z2 = false;
                i = Math.max(r1.mMinWidth, getWidth());
                if (i > getWidth()) {
                    setWidth(i);
                    r1.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
                    z2 = true;
                    z = true;
                }
                i = Math.max(r1.mMinHeight, getHeight());
                if (i > getHeight()) {
                    z4 = true;
                } else {
                    setHeight(i);
                    z4 = true;
                    r1.mListDimensionBehaviors[1] = DimensionBehaviour.FIXED;
                    z2 = true;
                    z = z2;
                }
                if (z) {
                    r1.mWidthMeasuredTooSmall = z4;
                    r1.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
                    setWidth(max);
                    z2 = z4;
                    z = z2;
                    r1.mHeightMeasuredTooSmall = z4;
                    r1.mListDimensionBehaviors[z4] = DimensionBehaviour.FIXED;
                    setHeight(max2);
                    i = 1;
                    i8 = 1;
                    z3 = false;
                    i6 = 1;
                }
                i = z2;
                i8 = z;
                z3 = false;
                i6 = 1;
            }
            i9 = 2;
            if (i6 != 0) {
                zArr = Optimizer.flags;
                i10 = 0;
                zArr[2] = false;
                updateFromSolver$12aaac66();
                i6 = r1.mChildren.size();
                i = 0;
                while (i < i6) {
                    constraintWidget = (ConstraintWidget) r1.mChildren.get(i);
                    constraintWidget.updateFromSolver$12aaac66();
                    if (constraintWidget.mListDimensionBehaviors[i10] == DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget.getWidth() >= constraintWidget.getWrapWidth()) {
                        i9 = 1;
                    } else {
                        i9 = 1;
                        zArr[2] = true;
                    }
                    if (constraintWidget.mListDimensionBehaviors[i9] == DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.getHeight() < constraintWidget.getWrapHeight()) {
                        zArr[2] = true;
                    }
                    i++;
                    i9 = 2;
                    i10 = 0;
                }
                size2 = i9;
            } else {
                updateFromSolver$12aaac66();
                while (i9 < size) {
                    constraintWidget3 = (ConstraintWidget) r1.mChildren.get(i9);
                    if (constraintWidget3.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT || constraintWidget3.getWidth() >= constraintWidget3.getWrapWidth()) {
                        if (constraintWidget3.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget3.getHeight() < constraintWidget3.getWrapHeight()) {
                            size2 = 2;
                            Optimizer.flags[2] = true;
                            break;
                        }
                    } else {
                        size2 = 2;
                        Optimizer.flags[2] = true;
                        break;
                    }
                }
                size2 = 2;
            }
            if (i7 < 8 || !Optimizer.flags[r8]) {
                z = i3;
                z2 = false;
            } else {
                i6 = 0;
                i = 0;
                for (size2 = 0; size2 < size; size2++) {
                    constraintWidget = (ConstraintWidget) r1.mChildren.get(size2);
                    i6 = Math.max(i6, constraintWidget.mX + constraintWidget.getWidth());
                    i = Math.max(i, constraintWidget.mY + constraintWidget.getHeight());
                }
                size2 = Math.max(r1.mMinWidth, i6);
                i6 = Math.max(r1.mMinHeight, i);
                if (dimensionBehaviour2 != DimensionBehaviour.WRAP_CONTENT || getWidth() >= size2) {
                    z2 = false;
                } else {
                    setWidth(size2);
                    r1.mListDimensionBehaviors[0] = DimensionBehaviour.WRAP_CONTENT;
                    z2 = true;
                    i3 = 1;
                }
                if (dimensionBehaviour != DimensionBehaviour.WRAP_CONTENT || getHeight() >= i6) {
                    z = i3;
                } else {
                    setHeight(i6);
                    r1.mListDimensionBehaviors[1] = DimensionBehaviour.WRAP_CONTENT;
                    z2 = true;
                    z = true;
                }
            }
            i = Math.max(r1.mMinWidth, getWidth());
            if (i > getWidth()) {
                setWidth(i);
                r1.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
                z2 = true;
                z = true;
            }
            i = Math.max(r1.mMinHeight, getHeight());
            if (i > getHeight()) {
                setHeight(i);
                z4 = true;
                r1.mListDimensionBehaviors[1] = DimensionBehaviour.FIXED;
                z2 = true;
                z = z2;
            } else {
                z4 = true;
            }
            if (z) {
                if (r1.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT && max > 0 && getWidth() > max) {
                    r1.mWidthMeasuredTooSmall = z4;
                    r1.mListDimensionBehaviors[0] = DimensionBehaviour.FIXED;
                    setWidth(max);
                    z2 = z4;
                    z = z2;
                }
                if (r1.mListDimensionBehaviors[z4] == DimensionBehaviour.WRAP_CONTENT && max2 > 0 && getHeight() > max2) {
                    r1.mHeightMeasuredTooSmall = z4;
                    r1.mListDimensionBehaviors[z4] = DimensionBehaviour.FIXED;
                    setHeight(max2);
                    i = 1;
                    i8 = 1;
                    z3 = false;
                    i6 = 1;
                }
            }
            i = z2;
            i8 = z;
            z3 = false;
            i6 = 1;
        }
        i3 = i8;
        if (r1.mParent != null) {
            i4 = Math.max(r1.mMinWidth, getWidth());
            i5 = Math.max(r1.mMinHeight, getHeight());
            r1.mSnapshot.applyTo(r1);
            setWidth(i4);
            setHeight(i5);
        } else {
            r1.mX = i4;
            r1.mY = i5;
        }
        if (i3 != 0) {
            r1.mListDimensionBehaviors[0] = dimensionBehaviour2;
            r1.mListDimensionBehaviors[1] = dimensionBehaviour;
        }
        resetSolverVariables(r1.mSystem.getCache());
        ConstraintWidget constraintWidget5 = r1.mParent;
        ConstraintWidget constraintWidget6 = (ConstraintWidgetContainer) r1;
        while (constraintWidget5 != null) {
            ConstraintWidget constraintWidget7 = constraintWidget5.mParent;
            if (constraintWidget5 instanceof ConstraintWidgetContainer) {
                constraintWidget6 = (ConstraintWidgetContainer) constraintWidget5;
            }
            constraintWidget5 = constraintWidget7;
        }
        if (r1 == constraintWidget6) {
            updateDrawPosition();
        }
    }

    public final void preOptimize() {
        optimizeReset();
        analyze(this.mOptimizationLevel);
    }

    public final void solveGraph() {
        ResolutionAnchor resolutionNode = getAnchor(Type.LEFT).getResolutionNode();
        ResolutionAnchor resolutionNode2 = getAnchor(Type.TOP).getResolutionNode();
        resolutionNode.resolve(null, BitmapDescriptorFactory.HUE_RED);
        resolutionNode2.resolve(null, BitmapDescriptorFactory.HUE_RED);
    }

    public final void optimizeForDimensions(int i, int i2) {
        if (!(this.mListDimensionBehaviors[0] == DimensionBehaviour.WRAP_CONTENT || this.mResolutionWidth == null)) {
            this.mResolutionWidth.resolve(i);
        }
        if (this.mListDimensionBehaviors[1] != DimensionBehaviour.WRAP_CONTENT && this.mResolutionHeight != 0) {
            this.mResolutionHeight.resolve(i2);
        }
    }

    private void optimizeReset() {
        int size = this.mChildren.size();
        resetResolutionNodes();
        for (int i = 0; i < size; i++) {
            ((ConstraintWidget) this.mChildren.get(i)).resetResolutionNodes();
        }
    }

    final void addChain(ConstraintWidget constraintWidget, int i) {
        int i2 = 0;
        if (i == 0) {
            while (constraintWidget.mLeft.mTarget != 0 && constraintWidget.mLeft.mTarget.mOwner.mRight.mTarget != 0 && constraintWidget.mLeft.mTarget.mOwner.mRight.mTarget == constraintWidget.mLeft && constraintWidget.mLeft.mTarget.mOwner != constraintWidget) {
                constraintWidget = constraintWidget.mLeft.mTarget.mOwner;
            }
            while (i2 < this.mHorizontalChainsSize) {
                if (this.mHorizontalChainsArray[i2] == constraintWidget) {
                    break;
                }
                i2++;
            }
            if (this.mHorizontalChainsSize + 1 >= this.mHorizontalChainsArray.length) {
                this.mHorizontalChainsArray = (ConstraintWidget[]) Arrays.copyOf(this.mHorizontalChainsArray, this.mHorizontalChainsArray.length << 1);
            }
            this.mHorizontalChainsArray[this.mHorizontalChainsSize] = constraintWidget;
            this.mHorizontalChainsSize += 1;
            return;
        }
        if (i == 1) {
            while (constraintWidget.mTop.mTarget != 0 && constraintWidget.mTop.mTarget.mOwner.mBottom.mTarget != 0 && constraintWidget.mTop.mTarget.mOwner.mBottom.mTarget == constraintWidget.mTop && constraintWidget.mTop.mTarget.mOwner != constraintWidget) {
                constraintWidget = constraintWidget.mTop.mTarget.mOwner;
            }
            while (i2 < this.mVerticalChainsSize) {
                if (this.mVerticalChainsArray[i2] == constraintWidget) {
                    break;
                }
                i2++;
            }
            if (this.mVerticalChainsSize + 1 >= this.mVerticalChainsArray.length) {
                this.mVerticalChainsArray = (ConstraintWidget[]) Arrays.copyOf(this.mVerticalChainsArray, this.mVerticalChainsArray.length << 1);
            }
            this.mVerticalChainsArray[this.mVerticalChainsSize] = constraintWidget;
            this.mVerticalChainsSize += 1;
        }
    }
}
