package android.support.constraint.solver.widgets;

import android.support.compat.C0886R.color;
import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.SolverVariable;
import android.support.constraint.solver.widgets.ConstraintAnchor.Type;
import android.support.constraint.solver.widgets.ConstraintWidget.DimensionBehaviour;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;

public final class Guideline extends ConstraintWidget {
    private ConstraintAnchor mAnchor = this.mTop;
    private color mHead$2200ca22;
    private int mHeadSize;
    private boolean mIsPositionRelaxed;
    private int mMinimumPosition;
    private int mOrientation;
    protected int mRelativeBegin = -1;
    protected int mRelativeEnd = -1;
    protected float mRelativePercent = -1.0f;

    public final boolean allowedInBarrier() {
        return true;
    }

    public Guideline() {
        int i = 0;
        this.mOrientation = 0;
        this.mIsPositionRelaxed = false;
        this.mMinimumPosition = 0;
        this.mHead$2200ca22 = new color();
        this.mHeadSize = 8;
        this.mAnchors.clear();
        this.mAnchors.add(this.mAnchor);
        int length = this.mListAnchors.length;
        while (i < length) {
            this.mListAnchors[i] = this.mAnchor;
            i++;
        }
    }

    public final void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            this.mAnchors.clear();
            if (this.mOrientation == 1) {
                this.mAnchor = this.mLeft;
            } else {
                this.mAnchor = this.mTop;
            }
            this.mAnchors.add(this.mAnchor);
            i = this.mListAnchors.length;
            for (int i2 = 0; i2 < i; i2++) {
                this.mListAnchors[i2] = this.mAnchor;
            }
        }
    }

    public final ConstraintAnchor getAnchor(Type type) {
        switch (type) {
            case LEFT:
            case RIGHT:
                if (this.mOrientation == 1) {
                    return this.mAnchor;
                }
                break;
            case TOP:
            case BOTTOM:
                if (this.mOrientation == 0) {
                    return this.mAnchor;
                }
                break;
            case BASELINE:
            case CENTER:
            case CENTER_X:
            case CENTER_Y:
            case NONE:
                return null;
            default:
                break;
        }
        throw new AssertionError(type.name());
    }

    public final ArrayList<ConstraintAnchor> getAnchors() {
        return this.mAnchors;
    }

    public final void setGuidePercent(float f) {
        if (f > -1.0f) {
            this.mRelativePercent = f;
            this.mRelativeBegin = -1;
            this.mRelativeEnd = -1;
        }
    }

    public final void setGuideBegin(int i) {
        if (i >= 0) {
            this.mRelativePercent = -1.0f;
            this.mRelativeBegin = i;
            this.mRelativeEnd = -1;
        }
    }

    public final void setGuideEnd(int i) {
        if (i >= 0) {
            this.mRelativePercent = -1.0f;
            this.mRelativeBegin = -1;
            this.mRelativeEnd = i;
        }
    }

    public final void analyze(int i) {
        i = this.mParent;
        if (i != 0) {
            ResolutionAnchor resolutionNode;
            ResolutionAnchor resolutionNode2;
            ResolutionAnchor resolutionNode3;
            int i2;
            int i3;
            int i4;
            ResolutionAnchor resolutionNode4;
            float f;
            if (this.mOrientation == 1) {
                resolutionNode = this.mTop.getResolutionNode();
                resolutionNode2 = i.mTop.getResolutionNode();
                resolutionNode.type = 1;
                resolutionNode.target = resolutionNode2;
                resolutionNode.offset = BitmapDescriptorFactory.HUE_RED;
                resolutionNode.target.dependents.add(resolutionNode);
                resolutionNode = this.mBottom.getResolutionNode();
                resolutionNode2 = i.mTop.getResolutionNode();
                resolutionNode.type = 1;
                resolutionNode.target = resolutionNode2;
                resolutionNode.offset = BitmapDescriptorFactory.HUE_RED;
                resolutionNode.target.dependents.add(resolutionNode);
                if (this.mRelativeBegin != -1) {
                    resolutionNode = this.mLeft.getResolutionNode();
                    resolutionNode3 = i.mLeft.getResolutionNode();
                    i2 = this.mRelativeBegin;
                    resolutionNode.type = 1;
                    resolutionNode.target = resolutionNode3;
                    resolutionNode.offset = (float) i2;
                    resolutionNode.target.dependents.add(resolutionNode);
                    resolutionNode = this.mRight.getResolutionNode();
                    i = i.mLeft.getResolutionNode();
                    i3 = this.mRelativeBegin;
                    resolutionNode.type = 1;
                    resolutionNode.target = i;
                    resolutionNode.offset = (float) i3;
                    resolutionNode.target.dependents.add(resolutionNode);
                    return;
                } else if (this.mRelativeEnd != -1) {
                    resolutionNode = this.mLeft.getResolutionNode();
                    resolutionNode3 = i.mRight.getResolutionNode();
                    i2 = -this.mRelativeEnd;
                    resolutionNode.type = 1;
                    resolutionNode.target = resolutionNode3;
                    resolutionNode.offset = (float) i2;
                    resolutionNode.target.dependents.add(resolutionNode);
                    resolutionNode = this.mRight.getResolutionNode();
                    i = i.mRight.getResolutionNode();
                    i3 = -this.mRelativeEnd;
                    resolutionNode.type = 1;
                    resolutionNode.target = i;
                    resolutionNode.offset = (float) i3;
                    resolutionNode.target.dependents.add(resolutionNode);
                    return;
                } else if (this.mRelativePercent != -1.0f && i.getHorizontalDimensionBehaviour() == DimensionBehaviour.FIXED) {
                    i4 = (int) (((float) i.mWidth) * this.mRelativePercent);
                    resolutionNode3 = this.mLeft.getResolutionNode();
                    resolutionNode4 = i.mLeft.getResolutionNode();
                    resolutionNode3.type = 1;
                    resolutionNode3.target = resolutionNode4;
                    f = (float) i4;
                    resolutionNode3.offset = f;
                    resolutionNode3.target.dependents.add(resolutionNode3);
                    resolutionNode3 = this.mRight.getResolutionNode();
                    i = i.mLeft.getResolutionNode();
                    resolutionNode3.type = 1;
                    resolutionNode3.target = i;
                    resolutionNode3.offset = f;
                    resolutionNode3.target.dependents.add(resolutionNode3);
                    return;
                }
            }
            resolutionNode = this.mLeft.getResolutionNode();
            resolutionNode2 = i.mLeft.getResolutionNode();
            resolutionNode.type = 1;
            resolutionNode.target = resolutionNode2;
            resolutionNode.offset = BitmapDescriptorFactory.HUE_RED;
            resolutionNode.target.dependents.add(resolutionNode);
            resolutionNode = this.mRight.getResolutionNode();
            resolutionNode2 = i.mLeft.getResolutionNode();
            resolutionNode.type = 1;
            resolutionNode.target = resolutionNode2;
            resolutionNode.offset = BitmapDescriptorFactory.HUE_RED;
            resolutionNode.target.dependents.add(resolutionNode);
            if (this.mRelativeBegin != -1) {
                resolutionNode = this.mTop.getResolutionNode();
                resolutionNode3 = i.mTop.getResolutionNode();
                i2 = this.mRelativeBegin;
                resolutionNode.type = 1;
                resolutionNode.target = resolutionNode3;
                resolutionNode.offset = (float) i2;
                resolutionNode.target.dependents.add(resolutionNode);
                resolutionNode = this.mBottom.getResolutionNode();
                i = i.mTop.getResolutionNode();
                i3 = this.mRelativeBegin;
                resolutionNode.type = 1;
                resolutionNode.target = i;
                resolutionNode.offset = (float) i3;
                resolutionNode.target.dependents.add(resolutionNode);
            } else if (this.mRelativeEnd != -1) {
                resolutionNode = this.mTop.getResolutionNode();
                resolutionNode3 = i.mBottom.getResolutionNode();
                i2 = -this.mRelativeEnd;
                resolutionNode.type = 1;
                resolutionNode.target = resolutionNode3;
                resolutionNode.offset = (float) i2;
                resolutionNode.target.dependents.add(resolutionNode);
                resolutionNode = this.mBottom.getResolutionNode();
                i = i.mBottom.getResolutionNode();
                i3 = -this.mRelativeEnd;
                resolutionNode.type = 1;
                resolutionNode.target = i;
                resolutionNode.offset = (float) i3;
                resolutionNode.target.dependents.add(resolutionNode);
            } else if (this.mRelativePercent != -1.0f && i.getVerticalDimensionBehaviour() == DimensionBehaviour.FIXED) {
                i4 = (int) (((float) i.mHeight) * this.mRelativePercent);
                resolutionNode3 = this.mTop.getResolutionNode();
                resolutionNode4 = i.mTop.getResolutionNode();
                resolutionNode3.type = 1;
                resolutionNode3.target = resolutionNode4;
                f = (float) i4;
                resolutionNode3.offset = f;
                resolutionNode3.target.dependents.add(resolutionNode3);
                resolutionNode3 = this.mBottom.getResolutionNode();
                i = i.mTop.getResolutionNode();
                resolutionNode3.type = 1;
                resolutionNode3.target = i;
                resolutionNode3.offset = f;
                resolutionNode3.target.dependents.add(resolutionNode3);
            }
        }
    }

    public final void addToSolver(LinearSystem linearSystem) {
        ConstraintWidgetContainer constraintWidgetContainer = (ConstraintWidgetContainer) this.mParent;
        if (constraintWidgetContainer != null) {
            Object anchor = constraintWidgetContainer.getAnchor(Type.LEFT);
            Object anchor2 = constraintWidgetContainer.getAnchor(Type.RIGHT);
            int i = (this.mParent == null || this.mParent.mListDimensionBehaviors[0] != DimensionBehaviour.WRAP_CONTENT) ? 0 : 1;
            if (this.mOrientation == 0) {
                anchor = constraintWidgetContainer.getAnchor(Type.TOP);
                anchor2 = constraintWidgetContainer.getAnchor(Type.BOTTOM);
                i = (this.mParent == null || this.mParent.mListDimensionBehaviors[1] != DimensionBehaviour.WRAP_CONTENT) ? 0 : 1;
            }
            SolverVariable createObjectVariable;
            if (this.mRelativeBegin != -1) {
                createObjectVariable = linearSystem.createObjectVariable(this.mAnchor);
                linearSystem.addEquality(createObjectVariable, linearSystem.createObjectVariable(anchor), this.mRelativeBegin, 6);
                if (i != 0) {
                    linearSystem.addGreaterThan(linearSystem.createObjectVariable(anchor2), createObjectVariable, 0, 5);
                }
            } else if (this.mRelativeEnd != -1) {
                createObjectVariable = linearSystem.createObjectVariable(this.mAnchor);
                SolverVariable createObjectVariable2 = linearSystem.createObjectVariable(anchor2);
                linearSystem.addEquality(createObjectVariable, createObjectVariable2, -this.mRelativeEnd, 6);
                if (i != 0) {
                    linearSystem.addGreaterThan(createObjectVariable, linearSystem.createObjectVariable(anchor), 0, 5);
                    linearSystem.addGreaterThan(createObjectVariable2, createObjectVariable, 0, 5);
                }
            } else {
                if (this.mRelativePercent != -1.0f) {
                    linearSystem.addConstraint(LinearSystem.createRowDimensionPercent$16ecd2a2(linearSystem, linearSystem.createObjectVariable(this.mAnchor), linearSystem.createObjectVariable(anchor), linearSystem.createObjectVariable(anchor2), this.mRelativePercent));
                }
            }
        }
    }

    public final void updateFromSolver$12aaac66() {
        if (this.mParent != null) {
            int objectVariableValue = LinearSystem.getObjectVariableValue(this.mAnchor);
            if (this.mOrientation == 1) {
                setX(objectVariableValue);
                setY(0);
                setHeight(this.mParent.getHeight());
                setWidth(0);
                return;
            }
            setX(0);
            setY(objectVariableValue);
            setWidth(this.mParent.getWidth());
            setHeight(0);
        }
    }
}
