package android.support.constraint.solver.widgets;

import android.support.constraint.solver.LinearSystem;
import android.support.constraint.solver.widgets.ConstraintAnchor.Strength;
import android.support.constraint.solver.widgets.ConstraintAnchor.Type;

public final class ConstraintHorizontalLayout extends ConstraintWidgetContainer {

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

    public final void addToSolver(LinearSystem linearSystem) {
        if (this.mChildren.size() != 0) {
            Strength strength;
            Strength strength2;
            int size = this.mChildren.size();
            ConstraintWidget constraintWidget = this;
            int i = 0;
            while (i < size) {
                ConstraintWidget constraintWidget2 = (ConstraintWidget) this.mChildren.get(i);
                if (constraintWidget != this) {
                    constraintWidget2.connect$411e6efd(Type.LEFT, constraintWidget, Type.RIGHT, Strength.STRONG, 0);
                    constraintWidget.connect$411e6efd(Type.RIGHT, constraintWidget2, Type.LEFT, Strength.STRONG, 0);
                } else {
                    strength = Strength.STRONG;
                    if (ContentAlignment.END == null) {
                        strength = Strength.WEAK;
                    }
                    strength2 = strength;
                    constraintWidget2.connect$411e6efd(Type.LEFT, constraintWidget, Type.LEFT, strength2, 0);
                }
                ConstraintWidget constraintWidget3 = constraintWidget2;
                constraintWidget3.connect$411e6efd(Type.TOP, this, Type.TOP, Strength.STRONG, 0);
                constraintWidget3.connect$411e6efd(Type.BOTTOM, this, Type.BOTTOM, Strength.STRONG, 0);
                i++;
                constraintWidget = constraintWidget2;
            }
            if (constraintWidget != this) {
                strength = Strength.STRONG;
                if (ContentAlignment.BEGIN == null) {
                    strength = Strength.WEAK;
                }
                strength2 = strength;
                constraintWidget.connect$411e6efd(Type.RIGHT, this, Type.RIGHT, strength2, 0);
            }
        }
        super.addToSolver(linearSystem);
    }
}
