package android.support.constraint.solver.widgets;

import android.support.constraint.solver.Cache;
import java.util.ArrayList;

public class WidgetContainer extends ConstraintWidget {
    protected ArrayList<ConstraintWidget> mChildren = new ArrayList();

    public void reset() {
        this.mChildren.clear();
        super.reset();
    }

    public final void add(ConstraintWidget constraintWidget) {
        this.mChildren.add(constraintWidget);
        if (constraintWidget.mParent != null) {
            ((WidgetContainer) constraintWidget.mParent).mChildren.remove(constraintWidget);
            constraintWidget.mParent = null;
        }
        constraintWidget.mParent = this;
    }

    public final void remove(ConstraintWidget constraintWidget) {
        this.mChildren.remove(constraintWidget);
        constraintWidget.mParent = null;
    }

    public final void setOffset(int i, int i2) {
        super.setOffset(i, i2);
        i = this.mChildren.size();
        for (i2 = 0; i2 < i; i2++) {
            ((ConstraintWidget) this.mChildren.get(i2)).setOffset(getRootX(), getRootY());
        }
    }

    public final void updateDrawPosition() {
        super.updateDrawPosition();
        if (this.mChildren != null) {
            int size = this.mChildren.size();
            for (int i = 0; i < size; i++) {
                ConstraintWidget constraintWidget = (ConstraintWidget) this.mChildren.get(i);
                constraintWidget.setOffset(getDrawX(), getDrawY());
                if (!(constraintWidget instanceof ConstraintWidgetContainer)) {
                    constraintWidget.updateDrawPosition();
                }
            }
        }
    }

    public void layout() {
        updateDrawPosition();
        if (this.mChildren != null) {
            int size = this.mChildren.size();
            for (int i = 0; i < size; i++) {
                ConstraintWidget constraintWidget = (ConstraintWidget) this.mChildren.get(i);
                if (constraintWidget instanceof WidgetContainer) {
                    ((WidgetContainer) constraintWidget).layout();
                }
            }
        }
    }

    public final void resetSolverVariables(Cache cache) {
        super.resetSolverVariables(cache);
        int size = this.mChildren.size();
        for (int i = 0; i < size; i++) {
            ((ConstraintWidget) this.mChildren.get(i)).resetSolverVariables(cache);
        }
    }

    public final void removeAllChildren() {
        this.mChildren.clear();
    }
}
