package android.support.transition;

import android.graphics.Matrix;
import android.view.View;

interface ViewUtilsImpl {
    void clearNonTransitionAlpha(View view);

    float getTransitionAlpha(View view);

    WindowIdImpl getWindowId(View view);

    void saveNonTransitionAlpha(View view);

    void setLeftTopRightBottom(View view, int i, int i2, int i3, int i4);

    void setTransitionAlpha(View view, float f);

    void transformMatrixToGlobal(View view, Matrix matrix);

    void transformMatrixToLocal(View view, Matrix matrix);
}
