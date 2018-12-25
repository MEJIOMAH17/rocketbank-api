package android.support.transition;

import android.view.View;

class ViewUtilsApi18 extends ViewUtilsApi14 {
    ViewUtilsApi18() {
    }

    public final WindowIdImpl getWindowId(View view) {
        return new WindowIdApi18(view);
    }
}
