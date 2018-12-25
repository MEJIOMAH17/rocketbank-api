package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;

public final class Barrier extends Helper {
    private boolean mAllowsGoneWidget = true;
    private int mBarrierType = 0;
    private ArrayList<ResolutionAnchor> mNodes = new ArrayList(4);

    public final boolean allowedInBarrier() {
        return true;
    }

    public final void setBarrierType(int i) {
        this.mBarrierType = i;
    }

    public final void setAllowsGoneWidget(boolean z) {
        this.mAllowsGoneWidget = z;
    }

    public final void resetResolutionNodes() {
        super.resetResolutionNodes();
        this.mNodes.clear();
    }

    public final void analyze(int i) {
        if (this.mParent != 0 && ((ConstraintWidgetContainer) this.mParent).optimizeFor(2) != 0) {
            int i2;
            ConstraintWidget constraintWidget;
            Chain resolutionNode;
            switch (this.mBarrierType) {
                case 0:
                    i = this.mLeft.getResolutionNode();
                    break;
                case 1:
                    i = this.mRight.getResolutionNode();
                    break;
                case 2:
                    i = this.mTop.getResolutionNode();
                    break;
                case 3:
                    i = this.mBottom.getResolutionNode();
                    break;
                default:
                    return;
            }
            i.type = 5;
            if (this.mBarrierType != 0) {
                if (this.mBarrierType != 1) {
                    this.mLeft.getResolutionNode().resolve(null, BitmapDescriptorFactory.HUE_RED);
                    this.mRight.getResolutionNode().resolve(null, BitmapDescriptorFactory.HUE_RED);
                    this.mNodes.clear();
                    for (i2 = 0; i2 < this.mWidgetsCount; i2++) {
                        constraintWidget = this.mWidgets[i2];
                        if (!this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) {
                            switch (this.mBarrierType) {
                                case 0:
                                    resolutionNode = constraintWidget.mLeft.getResolutionNode();
                                    break;
                                case 1:
                                    resolutionNode = constraintWidget.mRight.getResolutionNode();
                                    break;
                                case 2:
                                    resolutionNode = constraintWidget.mTop.getResolutionNode();
                                    break;
                                case 3:
                                    resolutionNode = constraintWidget.mBottom.getResolutionNode();
                                    break;
                                default:
                                    resolutionNode = null;
                                    break;
                            }
                            if (resolutionNode != null) {
                                this.mNodes.add(resolutionNode);
                                resolutionNode.dependents.add(i);
                            }
                        }
                    }
                }
            }
            this.mTop.getResolutionNode().resolve(null, BitmapDescriptorFactory.HUE_RED);
            this.mBottom.getResolutionNode().resolve(null, BitmapDescriptorFactory.HUE_RED);
            this.mNodes.clear();
            for (i2 = 0; i2 < this.mWidgetsCount; i2++) {
                constraintWidget = this.mWidgets[i2];
                if (this.mAllowsGoneWidget) {
                }
                switch (this.mBarrierType) {
                    case 0:
                        resolutionNode = constraintWidget.mLeft.getResolutionNode();
                        break;
                    case 1:
                        resolutionNode = constraintWidget.mRight.getResolutionNode();
                        break;
                    case 2:
                        resolutionNode = constraintWidget.mTop.getResolutionNode();
                        break;
                    case 3:
                        resolutionNode = constraintWidget.mBottom.getResolutionNode();
                        break;
                    default:
                        resolutionNode = null;
                        break;
                }
                if (resolutionNode != null) {
                    this.mNodes.add(resolutionNode);
                    resolutionNode.dependents.add(i);
                }
            }
        }
    }

