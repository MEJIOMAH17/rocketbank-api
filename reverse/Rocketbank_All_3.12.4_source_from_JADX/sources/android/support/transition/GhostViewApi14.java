package android.support.transition;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewTreeObserver.OnPreDrawListener;
import ru.rocketbank.r2d2.C0859R;

@SuppressLint({"ViewConstructor"})
class GhostViewApi14 extends View {
    private int mDeltaX;
    private int mDeltaY;
    private final Matrix mMatrix;
    private final OnPreDrawListener mOnPreDrawListener;
    final View mView;

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mView.setTag(C0859R.id.ghost_view, this);
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        getLocationOnScreen(iArr);
        this.mView.getLocationOnScreen(iArr2);
        iArr2[0] = (int) (((float) iArr2[0]) - this.mView.getTranslationX());
        iArr2[1] = (int) (((float) iArr2[1]) - this.mView.getTranslationY());
        this.mDeltaX = iArr2[0] - iArr[0];
        this.mDeltaY = iArr2[1] - iArr[1];
        this.mView.getViewTreeObserver().addOnPreDrawListener(this.mOnPreDrawListener);
        this.mView.setVisibility(4);
    }

    protected void onDetachedFromWindow() {
        this.mView.getViewTreeObserver().removeOnPreDrawListener(this.mOnPreDrawListener);
        this.mView.setVisibility(0);
        this.mView.setTag(C0859R.id.ghost_view, null);
        super.onDetachedFromWindow();
    }

    protected void onDraw(Canvas canvas) {
        this.mMatrix.set(null);
        this.mMatrix.postTranslate((float) this.mDeltaX, (float) this.mDeltaY);
        canvas.setMatrix(this.mMatrix);
        this.mView.draw(canvas);
    }

    public void setVisibility(int i) {
        super.setVisibility(i);
        this.mView.setVisibility(i == 0 ? 4 : 0);
    }
}
