package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public final class Optimizer {
    static boolean[] flags = new boolean[3];

    static void checkMatchParent(ConstraintWidgetContainer constraintWidgetContainer, LinearSystem linearSystem, ConstraintWidget constraintWidget) {
        if (constraintWidgetContainer.mListDimensionBehaviors[0] != DimensionBehaviour.WRAP_CONTENT && constraintWidget.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_PARENT) {
            int i = constraintWidget.mLeft.mMargin;
            int width = constraintWidgetContainer.getWidth() - constraintWidget.mRight.mMargin;
            constraintWidget.mLeft.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mLeft);
            constraintWidget.mRight.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mRight);
            linearSystem.addEquality(constraintWidget.mLeft.mSolverVariable, i);
            linearSystem.addEquality(constraintWidget.mRight.mSolverVariable, width);
            constraintWidget.mHorizontalResolution = 2;
            constraintWidget.setHorizontalDimension(i, width);
        }
        if (constraintWidgetContainer.mListDimensionBehaviors[1] != DimensionBehaviour.WRAP_CONTENT && constraintWidget.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_PARENT) {
            i = constraintWidget.mTop.mMargin;
            constraintWidgetContainer = constraintWidgetContainer.getHeight() - constraintWidget.mBottom.mMargin;
            constraintWidget.mTop.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mTop);
            constraintWidget.mBottom.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBottom);
            linearSystem.addEquality(constraintWidget.mTop.mSolverVariable, i);
            linearSystem.addEquality(constraintWidget.mBottom.mSolverVariable, constraintWidgetContainer);
            if (constraintWidget.mBaselineDistance > 0 || constraintWidget.getVisibility() == 8) {
                constraintWidget.mBaseline.mSolverVariable = linearSystem.createObjectVariable(constraintWidget.mBaseline);
                linearSystem.addEquality(constraintWidget.mBaseline.mSolverVariable, constraintWidget.mBaselineDistance + i);
            }
            constraintWidget.mVerticalResolution = 2;
            constraintWidget.setVerticalDimension(i, constraintWidgetContainer);
        }
    }

    private static boolean optimizableMatchConstraint(ConstraintWidget constraintWidget, int i) {
        if (constraintWidget.mListDimensionBehaviors[i] != DimensionBehaviour.MATCH_CONSTRAINT) {
            return false;
        }
        int i2 = 1;
        if (constraintWidget.mDimensionRatio != BitmapDescriptorFactory.HUE_RED) {
            constraintWidget = constraintWidget.mListDimensionBehaviors;
            if (i != 0) {
                i2 = 0;
            }
            return constraintWidget[i2] == DimensionBehaviour.MATCH_CONSTRAINT ? false : false;
        } else {
            if (i != 0) {
                if (constraintWidget.mMatchConstraintDefaultHeight == 0 && constraintWidget.mMatchConstraintMinHeight == 0) {
                    if (constraintWidget.mMatchConstraintMaxHeight != null) {
                    }
                }
                return false;
            } else if (constraintWidget.mMatchConstraintDefaultWidth == 0 && constraintWidget.mMatchConstraintMinWidth == 0 && constraintWidget.mMatchConstraintMaxWidth == null) {
                return true;
            } else {
                return false;
            }
            return true;
        }
    }

    static void analyze(int i, ConstraintWidget constraintWidget) {
        constraintWidget.updateResolutionNodes();
        ResolutionAnchor resolutionNode = constraintWidget.mLeft.getResolutionNode();
        ResolutionAnchor resolutionNode2 = constraintWidget.mTop.getResolutionNode();
        ResolutionAnchor resolutionNode3 = constraintWidget.mRight.getResolutionNode();
        ResolutionAnchor resolutionNode4 = constraintWidget.mBottom.getResolutionNode();
        i = (i & 8) == 8 ? 1 : 0;
        if (!(resolutionNode.type == 4 || resolutionNode3.type == 4)) {
            int width;
            if (constraintWidget.mListDimensionBehaviors[0] == DimensionBehaviour.FIXED) {
                if (constraintWidget.mLeft.mTarget == null && constraintWidget.mRight.mTarget == null) {
                    resolutionNode.type = 1;
                    resolutionNode3.type = 1;
                    if (i != 0) {
                        if (constraintWidget.mResolutionWidth == null) {
                            constraintWidget.mResolutionWidth = new ResolutionDimension();
                        }
                        resolutionNode3.dependsOn(resolutionNode, 1, constraintWidget.mResolutionWidth);
                    } else {
                        width = constraintWidget.getWidth();
                        resolutionNode3.target = resolutionNode;
                        resolutionNode3.offset = (float) width;
                        resolutionNode3.target.dependents.add(resolutionNode3);
                    }
                } else if (constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget == null) {
                    resolutionNode.type = 1;
                    resolutionNode3.type = 1;
                    if (i != 0) {
                        if (constraintWidget.mResolutionWidth == null) {
                            constraintWidget.mResolutionWidth = new ResolutionDimension();
                        }
                        resolutionNode3.dependsOn(resolutionNode, 1, constraintWidget.mResolutionWidth);
                    } else {
                        width = constraintWidget.getWidth();
                        resolutionNode3.target = resolutionNode;
                        resolutionNode3.offset = (float) width;
                        resolutionNode3.target.dependents.add(resolutionNode3);
                    }
                } else if (constraintWidget.mLeft.mTarget == null && constraintWidget.mRight.mTarget != null) {
                    resolutionNode.type = 1;
                    resolutionNode3.type = 1;
                    width = -constraintWidget.getWidth();
                    resolutionNode.target = resolutionNode3;
                    resolutionNode.offset = (float) width;
                    resolutionNode.target.dependents.add(resolutionNode);
                    if (i != 0) {
                        if (constraintWidget.mResolutionWidth == null) {
                            constraintWidget.mResolutionWidth = new ResolutionDimension();
                        }
                        resolutionNode.dependsOn(resolutionNode3, -1, constraintWidget.mResolutionWidth);
                    } else {
                        width = -constraintWidget.getWidth();
                        resolutionNode.target = resolutionNode3;
                        resolutionNode.offset = (float) width;
                        resolutionNode.target.dependents.add(resolutionNode);
                    }
                } else if (!(constraintWidget.mLeft.mTarget == null || constraintWidget.mRight.mTarget == null)) {
                    resolutionNode.type = 2;
                    resolutionNode3.type = 2;
                    if (i != 0) {
                        if (constraintWidget.mResolutionWidth == null) {
                            constraintWidget.mResolutionWidth = new ResolutionDimension();
                        }
                        constraintWidget.mResolutionWidth.dependents.add(resolutionNode);
                        if (constraintWidget.mResolutionWidth == null) {
                            constraintWidget.mResolutionWidth = new ResolutionDimension();
                        }
                        constraintWidget.mResolutionWidth.dependents.add(resolutionNode3);
                        if (constraintWidget.mResolutionWidth == null) {
                            constraintWidget.mResolutionWidth = new ResolutionDimension();
                        }
                        resolutionNode.setOpposite(resolutionNode3, -1, constraintWidget.mResolutionWidth);
                        if (constraintWidget.mResolutionWidth == null) {
                            constraintWidget.mResolutionWidth = new ResolutionDimension();
                        }
                        resolutionNode3.setOpposite(resolutionNode, 1, constraintWidget.mResolutionWidth);
                    } else {
                        resolutionNode.setOpposite(resolutionNode3, (float) (-constraintWidget.getWidth()));
                        resolutionNode3.setOpposite(resolutionNode, (float) constraintWidget.getWidth());
                    }
                }
            } else if (constraintWidget.mListDimensionBehaviors[0] == DimensionBehaviour.MATCH_CONSTRAINT && optimizableMatchConstraint(constraintWidget, 0)) {
                width = constraintWidget.getWidth();
                resolutionNode.type = 1;
                resolutionNode3.type = 1;
                if (constraintWidget.mLeft.mTarget == null && constraintWidget.mRight.mTarget == null) {
                    if (i != 0) {
                        if (constraintWidget.mResolutionWidth == null) {
                            constraintWidget.mResolutionWidth = new ResolutionDimension();
                        }
                        resolutionNode3.dependsOn(resolutionNode, 1, constraintWidget.mResolutionWidth);
                    } else {
                        resolutionNode3.target = resolutionNode;
                        resolutionNode3.offset = (float) width;
                        resolutionNode3.target.dependents.add(resolutionNode3);
                    }
                } else if (constraintWidget.mLeft.mTarget == null || constraintWidget.mRight.mTarget != null) {
                    if (constraintWidget.mLeft.mTarget != null || constraintWidget.mRight.mTarget == null) {
                        if (!(constraintWidget.mLeft.mTarget == null || constraintWidget.mRight.mTarget == null)) {
                            if (i != 0) {
                                if (constraintWidget.mResolutionWidth == null) {
                                    constraintWidget.mResolutionWidth = new ResolutionDimension();
                                }
                                constraintWidget.mResolutionWidth.dependents.add(resolutionNode);
                                if (constraintWidget.mResolutionWidth == null) {
                                    constraintWidget.mResolutionWidth = new ResolutionDimension();
                                }
                                constraintWidget.mResolutionWidth.dependents.add(resolutionNode3);
                            }
                            if (constraintWidget.mDimensionRatio == BitmapDescriptorFactory.HUE_RED) {
                                resolutionNode.type = 3;
                                resolutionNode3.type = 3;
                                resolutionNode.setOpposite(resolutionNode3, BitmapDescriptorFactory.HUE_RED);
                                resolutionNode3.setOpposite(resolutionNode, BitmapDescriptorFactory.HUE_RED);
                            } else {
                                resolutionNode.type = 2;
                                resolutionNode3.type = 2;
                                resolutionNode.setOpposite(resolutionNode3, (float) (-width));
                                resolutionNode3.setOpposite(resolutionNode, (float) width);
                                constraintWidget.setWidth(width);
                            }
                        }
                    } else if (i != 0) {
                        if (constraintWidget.mResolutionWidth == null) {
                            constraintWidget.mResolutionWidth = new ResolutionDimension();
                        }
                        resolutionNode.dependsOn(resolutionNode3, -1, constraintWidget.mResolutionWidth);
                    } else {
                        width = -width;
                        resolutionNode.target = resolutionNode3;
                        resolutionNode.offset = (float) width;
                        resolutionNode.target.dependents.add(resolutionNode);
                    }
                } else if (i != 0) {
                    if (constraintWidget.mResolutionWidth == null) {
                        constraintWidget.mResolutionWidth = new ResolutionDimension();
                    }
                    resolutionNode3.dependsOn(resolutionNode, 1, constraintWidget.mResolutionWidth);
                } else {
                    resolutionNode3.target = resolutionNode;
                    resolutionNode3.offset = (float) width;
                    resolutionNode3.target.dependents.add(resolutionNode3);
                }
            }
        }
        if (!(resolutionNode2.type == 4 || resolutionNode4.type == 4)) {
            if (constraintWidget.mListDimensionBehaviors[1] == DimensionBehaviour.FIXED) {
                if (constraintWidget.mTop.mTarget == null && constraintWidget.mBottom.mTarget == null) {
                    resolutionNode2.type = 1;
                    resolutionNode4.type = 1;
                    if (i != 0) {
                        if (constraintWidget.mResolutionHeight == 0) {
                            constraintWidget.mResolutionHeight = new ResolutionDimension();
                        }
                        resolutionNode4.dependsOn(resolutionNode2, 1, constraintWidget.mResolutionHeight);
                    } else {
                        i = constraintWidget.getHeight();
                        resolutionNode4.target = resolutionNode2;
                        resolutionNode4.offset = (float) i;
                        resolutionNode4.target.dependents.add(resolutionNode4);
                    }
                    if (constraintWidget.mBaseline.mTarget != 0) {
                        constraintWidget.mBaseline.getResolutionNode().type = 1;
                        i = constraintWidget.mBaseline.getResolutionNode();
                        constraintWidget = -constraintWidget.mBaselineDistance;
                        resolutionNode2.type = 1;
                        resolutionNode2.target = i;
                        resolutionNode2.offset = (float) constraintWidget;
                        resolutionNode2.target.dependents.add(resolutionNode2);
                    }
                } else if (constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget == null) {
                    resolutionNode2.type = 1;
                    resolutionNode4.type = 1;
                    if (i != 0) {
                        if (constraintWidget.mResolutionHeight == 0) {
                            constraintWidget.mResolutionHeight = new ResolutionDimension();
                        }
                        resolutionNode4.dependsOn(resolutionNode2, 1, constraintWidget.mResolutionHeight);
                    } else {
                        i = constraintWidget.getHeight();
                        resolutionNode4.target = resolutionNode2;
                        resolutionNode4.offset = (float) i;
                        resolutionNode4.target.dependents.add(resolutionNode4);
                    }
                    if (constraintWidget.mBaselineDistance > 0) {
                        i = constraintWidget.mBaseline.getResolutionNode();
                        constraintWidget = constraintWidget.mBaselineDistance;
                        i.type = 1;
                        i.target = resolutionNode2;
                        i.offset = (float) constraintWidget;
                        i.target.dependents.add(i);
                    }
                } else if (constraintWidget.mTop.mTarget == null && constraintWidget.mBottom.mTarget != null) {
                    resolutionNode2.type = 1;
                    resolutionNode4.type = 1;
                    if (i != 0) {
                        if (constraintWidget.mResolutionHeight == 0) {
                            constraintWidget.mResolutionHeight = new ResolutionDimension();
                        }
                        resolutionNode2.dependsOn(resolutionNode4, -1, constraintWidget.mResolutionHeight);
                    } else {
                        i = -constraintWidget.getHeight();
                        resolutionNode2.target = resolutionNode4;
                        resolutionNode2.offset = (float) i;
                        resolutionNode2.target.dependents.add(resolutionNode2);
                    }
                    if (constraintWidget.mBaselineDistance > 0) {
                        i = constraintWidget.mBaseline.getResolutionNode();
                        constraintWidget = constraintWidget.mBaselineDistance;
                        i.type = 1;
                        i.target = resolutionNode2;
                        i.offset = (float) constraintWidget;
                        i.target.dependents.add(i);
                    }
                } else if (!(constraintWidget.mTop.mTarget == null || constraintWidget.mBottom.mTarget == null)) {
                    resolutionNode2.type = 2;
                    resolutionNode4.type = 2;
                    if (i != 0) {
                        if (constraintWidget.mResolutionHeight == 0) {
                            constraintWidget.mResolutionHeight = new ResolutionDimension();
                        }
                        resolutionNode2.setOpposite(resolutionNode4, -1, constraintWidget.mResolutionHeight);
                        if (constraintWidget.mResolutionHeight == 0) {
                            constraintWidget.mResolutionHeight = new ResolutionDimension();
                        }
                        resolutionNode4.setOpposite(resolutionNode2, 1, constraintWidget.mResolutionHeight);
                        if (constraintWidget.mResolutionHeight == 0) {
                            constraintWidget.mResolutionHeight = new ResolutionDimension();
                        }
                        constraintWidget.mResolutionHeight.dependents.add(resolutionNode2);
                        if (constraintWidget.mResolutionWidth == 0) {
                            constraintWidget.mResolutionWidth = new ResolutionDimension();
                        }
                        constraintWidget.mResolutionWidth.dependents.add(resolutionNode4);
                    } else {
                        resolutionNode2.setOpposite(resolutionNode4, (float) (-constraintWidget.getHeight()));
                        resolutionNode4.setOpposite(resolutionNode2, (float) constraintWidget.getHeight());
                    }
                    if (constraintWidget.mBaselineDistance > 0) {
                        i = constraintWidget.mBaseline.getResolutionNode();
                        constraintWidget = constraintWidget.mBaselineDistance;
                        i.type = 1;
                        i.target = resolutionNode2;
                        i.offset = (float) constraintWidget;
                        i.target.dependents.add(i);
                    }
                }
            } else if (constraintWidget.mListDimensionBehaviors[1] == DimensionBehaviour.MATCH_CONSTRAINT && optimizableMatchConstraint(constraintWidget, 1)) {
                int height = constraintWidget.getHeight();
                resolutionNode2.type = 1;
                resolutionNode4.type = 1;
                if (constraintWidget.mTop.mTarget == null && constraintWidget.mBottom.mTarget == null) {
                    if (i != 0) {
                        if (constraintWidget.mResolutionHeight == 0) {
                            constraintWidget.mResolutionHeight = new ResolutionDimension();
                        }
                        resolutionNode4.dependsOn(resolutionNode2, 1, constraintWidget.mResolutionHeight);
                        return;
                    }
                    resolutionNode4.target = resolutionNode2;
                    resolutionNode4.offset = (float) height;
                    resolutionNode4.target.dependents.add(resolutionNode4);
                } else if (constraintWidget.mTop.mTarget == null || constraintWidget.mBottom.mTarget != null) {
                    if (constraintWidget.mTop.mTarget != null || constraintWidget.mBottom.mTarget == null) {
                        if (!(constraintWidget.mTop.mTarget == null || constraintWidget.mBottom.mTarget == null)) {
                            if (i != 0) {
                                if (constraintWidget.mResolutionHeight == 0) {
                                    constraintWidget.mResolutionHeight = new ResolutionDimension();
                                }
                                constraintWidget.mResolutionHeight.dependents.add(resolutionNode2);
                                if (constraintWidget.mResolutionWidth == 0) {
                                    constraintWidget.mResolutionWidth = new ResolutionDimension();
                                }
                                constraintWidget.mResolutionWidth.dependents.add(resolutionNode4);
                            }
                            if (constraintWidget.mDimensionRatio == 0) {
                                resolutionNode2.type = 3;
                                resolutionNode4.type = 3;
                                resolutionNode2.setOpposite(resolutionNode4, BitmapDescriptorFactory.HUE_RED);
                                resolutionNode4.setOpposite(resolutionNode2, BitmapDescriptorFactory.HUE_RED);
                                return;
                            }
                            resolutionNode2.type = 2;
                            resolutionNode4.type = 2;
                            resolutionNode2.setOpposite(resolutionNode4, (float) (-height));
                            resolutionNode4.setOpposite(resolutionNode2, (float) height);
                            constraintWidget.setHeight(height);
                            if (constraintWidget.mBaselineDistance > 0) {
                                i = constraintWidget.mBaseline.getResolutionNode();
                                constraintWidget = constraintWidget.mBaselineDistance;
                                i.type = 1;
                                i.target = resolutionNode2;
                                i.offset = (float) constraintWidget;
                                i.target.dependents.add(i);
                            }
                        }
                    } else if (i != 0) {
                        if (constraintWidget.mResolutionHeight == 0) {
                            constraintWidget.mResolutionHeight = new ResolutionDimension();
                        }
                        resolutionNode2.dependsOn(resolutionNode4, -1, constraintWidget.mResolutionHeight);
                    } else {
                        i = -height;
                        resolutionNode2.target = resolutionNode4;
                        resolutionNode2.offset = (float) i;
                        resolutionNode2.target.dependents.add(resolutionNode2);
                    }
                } else if (i != 0) {
                    if (constraintWidget.mResolutionHeight == 0) {
                        constraintWidget.mResolutionHeight = new ResolutionDimension();
                    }
                    resolutionNode4.dependsOn(resolutionNode2, 1, constraintWidget.mResolutionHeight);
                } else {
                    resolutionNode4.target = resolutionNode2;
                    resolutionNode4.offset = (float) height;
                    resolutionNode4.target.dependents.add(resolutionNode4);
                }
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static boolean applyChainOptimized(android.support.constraint.solver.widgets.ConstraintWidgetContainer r20, android.support.constraint.solver.LinearSystem r21, int r22, int r23, android.support.constraint.solver.widgets.ConstraintWidget r24) {
        /*
        r0 = r21;
        r1 = r24;
        r2 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        r2 = 0;
        r4 = 1;
        if (r22 != 0) goto L_0x0039;
    L_0x000a:
        r5 = r20.isRtl();
        if (r5 == 0) goto L_0x0039;
    L_0x0010:
        r6 = r1;
        r5 = 0;
    L_0x0012:
        if (r5 != 0) goto L_0x003a;
    L_0x0014:
        r7 = r6.mListAnchors;
        r8 = r23 + 1;
        r7 = r7[r8];
        r7 = r7.mTarget;
        if (r7 == 0) goto L_0x0032;
    L_0x001e:
        r7 = r7.mOwner;
        r8 = r7.mListAnchors;
        r8 = r8[r23];
        r8 = r8.mTarget;
        if (r8 == 0) goto L_0x0032;
    L_0x0028:
        r8 = r7.mListAnchors;
        r8 = r8[r23];
        r8 = r8.mTarget;
        r8 = r8.mOwner;
        if (r8 == r6) goto L_0x0033;
    L_0x0032:
        r7 = r2;
    L_0x0033:
        if (r7 == 0) goto L_0x0037;
    L_0x0035:
        r6 = r7;
        goto L_0x0012;
    L_0x0037:
        r5 = r4;
        goto L_0x0012;
    L_0x0039:
        r6 = r1;
    L_0x003a:
        r5 = 2;
        if (r22 != 0) goto L_0x0053;
    L_0x003d:
        r7 = r6.mHorizontalChainStyle;
        if (r7 != 0) goto L_0x0043;
    L_0x0041:
        r7 = r4;
        goto L_0x0044;
    L_0x0043:
        r7 = 0;
    L_0x0044:
        r8 = r6.mHorizontalChainStyle;
        if (r8 != r4) goto L_0x004a;
    L_0x0048:
        r8 = r4;
        goto L_0x004b;
    L_0x004a:
        r8 = 0;
    L_0x004b:
        r6 = r6.mHorizontalChainStyle;
        if (r6 != r5) goto L_0x0051;
    L_0x004f:
        r5 = r4;
        goto L_0x0066;
    L_0x0051:
        r5 = 0;
        goto L_0x0066;
    L_0x0053:
        r7 = r6.mVerticalChainStyle;
        if (r7 != 0) goto L_0x0059;
    L_0x0057:
        r7 = r4;
        goto L_0x005a;
    L_0x0059:
        r7 = 0;
    L_0x005a:
        r8 = r6.mVerticalChainStyle;
        if (r8 != r4) goto L_0x0060;
    L_0x005e:
        r8 = r4;
        goto L_0x0061;
    L_0x0060:
        r8 = 0;
    L_0x0061:
        r6 = r6.mVerticalChainStyle;
        if (r6 != r5) goto L_0x0051;
    L_0x0065:
        goto L_0x004f;
    L_0x0066:
        r10 = r1;
        r4 = r2;
        r11 = r4;
        r12 = r11;
        r17 = r12;
        r6 = 0;
        r9 = 0;
        r13 = 0;
        r14 = 0;
        r15 = 0;
        r16 = 0;
    L_0x0073:
        if (r9 != 0) goto L_0x0134;
    L_0x0075:
        r3 = r10.mListNextVisibleWidget;
        r3[r22] = r2;
        r3 = r10.getVisibility();
        r2 = 8;
        if (r3 == r2) goto L_0x00be;
    L_0x0081:
        if (r11 == 0) goto L_0x0087;
    L_0x0083:
        r3 = r11.mListNextVisibleWidget;
        r3[r22] = r10;
    L_0x0087:
        if (r12 != 0) goto L_0x008a;
    L_0x0089:
        r12 = r10;
    L_0x008a:
        r13 = r13 + 1;
        if (r22 != 0) goto L_0x0095;
    L_0x008e:
        r3 = r10.getWidth();
        r3 = (float) r3;
        r14 = r14 + r3;
        goto L_0x009b;
    L_0x0095:
        r3 = r10.getHeight();
        r3 = (float) r3;
        r14 = r14 + r3;
    L_0x009b:
        if (r10 == r12) goto L_0x00a7;
    L_0x009d:
        r3 = r10.mListAnchors;
        r3 = r3[r23];
        r3 = r3.getMargin();
        r3 = (float) r3;
        r14 = r14 + r3;
    L_0x00a7:
        r3 = r10.mListAnchors;
        r3 = r3[r23];
        r3 = r3.getMargin();
        r3 = (float) r3;
        r15 = r15 + r3;
        r3 = r10.mListAnchors;
        r11 = r23 + 1;
        r3 = r3[r11];
        r3 = r3.getMargin();
        r3 = (float) r3;
        r15 = r15 + r3;
        r11 = r10;
    L_0x00be:
        r3 = r10.mListNextMatchConstraintsWidget;
        r18 = 0;
        r3[r22] = r18;
        r3 = r10.getVisibility();
        if (r3 == r2) goto L_0x0108;
    L_0x00ca:
        r2 = r10.mListDimensionBehaviors;
        r2 = r2[r22];
        r3 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (r2 != r3) goto L_0x0108;
    L_0x00d2:
        r6 = r6 + 1;
        if (r22 != 0) goto L_0x00e6;
    L_0x00d6:
        r2 = r10.mMatchConstraintDefaultWidth;
        if (r2 == 0) goto L_0x00dc;
    L_0x00da:
        r2 = 0;
        return r2;
    L_0x00dc:
        r2 = 0;
        r3 = r10.mMatchConstraintMinWidth;
        if (r3 != 0) goto L_0x00e5;
    L_0x00e1:
        r3 = r10.mMatchConstraintMaxWidth;
        if (r3 == 0) goto L_0x00f5;
    L_0x00e5:
        return r2;
    L_0x00e6:
        r2 = 0;
        r3 = r10.mMatchConstraintDefaultHeight;
        if (r3 == 0) goto L_0x00ec;
    L_0x00eb:
        return r2;
    L_0x00ec:
        r2 = r10.mMatchConstraintMinHeight;
        if (r2 != 0) goto L_0x0106;
    L_0x00f0:
        r2 = r10.mMatchConstraintMaxHeight;
        if (r2 == 0) goto L_0x00f5;
    L_0x00f4:
        goto L_0x0106;
    L_0x00f5:
        r2 = r10.mWeight;
        r2 = r2[r22];
        r16 = r16 + r2;
        if (r17 != 0) goto L_0x0100;
    L_0x00fd:
        r17 = r10;
        goto L_0x0104;
    L_0x0100:
        r2 = r4.mListNextMatchConstraintsWidget;
        r2[r22] = r10;
    L_0x0104:
        r4 = r10;
        goto L_0x0108;
    L_0x0106:
        r0 = 0;
        return r0;
    L_0x0108:
        r2 = r10.mListAnchors;
        r3 = r23 + 1;
        r2 = r2[r3];
        r2 = r2.mTarget;
        if (r2 == 0) goto L_0x0126;
    L_0x0112:
        r2 = r2.mOwner;
        r3 = r2.mListAnchors;
        r3 = r3[r23];
        r3 = r3.mTarget;
        if (r3 == 0) goto L_0x0126;
    L_0x011c:
        r3 = r2.mListAnchors;
        r3 = r3[r23];
        r3 = r3.mTarget;
        r3 = r3.mOwner;
        if (r3 == r10) goto L_0x0128;
    L_0x0126:
        r2 = r18;
    L_0x0128:
        if (r2 == 0) goto L_0x012f;
    L_0x012a:
        r10 = r2;
        r2 = r18;
        goto L_0x0073;
    L_0x012f:
        r2 = r18;
        r9 = 1;
        goto L_0x0073;
    L_0x0134:
        r2 = r1.mListAnchors;
        r2 = r2[r23];
        r2 = r2.getResolutionNode();
        r3 = r10.mListAnchors;
        r4 = r23 + 1;
        r3 = r3[r4];
        r3 = r3.getResolutionNode();
        r9 = r2.target;
        if (r9 == 0) goto L_0x0336;
    L_0x014a:
        r9 = r3.target;
        if (r9 != 0) goto L_0x0150;
    L_0x014e:
        goto L_0x0336;
    L_0x0150:
        r9 = r2.target;
        r9 = r9.state;
        r1 = 1;
        if (r9 == r1) goto L_0x015f;
    L_0x0157:
        r9 = r3.target;
        r9 = r9.state;
        if (r9 == r1) goto L_0x015f;
    L_0x015d:
        r1 = 0;
        return r1;
    L_0x015f:
        r1 = 0;
        if (r6 <= 0) goto L_0x0165;
    L_0x0162:
        if (r6 == r13) goto L_0x0165;
    L_0x0164:
        return r1;
    L_0x0165:
        if (r5 != 0) goto L_0x016e;
    L_0x0167:
        if (r7 != 0) goto L_0x016e;
    L_0x0169:
        if (r8 == 0) goto L_0x016c;
    L_0x016b:
        goto L_0x016e;
    L_0x016c:
        r1 = 0;
        goto L_0x0187;
    L_0x016e:
        if (r12 == 0) goto L_0x017a;
    L_0x0170:
        r1 = r12.mListAnchors;
        r1 = r1[r23];
        r1 = r1.getMargin();
        r1 = (float) r1;
        goto L_0x017b;
    L_0x017a:
        r1 = 0;
    L_0x017b:
        if (r11 == 0) goto L_0x0187;
    L_0x017d:
        r9 = r11.mListAnchors;
        r9 = r9[r4];
        r9 = r9.getMargin();
        r9 = (float) r9;
        r1 = r1 + r9;
    L_0x0187:
        r9 = r2.target;
        r9 = r9.resolvedOffset;
        r3 = r3.target;
        r3 = r3.resolvedOffset;
        r17 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1));
        if (r17 >= 0) goto L_0x0196;
    L_0x0193:
        r3 = r3 - r9;
        r3 = r3 - r14;
        goto L_0x0199;
    L_0x0196:
        r3 = r9 - r3;
        r3 = r3 - r14;
    L_0x0199:
        if (r6 <= 0) goto L_0x0236;
    L_0x019b:
        if (r6 != r13) goto L_0x0236;
    L_0x019d:
        r5 = r10.mParent;
        if (r5 == 0) goto L_0x01ad;
    L_0x01a1:
        r5 = r10.mParent;
        r5 = r5.mListDimensionBehaviors;
        r5 = r5[r22];
        r8 = android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        if (r5 != r8) goto L_0x01ad;
    L_0x01ab:
        r5 = 0;
        return r5;
    L_0x01ad:
        r3 = r3 + r14;
        r3 = r3 - r15;
        if (r7 == 0) goto L_0x01b3;
    L_0x01b1:
        r15 = r15 - r1;
        r3 = r3 - r15;
    L_0x01b3:
        if (r7 == 0) goto L_0x01cf;
    L_0x01b5:
        r1 = r12.mListAnchors;
        r1 = r1[r4];
        r1 = r1.getMargin();
        r1 = (float) r1;
        r9 = r9 + r1;
        r1 = r12.mListNextVisibleWidget;
        r1 = r1[r22];
        if (r1 == 0) goto L_0x01cf;
    L_0x01c5:
        r1 = r1.mListAnchors;
        r1 = r1[r23];
        r1 = r1.getMargin();
        r1 = (float) r1;
        r9 = r9 + r1;
    L_0x01cf:
        if (r12 == 0) goto L_0x0234;
    L_0x01d1:
        r1 = android.support.constraint.solver.LinearSystem.sMetrics$4d61556e;
        r1 = r12.mListNextVisibleWidget;
        r1 = r1[r22];
        if (r1 != 0) goto L_0x01de;
    L_0x01d9:
        if (r12 != r11) goto L_0x01dc;
    L_0x01db:
        goto L_0x01de;
    L_0x01dc:
        r7 = 0;
        goto L_0x0232;
    L_0x01de:
        r5 = (float) r6;
        r5 = r3 / r5;
        r7 = 0;
        r8 = (r16 > r7 ? 1 : (r16 == r7 ? 0 : -1));
        if (r8 <= 0) goto L_0x01ed;
    L_0x01e6:
        r5 = r12.mWeight;
        r5 = r5[r22];
        r5 = r5 * r3;
        r5 = r5 / r16;
    L_0x01ed:
        r8 = r12.mListAnchors;
        r8 = r8[r23];
        r8 = r8.getMargin();
        r8 = (float) r8;
        r9 = r9 + r8;
        r8 = r12.mListAnchors;
        r8 = r8[r23];
        r8 = r8.getResolutionNode();
        r10 = r2.resolvedTarget;
        r8.resolve(r10, r9);
        r8 = r12.mListAnchors;
        r8 = r8[r4];
        r8 = r8.getResolutionNode();
        r10 = r2.resolvedTarget;
        r9 = r9 + r5;
        r8.resolve(r10, r9);
        r5 = r12.mListAnchors;
        r5 = r5[r23];
        r5 = r5.getResolutionNode();
        r5.addResolvedValue(r0);
        r5 = r12.mListAnchors;
        r5 = r5[r4];
        r5 = r5.getResolutionNode();
        r5.addResolvedValue(r0);
        r5 = r12.mListAnchors;
        r5 = r5[r4];
        r5 = r5.getMargin();
        r5 = (float) r5;
        r9 = r9 + r5;
    L_0x0232:
        r12 = r1;
        goto L_0x01cf;
    L_0x0234:
        r1 = 1;
        return r1;
    L_0x0236:
        r6 = (r3 > r14 ? 1 : (r3 == r14 ? 0 : -1));
        if (r6 >= 0) goto L_0x023c;
    L_0x023a:
        r6 = 0;
        return r6;
    L_0x023c:
        if (r5 == 0) goto L_0x02a8;
    L_0x023e:
        r3 = r3 - r1;
        r1 = r24;
        r1 = r1.mHorizontalBiasPercent;
        r3 = r3 * r1;
        r9 = r9 + r3;
    L_0x0245:
        if (r12 == 0) goto L_0x02a5;
    L_0x0247:
        r1 = android.support.constraint.solver.LinearSystem.sMetrics$4d61556e;
        r1 = r12.mListNextVisibleWidget;
        r1 = r1[r22];
        if (r1 != 0) goto L_0x0251;
    L_0x024f:
        if (r12 != r11) goto L_0x02a3;
    L_0x0251:
        if (r22 != 0) goto L_0x0259;
    L_0x0253:
        r3 = r12.getWidth();
        r3 = (float) r3;
        goto L_0x025e;
    L_0x0259:
        r3 = r12.getHeight();
        r3 = (float) r3;
    L_0x025e:
        r5 = r12.mListAnchors;
        r5 = r5[r23];
        r5 = r5.getMargin();
        r5 = (float) r5;
        r9 = r9 + r5;
        r5 = r12.mListAnchors;
        r5 = r5[r23];
        r5 = r5.getResolutionNode();
        r6 = r2.resolvedTarget;
        r5.resolve(r6, r9);
        r5 = r12.mListAnchors;
        r5 = r5[r4];
        r5 = r5.getResolutionNode();
        r6 = r2.resolvedTarget;
        r9 = r9 + r3;
        r5.resolve(r6, r9);
        r3 = r12.mListAnchors;
        r3 = r3[r23];
        r3 = r3.getResolutionNode();
        r3.addResolvedValue(r0);
        r3 = r12.mListAnchors;
        r3 = r3[r4];
        r3 = r3.getResolutionNode();
        r3.addResolvedValue(r0);
        r3 = r12.mListAnchors;
        r3 = r3[r4];
        r3 = r3.getMargin();
        r3 = (float) r3;
        r9 = r9 + r3;
    L_0x02a3:
        r12 = r1;
        goto L_0x0245;
    L_0x02a5:
        r0 = 1;
        goto L_0x0335;
    L_0x02a8:
        if (r7 != 0) goto L_0x02ac;
    L_0x02aa:
        if (r8 == 0) goto L_0x02a5;
    L_0x02ac:
        if (r7 == 0) goto L_0x02b0;
    L_0x02ae:
        r3 = r3 - r1;
        goto L_0x02b3;
    L_0x02b0:
        if (r8 == 0) goto L_0x02b3;
    L_0x02b2:
        r3 = r3 - r1;
    L_0x02b3:
        r1 = r13 + 1;
        r1 = (float) r1;
        r1 = r3 / r1;
        if (r8 == 0) goto L_0x02c7;
    L_0x02ba:
        r5 = 1;
        if (r13 <= r5) goto L_0x02c3;
    L_0x02bd:
        r1 = r13 + -1;
        r1 = (float) r1;
        r1 = r3 / r1;
        goto L_0x02c7;
    L_0x02c3:
        r1 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r1 = r3 / r1;
    L_0x02c7:
        r3 = r9 + r1;
        if (r8 == 0) goto L_0x02d8;
    L_0x02cb:
        r5 = 1;
        if (r13 <= r5) goto L_0x02d8;
    L_0x02ce:
        r3 = r12.mListAnchors;
        r3 = r3[r23];
        r3 = r3.getMargin();
        r3 = (float) r3;
        r3 = r3 + r9;
    L_0x02d8:
        if (r7 == 0) goto L_0x02e6;
    L_0x02da:
        if (r12 == 0) goto L_0x02e6;
    L_0x02dc:
        r5 = r12.mListAnchors;
        r5 = r5[r23];
        r5 = r5.getMargin();
        r5 = (float) r5;
        r3 = r3 + r5;
    L_0x02e6:
        if (r12 == 0) goto L_0x02a5;
    L_0x02e8:
        r5 = android.support.constraint.solver.LinearSystem.sMetrics$4d61556e;
        r5 = r12.mListNextVisibleWidget;
        r5 = r5[r22];
        if (r5 != 0) goto L_0x02f2;
    L_0x02f0:
        if (r12 != r11) goto L_0x0333;
    L_0x02f2:
        if (r22 != 0) goto L_0x02fa;
    L_0x02f4:
        r6 = r12.getWidth();
        r6 = (float) r6;
        goto L_0x02ff;
    L_0x02fa:
        r6 = r12.getHeight();
        r6 = (float) r6;
    L_0x02ff:
        r7 = r12.mListAnchors;
        r7 = r7[r23];
        r7 = r7.getResolutionNode();
        r8 = r2.resolvedTarget;
        r7.resolve(r8, r3);
        r7 = r12.mListAnchors;
        r7 = r7[r4];
        r7 = r7.getResolutionNode();
        r8 = r2.resolvedTarget;
        r9 = r3 + r6;
        r7.resolve(r8, r9);
        r7 = r12.mListAnchors;
        r7 = r7[r23];
        r7 = r7.getResolutionNode();
        r7.addResolvedValue(r0);
        r7 = r12.mListAnchors;
        r7 = r7[r4];
        r7 = r7.getResolutionNode();
        r7.addResolvedValue(r0);
        r6 = r6 + r1;
        r3 = r3 + r6;
    L_0x0333:
        r12 = r5;
        goto L_0x02e6;
    L_0x0335:
        return r0;
    L_0x0336:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.constraint.solver.widgets.Optimizer.applyChainOptimized(android.support.constraint.solver.widgets.ConstraintWidgetContainer, android.support.constraint.solver.LinearSystem, int, int, android.support.constraint.solver.widgets.ConstraintWidget):boolean");
    }
}
