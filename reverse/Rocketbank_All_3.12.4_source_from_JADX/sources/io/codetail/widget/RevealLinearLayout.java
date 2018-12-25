package io.codetail.widget;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.Rect;
import android.view.View;
import android.widget.LinearLayout;
import io.codetail.animation.RevealAnimator;
import io.codetail.animation.RevealAnimator.RevealInfo;
import io.codetail.animation.SupportAnimator;
import io.codetail.animation.ViewAnimationUtils;

public class RevealLinearLayout extends LinearLayout implements RevealAnimator {
    private float mRadius;
    private RevealInfo mRevealInfo;
    private boolean mRunning;
    private final Rect mTargetBounds;

    public final void onRevealAnimationStart() {
        this.mRunning = true;
    }

    public final void onRevealAnimationEnd() {
        this.mRunning = false;
        invalidate(this.mTargetBounds);
    }

    public final void setRevealRadius(float f) {
        this.mRadius = f;
        ((View) this.mRevealInfo.target.get()).getHitRect(this.mTargetBounds);
        invalidate(this.mTargetBounds);
    }

    public final float getRevealRadius() {
        return this.mRadius;
    }

    public final void attachRevealInfo(RevealInfo revealInfo) {
        this.mRevealInfo = revealInfo;
    }

    public final SupportAnimator startReverseAnimation() {
        if (this.mRevealInfo != null) {
            if (!((((View) this.mRevealInfo.target.get()) != null ? 1 : null) == null || this.mRunning)) {
                return ViewAnimationUtils.createCircularReveal((View) this.mRevealInfo.target.get(), this.mRevealInfo.centerX, this.mRevealInfo.centerY, this.mRevealInfo.endRadius, this.mRevealInfo.startRadius);
            }
        }
        return null;
    }

    protected boolean drawChild(Canvas canvas, View view, long j) {
        if (!this.mRunning || view != ((View) this.mRevealInfo.target.get())) {
            return super.drawChild(canvas, view, j);
        }
        int save = canvas.save();
        Path path = null;
        path.reset();
        path.addCircle((float) this.mRevealInfo.centerX, (float) this.mRevealInfo.centerY, this.mRadius, Direction.CW);
        canvas.clipPath(path);
        view = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return view;
    }

    public final void onRevealAnimationCancel() {
        this.mRunning = false;
        invalidate(this.mTargetBounds);
    }
}