    public final void resolve() {
        ResolutionAnchor resolutionNode;
        float f = Float.MAX_VALUE;
        switch (this.mBarrierType) {
            case 0:
                resolutionNode = this.mLeft.getResolutionNode();
                break;
            case 1:
                resolutionNode = this.mRight.getResolutionNode();
                break;
            case 2:
                resolutionNode = this.mTop.getResolutionNode();
                break;
            case 3:
                resolutionNode = this.mBottom.getResolutionNode();
                break;
            default:
                return;
        }
        f = 0.0f;
        int size = this.mNodes.size();
        ResolutionAnchor resolutionAnchor = null;
        int i = 0;
        while (i < size) {
            ResolutionAnchor resolutionAnchor2 = (ResolutionAnchor) this.mNodes.get(i);
            if (resolutionAnchor2.state == 1) {
                if (this.mBarrierType != 0) {
                    if (this.mBarrierType != 2) {
                        if (resolutionAnchor2.resolvedOffset > f) {
                            f = resolutionAnchor2.resolvedOffset;
                            resolutionAnchor = resolutionAnchor2.resolvedTarget;
                        }
                        i++;
                    }
                }
                if (resolutionAnchor2.resolvedOffset < f) {
                    f = resolutionAnchor2.resolvedOffset;
                    resolutionAnchor = resolutionAnchor2.resolvedTarget;
                }
                i++;
            } else {
                return;
            }
        }
        LinearSystem.getMetrics$51a36633();
        resolutionNode.resolvedTarget = resolutionAnchor;
        resolutionNode.resolvedOffset = f;
        resolutionNode.didResolve();
        switch (this.mBarrierType) {
            case 0:
                this.mRight.getResolutionNode().resolve(resolutionAnchor, f);
                return;
            case 1:
                this.mLeft.getResolutionNode().resolve(resolutionAnchor, f);
                return;
            case 2:
                this.mBottom.getResolutionNode().resolve(resolutionAnchor, f);
                return;
            case 3:
                this.mTop.getResolutionNode().resolve(resolutionAnchor, f);
                return;
            default:
                return;
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void addToSolver(android.support.constraint.solver.LinearSystem r11) {
        /*
        r10 = this;
        r0 = r10.mListAnchors;
        r1 = r10.mLeft;
        r2 = 0;
        r0[r2] = r1;
        r0 = r10.mListAnchors;
        r1 = r10.mTop;
        r3 = 2;
        r0[r3] = r1;
        r0 = r10.mListAnchors;
        r1 = r10.mRight;
        r4 = 1;
        r0[r4] = r1;
        r0 = r10.mListAnchors;
        r1 = r10.mBottom;
        r5 = 3;
        r0[r5] = r1;
        r0 = r2;
    L_0x001d:
        r1 = r10.mListAnchors;
        r1 = r1.length;
        if (r0 >= r1) goto L_0x0033;
    L_0x0022:
        r1 = r10.mListAnchors;
        r1 = r1[r0];
        r6 = r10.mListAnchors;
        r6 = r6[r0];
        r6 = r11.createObjectVariable(r6);
        r1.mSolverVariable = r6;
        r0 = r0 + 1;
        goto L_0x001d;
    L_0x0033:
        r0 = r10.mBarrierType;
        if (r0 < 0) goto L_0x0155;
    L_0x0037:
        r0 = r10.mBarrierType;
        r1 = 4;
        if (r0 >= r1) goto L_0x0155;
    L_0x003c:
        r0 = r10.mListAnchors;
        r1 = r10.mBarrierType;
        r0 = r0[r1];
        r1 = r2;
    L_0x0043:
        r6 = r10.mWidgetsCount;
        if (r1 >= r6) goto L_0x007b;
    L_0x0047:
        r6 = r10.mWidgets;
        r6 = r6[r1];
        r7 = r10.mAllowsGoneWidget;
        if (r7 != 0) goto L_0x0055;
    L_0x004f:
        r7 = r6.allowedInBarrier();
        if (r7 == 0) goto L_0x0078;
    L_0x0055:
        r7 = r10.mBarrierType;
        if (r7 == 0) goto L_0x005d;
    L_0x0059:
        r7 = r10.mBarrierType;
        if (r7 != r4) goto L_0x0067;
    L_0x005d:
        r7 = r6.getHorizontalDimensionBehaviour();
        r8 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (r7 != r8) goto L_0x0067;
    L_0x0065:
        r1 = r4;
        goto L_0x007c;
    L_0x0067:
        r7 = r10.mBarrierType;
        if (r7 == r3) goto L_0x006f;
    L_0x006b:
        r7 = r10.mBarrierType;
        if (r7 != r5) goto L_0x0078;
    L_0x006f:
        r6 = r6.getVerticalDimensionBehaviour();
        r7 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (r6 != r7) goto L_0x0078;
    L_0x0077:
        goto L_0x0065;
    L_0x0078:
        r1 = r1 + 1;
        goto L_0x0043;
    L_0x007b:
        r1 = r2;
    L_0x007c:
        r6 = r10.mBarrierType;
        if (r6 == 0) goto L_0x0090;
    L_0x0080:
        r6 = r10.mBarrierType;
        if (r6 != r4) goto L_0x0085;
    L_0x0084:
        goto L_0x0090;
    L_0x0085:
        r6 = r10.mParent;
        r6 = r6.getVerticalDimensionBehaviour();
        r7 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (r6 != r7) goto L_0x009b;
    L_0x008f:
        goto L_0x009a;
    L_0x0090:
        r6 = r10.mParent;
        r6 = r6.getHorizontalDimensionBehaviour();
        r7 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (r6 != r7) goto L_0x009b;
    L_0x009a:
        r1 = r2;
    L_0x009b:
        r6 = r2;
    L_0x009c:
        r7 = r10.mWidgetsCount;
        if (r6 >= r7) goto L_0x00d7;
    L_0x00a0:
        r7 = r10.mWidgets;
        r7 = r7[r6];
        r8 = r10.mAllowsGoneWidget;
        if (r8 != 0) goto L_0x00ae;
    L_0x00a8:
        r8 = r7.allowedInBarrier();
        if (r8 == 0) goto L_0x00d4;
    L_0x00ae:
        r8 = r7.mListAnchors;
        r9 = r10.mBarrierType;
        r8 = r8[r9];
        r8 = r11.createObjectVariable(r8);
        r7 = r7.mListAnchors;
        r9 = r10.mBarrierType;
        r7 = r7[r9];
        r7.mSolverVariable = r8;
        r7 = r10.mBarrierType;
        if (r7 == 0) goto L_0x00cf;
    L_0x00c4:
        r7 = r10.mBarrierType;
        if (r7 != r3) goto L_0x00c9;
    L_0x00c8:
        goto L_0x00cf;
    L_0x00c9:
        r7 = r0.mSolverVariable;
        r11.addGreaterBarrier(r7, r8, r1);
        goto L_0x00d4;
    L_0x00cf:
        r7 = r0.mSolverVariable;
        r11.addLowerBarrier(r7, r8, r1);
    L_0x00d4:
        r6 = r6 + 1;
        goto L_0x009c;
    L_0x00d7:
        r0 = r10.mBarrierType;
        r6 = 5;
        r7 = 6;
        if (r0 != 0) goto L_0x00f8;
    L_0x00dd:
        r0 = r10.mRight;
        r0 = r0.mSolverVariable;
        r3 = r10.mLeft;
        r3 = r3.mSolverVariable;
        r11.addEquality(r0, r3, r2, r7);
        if (r1 != 0) goto L_0x0154;
    L_0x00ea:
        r0 = r10.mLeft;
        r0 = r0.mSolverVariable;
        r1 = r10.mParent;
        r1 = r1.mRight;
        r1 = r1.mSolverVariable;
        r11.addEquality(r0, r1, r2, r6);
        return;
    L_0x00f8:
        r0 = r10.mBarrierType;
        if (r0 != r4) goto L_0x0117;
    L_0x00fc:
        r0 = r10.mLeft;
        r0 = r0.mSolverVariable;
        r3 = r10.mRight;
        r3 = r3.mSolverVariable;
        r11.addEquality(r0, r3, r2, r7);
        if (r1 != 0) goto L_0x0154;
    L_0x0109:
        r0 = r10.mLeft;
        r0 = r0.mSolverVariable;
        r1 = r10.mParent;
        r1 = r1.mLeft;
        r1 = r1.mSolverVariable;
        r11.addEquality(r0, r1, r2, r6);
        return;
    L_0x0117:
        r0 = r10.mBarrierType;
        if (r0 != r3) goto L_0x0136;
    L_0x011b:
        r0 = r10.mBottom;
        r0 = r0.mSolverVariable;
        r3 = r10.mTop;
        r3 = r3.mSolverVariable;
        r11.addEquality(r0, r3, r2, r7);
        if (r1 != 0) goto L_0x0154;
    L_0x0128:
        r0 = r10.mTop;
        r0 = r0.mSolverVariable;
        r1 = r10.mParent;
        r1 = r1.mBottom;
        r1 = r1.mSolverVariable;
        r11.addEquality(r0, r1, r2, r6);
        return;
    L_0x0136:
        r0 = r10.mBarrierType;
        if (r0 != r5) goto L_0x0154;
    L_0x013a:
        r0 = r10.mTop;
        r0 = r0.mSolverVariable;
        r3 = r10.mBottom;
        r3 = r3.mSolverVariable;
        r11.addEquality(r0, r3, r2, r7);
        if (r1 != 0) goto L_0x0154;
    L_0x0147:
        r0 = r10.mTop;
        r0 = r0.mSolverVariable;
        r1 = r10.mParent;
        r1 = r1.mTop;
        r1 = r1.mSolverVariable;
        r11.addEquality(r0, r1, r2, r6);
    L_0x0154:
        return;
    L_0x0155:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.Barrier.addToSolver(android.support.constraint.solver.LinearSystem):void");
    }
}
