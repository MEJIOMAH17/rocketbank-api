package android.support.constraint.solver.widgets;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public final class ResolutionDimension extends Chain {
    float value = BitmapDescriptorFactory.HUE_RED;

    public final void reset() {
        super.reset();
        this.value = BitmapDescriptorFactory.HUE_RED;
    }

    public final void resolve(int i) {
        if (this.state == 0 || this.value != ((float) i)) {
            this.value = (float) i;
            if (this.state == 1) {
                invalidate();
            }
            didResolve();
        }
    }

    public final void remove() {
        this.state = 2;
    }
}
