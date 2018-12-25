package android.support.constraint.solver.widgets;

import android.support.constraint.solver.SolverVariable;

public final class ConstraintAnchor {
    private int mConnectionCreator = 0;
    private ConnectionType mConnectionType = ConnectionType.RELAXED;
    int mGoneMargin = -1;
    public int mMargin = 0;
    final ConstraintWidget mOwner;
    private ResolutionAnchor mResolutionAnchor = new ResolutionAnchor(this);
    SolverVariable mSolverVariable;
    private Strength mStrength = Strength.NONE;
    ConstraintAnchor mTarget;
    final Type mType;

    public enum ConnectionType {
        RELAXED,
        STRICT
    }

    public enum Strength {
        NONE,
        STRONG,
        WEAK
    }

    public enum Type {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public final ResolutionAnchor getResolutionNode() {
        return this.mResolutionAnchor;
    }

    public ConstraintAnchor(ConstraintWidget constraintWidget, Type type) {
        this.mOwner = constraintWidget;
        this.mType = type;
    }

    public final SolverVariable getSolverVariable() {
        return this.mSolverVariable;
    }

    public final void resetSolverVariable$3da49f8c() {
        if (this.mSolverVariable == null) {
            this.mSolverVariable = new SolverVariable(android.support.constraint.solver.SolverVariable.Type.UNRESTRICTED);
        } else {
            this.mSolverVariable.reset();
        }
    }

    public final int getMargin() {
        if (this.mOwner.getVisibility() == 8) {
            return 0;
        }
        if (this.mGoneMargin < 0 || this.mTarget == null || this.mTarget.mOwner.getVisibility() != 8) {
            return this.mMargin;
        }
        return this.mGoneMargin;
    }

    public final Strength getStrength() {
        return this.mStrength;
    }

    public final ConstraintAnchor getTarget() {
        return this.mTarget;
    }

    public final int getConnectionCreator() {
        return this.mConnectionCreator;
    }

    public final void reset() {
        this.mTarget = null;
        this.mMargin = 0;
        this.mGoneMargin = -1;
        this.mStrength = Strength.STRONG;
        this.mConnectionCreator = 0;
        this.mConnectionType = ConnectionType.RELAXED;
        this.mResolutionAnchor.reset();
    }

    public final boolean connect(ConstraintAnchor constraintAnchor, int i, Strength strength, int i2) {
        return connect(constraintAnchor, i, -1, strength, i2, false);
    }

    public final boolean connect(ConstraintAnchor constraintAnchor, int i, int i2, Strength strength, int i3, boolean z) {
        if (constraintAnchor == null) {
            this.mTarget = null;
            this.mMargin = 0;
            this.mGoneMargin = -1;
            this.mStrength = Strength.NONE;
            this.mConnectionCreator = 2;
            return true;
        } else if (!z && !isValidConnection(constraintAnchor)) {
            return false;
        } else {
            this.mTarget = constraintAnchor;
            if (i > 0) {
                this.mMargin = i;
            } else {
                this.mMargin = 0;
            }
            this.mGoneMargin = i2;
            this.mStrength = strength;
            this.mConnectionCreator = i3;
            return true;
        }
    }

    public final boolean connect$37b91e6c(ConstraintAnchor constraintAnchor, int i) {
        return connect(constraintAnchor, 0, -1, Strength.STRONG, i, false);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.mOwner.getDebugName());
        stringBuilder.append(":");
        stringBuilder.append(this.mType.toString());
        return stringBuilder.toString();
    }

    public final ConstraintAnchor getOpposite() {
        switch (this.mType) {
            case CENTER:
            case BASELINE:
            case CENTER_X:
            case CENTER_Y:
            case NONE:
                return null;
            case LEFT:
                return this.mOwner.mRight;
            case RIGHT:
                return this.mOwner.mLeft;
            case TOP:
                return this.mOwner.mBottom;
            case BOTTOM:
                return this.mOwner.mTop;
            default:
                throw new AssertionError(this.mType.name());
        }
    }

    public final boolean isValidConnection(ConstraintAnchor constraintAnchor) {
        if (constraintAnchor == null) {
            return false;
        }
        Type type = constraintAnchor.mType;
        if (type == this.mType) {
            if (this.mType == Type.BASELINE) {
                if ((constraintAnchor.mOwner.mBaselineDistance > null ? 1 : null) != null) {
                    if ((this.mOwner.mBaselineDistance > null ? 1 : null) == null) {
                        return false;
                    }
                }
                return false;
            }
            return true;
        }
        boolean z;
        switch (this.mType) {
            case CENTER:
                if (type == Type.BASELINE || type == Type.CENTER_X || type == Type.CENTER_Y) {
                    return false;
                }
                return true;
            case LEFT:
            case RIGHT:
                if (type != Type.LEFT) {
                    if (type != Type.RIGHT) {
                        z = false;
                        if ((constraintAnchor.mOwner instanceof Guideline) != null) {
                            if (!z) {
                                if (type == Type.CENTER_X) {
                                    z = false;
                                }
                            }
                            z = true;
                        }
                        return z;
                    }
                }
                z = true;
                if ((constraintAnchor.mOwner instanceof Guideline) != null) {
                    if (z) {
                        if (type == Type.CENTER_X) {
                            z = false;
                        }
                    }
                    z = true;
                }
                return z;
            case TOP:
            case BOTTOM:
                if (type != Type.TOP) {
                    if (type != Type.BOTTOM) {
                        z = false;
                        if ((constraintAnchor.mOwner instanceof Guideline) != null) {
                            if (!z) {
                                if (type == Type.CENTER_Y) {
                                    z = false;
                                }
                            }
                            z = true;
                        }
                        return z;
                    }
                }
                z = true;
                if ((constraintAnchor.mOwner instanceof Guideline) != null) {
                    if (z) {
                        if (type == Type.CENTER_Y) {
                            z = false;
                        }
                    }
                    z = true;
                }
                return z;
            case BASELINE:
            case CENTER_X:
            case CENTER_Y:
            case NONE:
                return false;
            default:
                throw new AssertionError(this.mType.name());
        }
    }
}
