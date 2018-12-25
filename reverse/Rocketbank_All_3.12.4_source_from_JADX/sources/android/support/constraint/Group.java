package android.support.constraint;

import android.os.Build.VERSION;
import android.support.constraint.ConstraintLayout.LayoutParams;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public class Group extends ConstraintHelper {
    protected final void init(AttributeSet attributeSet) {
        super.init(attributeSet);
        this.mUseViewMeasure = null;
    }

    public final void updatePreLayout(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = VERSION.SDK_INT >= 21 ? getElevation() : BitmapDescriptorFactory.HUE_RED;
        for (int i = 0; i < this.mCount; i++) {
            View view = (View) constraintLayout.mChildrenByIds.get(this.mIds[i]);
            if (view != null) {
                view.setVisibility(visibility);
                if (elevation > BitmapDescriptorFactory.HUE_RED && VERSION.SDK_INT >= 21) {
                    view.setElevation(elevation);
                }
            }
        }
    }

    public final void updatePostLayout$1127aab3() {
        LayoutParams layoutParams = (LayoutParams) getLayoutParams();
        layoutParams.widget.setWidth(0);
        layoutParams.widget.setHeight(0);
    }
}
