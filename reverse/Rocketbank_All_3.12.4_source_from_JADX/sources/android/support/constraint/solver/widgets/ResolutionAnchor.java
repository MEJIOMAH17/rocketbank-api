package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.SolverVariable;
import android.support.constraint.solver.widgets.ConstraintAnchor.Type;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public final class ResolutionAnchor extends Chain {
    float computedValue;
    private ResolutionDimension dimension = null;
    private int dimensionMultiplier = 1;
    ConstraintAnchor myAnchor;
    float offset;
    private ResolutionAnchor opposite;
    private ResolutionDimension oppositeDimension = null;
    private int oppositeDimensionMultiplier = 1;
    private float oppositeOffset;
    float resolvedOffset;
    ResolutionAnchor resolvedTarget;
    ResolutionAnchor target;
    int type = 0;

    private static String sType(int i) {
        return i == 1 ? "DIRECT" : i == 2 ? "CENTER" : i == 3 ? "MATCH" : i == 4 ? "CHAIN" : i == 5 ? "BARRIER" : "UNCONNECTED";
    }

    public ResolutionAnchor(ConstraintAnchor constraintAnchor) {
        this.myAnchor = constraintAnchor;
    }

    public final String toString() {
        StringBuilder stringBuilder;
        if (this.state != 1) {
            stringBuilder = new StringBuilder("{ ");
            stringBuilder.append(this.myAnchor);
            stringBuilder.append(" UNRESOLVED} type: ");
            stringBuilder.append(sType(this.type));
            return stringBuilder.toString();
        } else if (this.resolvedTarget == this) {
            stringBuilder = new StringBuilder("[");
            stringBuilder.append(this.myAnchor);
            stringBuilder.append(", RESOLVED: ");
            stringBuilder.append(this.resolvedOffset);
            stringBuilder.append("]  type: ");
            stringBuilder.append(sType(this.type));
            return stringBuilder.toString();
        } else {
            stringBuilder = new StringBuilder("[");
            stringBuilder.append(this.myAnchor);
            stringBuilder.append(", RESOLVED: ");
            stringBuilder.append(this.resolvedTarget);
            stringBuilder.append(":");
            stringBuilder.append(this.resolvedOffset);
            stringBuilder.append("] type: ");
            stringBuilder.append(sType(this.type));
            return stringBuilder.toString();
        }
    }

    public final void resolve(ResolutionAnchor resolutionAnchor, float f) {
        if (this.state == 0 || !(this.resolvedTarget == resolutionAnchor || this.resolvedOffset == f)) {
            this.resolvedTarget = resolutionAnchor;
            this.resolvedOffset = f;
            if (this.state == Float.MIN_VALUE) {
                invalidate();
            }
            didResolve();
        }
    }

    public final void resolve() {
        if (this.state != 1 && this.type != 4) {
            if (this.dimension != null) {
                if (this.dimension.state == 1) {
                    this.offset = ((float) this.dimensionMultiplier) * this.dimension.value;
                } else {
                    return;
                }
            }
            if (this.oppositeDimension != null) {
                if (this.oppositeDimension.state == 1) {
                    this.oppositeOffset = ((float) this.oppositeDimensionMultiplier) * this.oppositeDimension.value;
                } else {
                    return;
                }
            }
            if (this.type == 1 && (this.target == null || this.target.state == 1)) {
                if (this.target == null) {
                    this.resolvedTarget = this;
                    this.resolvedOffset = this.offset;
                } else {
                    this.resolvedTarget = this.target.resolvedTarget;
                    this.resolvedOffset = this.target.resolvedOffset + this.offset;
                }
                didResolve();
            } else if (this.type == 2 && this.target != null && this.target.state == 1 && this.opposite != null && this.opposite.target != null && this.opposite.target.state == 1) {
                float f;
                float f2;
                int margin;
                int margin2;
                float f3;
                float f4;
                LinearSystem.getMetrics$51a36633();
                this.resolvedTarget = this.target.resolvedTarget;
                this.opposite.resolvedTarget = this.opposite.target.resolvedTarget;
                if (this.oppositeOffset > BitmapDescriptorFactory.HUE_RED) {
                    f = this.target.resolvedOffset - this.opposite.target.resolvedOffset;
                } else {
                    f = this.opposite.target.resolvedOffset - this.target.resolvedOffset;
                }
                if (this.myAnchor.mType != Type.LEFT) {
                    if (this.myAnchor.mType != Type.RIGHT) {
                        f -= (float) this.myAnchor.mOwner.getHeight();
                        f2 = this.myAnchor.mOwner.mVerticalBiasPercent;
                        margin = this.myAnchor.getMargin();
                        margin2 = this.opposite.myAnchor.getMargin();
                        if (this.myAnchor.mTarget == this.opposite.myAnchor.mTarget) {
                            f2 = 0.5f;
                            margin = 0;
                            margin2 = margin;
                        }
                        f3 = (float) margin;
                        f4 = (float) margin2;
                        f = (f - f3) - f4;
                        if (this.oppositeOffset <= BitmapDescriptorFactory.HUE_RED) {
                            this.opposite.resolvedOffset = (this.opposite.target.resolvedOffset + f4) + (f * f2);
                            this.resolvedOffset = (this.target.resolvedOffset - f3) - (f * (1.0f - f2));
                        } else {
                            this.resolvedOffset = (this.target.resolvedOffset + f3) + (f * f2);
                            this.opposite.resolvedOffset = (this.opposite.target.resolvedOffset - f4) - (f * (1.0f - f2));
                        }
                        didResolve();
                        this.opposite.didResolve();
                    }
                }
                f -= (float) this.myAnchor.mOwner.getWidth();
                f2 = this.myAnchor.mOwner.mHorizontalBiasPercent;
                margin = this.myAnchor.getMargin();
                margin2 = this.opposite.myAnchor.getMargin();
                if (this.myAnchor.mTarget == this.opposite.myAnchor.mTarget) {
                    f2 = 0.5f;
                    margin = 0;
                    margin2 = margin;
                }
                f3 = (float) margin;
                f4 = (float) margin2;
                f = (f - f3) - f4;
                if (this.oppositeOffset <= BitmapDescriptorFactory.HUE_RED) {
                    this.resolvedOffset = (this.target.resolvedOffset + f3) + (f * f2);
                    this.opposite.resolvedOffset = (this.opposite.target.resolvedOffset - f4) - (f * (1.0f - f2));
                } else {
                    this.opposite.resolvedOffset = (this.opposite.target.resolvedOffset + f4) + (f * f2);
                    this.resolvedOffset = (this.target.resolvedOffset - f3) - (f * (1.0f - f2));
                }
                didResolve();
                this.opposite.didResolve();
            } else if (this.type != 3 || this.target == null || this.target.state != 1 || this.opposite == null || this.opposite.target == null || this.opposite.target.state != 1) {
                if (this.type == 5) {
                    this.myAnchor.mOwner.resolve();
                }
            } else {
                LinearSystem.getMetrics$51a36633();
                this.resolvedTarget = this.target.resolvedTarget;
                this.opposite.resolvedTarget = this.opposite.target.resolvedTarget;
                this.resolvedOffset = this.target.resolvedOffset + this.offset;
                this.opposite.resolvedOffset = this.opposite.target.resolvedOffset + this.opposite.offset;
                didResolve();
                this.opposite.didResolve();
            }
        }
    }

    public final void reset() {
        super.reset();
        this.target = null;
        this.offset = BitmapDescriptorFactory.HUE_RED;
        this.dimension = null;
        this.dimensionMultiplier = 1;
        this.oppositeDimension = null;
        this.oppositeDimensionMultiplier = 1;
        this.resolvedTarget = null;
        this.resolvedOffset = BitmapDescriptorFactory.HUE_RED;
        this.computedValue = BitmapDescriptorFactory.HUE_RED;
        this.opposite = null;
        this.oppositeOffset = BitmapDescriptorFactory.HUE_RED;
        this.type = 0;
    }

    public final void dependsOn(ResolutionAnchor resolutionAnchor, int i, ResolutionDimension resolutionDimension) {
        this.target = resolutionAnchor;
        this.target.dependents.add(this);
        this.dimension = resolutionDimension;
        this.dimensionMultiplier = i;
        this.dimension.dependents.add(this);
    }

    public final void setOpposite(ResolutionAnchor resolutionAnchor, float f) {
        this.opposite = resolutionAnchor;
        this.oppositeOffset = f;
    }

    public final void setOpposite(ResolutionAnchor resolutionAnchor, int i, ResolutionDimension resolutionDimension) {
        this.opposite = resolutionAnchor;
        this.oppositeDimension = resolutionDimension;
        this.oppositeDimensionMultiplier = i;
    }

    final void addResolvedValue(LinearSystem linearSystem) {
        SolverVariable solverVariable = this.myAnchor.mSolverVariable;
        if (this.resolvedTarget == null) {
            linearSystem.addEquality(solverVariable, (int) this.resolvedOffset);
        } else {
            linearSystem.addEquality(solverVariable, linearSystem.createObjectVariable(this.resolvedTarget.myAnchor), (int) this.resolvedOffset, 6);
        }
    }

    public final float getResolvedValue() {
        return this.resolvedOffset;
    }
}
