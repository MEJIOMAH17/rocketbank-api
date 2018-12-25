package android.support.constraint;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;

public class Barrier extends ConstraintHelper {
    private android.support.constraint.solver.widgets.Barrier mBarrier;
    private int mIndicatedType = 0;
    private int mResolvedType = 0;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public final int getType() {
        return this.mIndicatedType;
    }

    public final void setType(int i) {
        this.mIndicatedType = i;
        this.mResolvedType = i;
        if (VERSION.SDK_INT >= 17) {
            if ((1 == getResources().getConfiguration().getLayoutDirection() ? 1 : 0) != 0) {
                if (this.mIndicatedType == 5) {
                    this.mResolvedType = 1;
                } else if (this.mIndicatedType == 6) {
                    this.mResolvedType = 0;
                }
            } else if (this.mIndicatedType == 5) {
                this.mResolvedType = 0;
            } else if (this.mIndicatedType == 6) {
                this.mResolvedType = 1;
            }
        } else if (this.mIndicatedType == 5) {
            this.mResolvedType = 0;
        } else if (this.mIndicatedType == 6) {
            this.mResolvedType = 1;
        }
        this.mBarrier.setBarrierType(this.mResolvedType);
    }

    protected final void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        this.mBarrier = new android.support.constraint.solver.widgets.Barrier();
        if (attributeSet != null) {
            attributeSet = getContext().obtainStyledAttributes(attributeSet, C0887R.styleable.ConstraintLayout_Layout);
            int indexCount = attributeSet.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = attributeSet.getIndex(i);
                if (index == C0887R.styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(attributeSet.getInt(index, 0));
                } else if (index == C0887R.styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.mBarrier.setAllowsGoneWidget(attributeSet.getBoolean(index, true));
                }
            }
        }
        this.mHelperWidget = this.mBarrier;
        validateParams();
    }
}
