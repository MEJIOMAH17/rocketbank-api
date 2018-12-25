package ru.rocketbank.core.widgets;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.core.widgets.DrawableContainer.DrawableContainerState;

public final class RocketAnimationDrawable extends DrawableContainer implements Animatable, Runnable {
    private OnEndListener endListener;
    private AnimationState mAnimationEndingState;
    private final AnimationState mAnimationState;
    private int mCurFrame;
    private boolean mMutated;

    public interface OnEndListener {
        void stop();
    }

    static final class AnimationState extends DrawableContainerState {
        private int[] mDurations;
        private boolean mOneShot;

        AnimationState(AnimationState animationState, RocketAnimationDrawable rocketAnimationDrawable, Resources resources) {
            super(animationState, rocketAnimationDrawable, resources);
            if (animationState != null) {
                this.mDurations = animationState.mDurations;
                this.mOneShot = animationState.mOneShot;
                return;
            }
            this.mDurations = new int[this.mDrawables.length];
            this.mOneShot = true;
        }

        public final Drawable newDrawable() {
            return new RocketAnimationDrawable(this, null);
        }

        public final Drawable newDrawable(Resources resources) {
            return new RocketAnimationDrawable(this, resources);
        }

        public final void growArray(int i, int i2) {
            super.growArray(i, i2);
            i2 = new int[i2];
            System.arraycopy(this.mDurations, 0, i2, 0, i);
            this.mDurations = i2;
        }

        public final void addFrame(Drawable drawable, int i) {
            int i2 = this.mNumChildren;
            if (i2 >= this.mDrawables.length) {
                growArray(i2, i2 + 10);
            }
            drawable.setVisible(false, true);
            drawable.setCallback(this.mOwner);
            this.mDrawables[i2] = drawable;
            this.mNumChildren++;
            this.mChildrenChangingConfigurations = drawable.getChangingConfigurations() | this.mChildrenChangingConfigurations;
            this.mHaveStateful = false;
            this.mConstantPadding = null;
            this.mPaddingChecked = false;
            this.mComputedConstantSize = false;
            this.mDurations[i2] = i;
        }
    }

    public final void setEndListener(OnEndListener onEndListener) {
        this.endListener = onEndListener;
    }

    public RocketAnimationDrawable() {
        this(null, null);
    }

    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (!z) {
            unscheduleSelf(this);
        } else if (visible || z2) {
            setFrame(false, true, true);
        }
        return visible;
    }

    public final void start() {
        if (!isRunning()) {
            run();
        }
    }

    public final void stop() {
        if (isRunning()) {
            unscheduleSelf(this);
        }
    }

    public final boolean isRunning() {
        return this.mCurFrame >= 0;
    }

    public final void unscheduleSelf(Runnable runnable) {
        this.mCurFrame = -1;
        super.unscheduleSelf(runnable);
    }

    public final void setOneShot(boolean z) {
        this.mAnimationState.mOneShot = z;
    }

    public final void addEndingFrame(Drawable drawable, int i) {
        this.mAnimationEndingState.addFrame(drawable, i);
    }

    public final void addFrame(Drawable drawable, int i) {
        this.mAnimationState.addFrame(drawable, i);
        if (this.mCurFrame < null) {
            setFrame(0, true, false);
        }
    }

    private void setFrame(int i, boolean z, boolean z2) {
        if (i < this.mAnimationState.mNumChildren) {
            this.mCurFrame = i;
            selectDrawable(i);
            if (z) {
                unscheduleSelf(this);
            }
            if (z2) {
                this.mCurFrame = i;
                scheduleSelf(this, SystemClock.uptimeMillis() + ((long) this.mAnimationState.mDurations[i]));
            }
        }
    }

    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, C1328R.styleable.RocketAnimationDrawable);
        setVisible(obtainAttributes.getBoolean(C1328R.styleable.RocketAnimationDrawable_visible, isVisible()), true);
        this.mAnimationState.mVariablePadding = obtainAttributes.getBoolean(C1328R.styleable.RocketAnimationDrawable_variablePadding, false);
        this.mAnimationState.mOneShot = obtainAttributes.getBoolean(C1328R.styleable.RocketAnimationDrawable_oneshot, false);
        obtainAttributes.recycle();
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                break;
            }
            int depth2 = xmlPullParser.getDepth();
            if (depth2 < depth && next == 3) {
                break;
            } else if (next == 2 && depth2 <= depth && xmlPullParser.getName().equals("item")) {
                TypedArray obtainAttributes2 = resources.obtainAttributes(attributeSet, C1328R.styleable.RocketAnimationDrawableItem);
                depth2 = obtainAttributes2.getInt(C1328R.styleable.RocketAnimationDrawableItem_duration, -1);
                if (depth2 < 0) {
                    attributeSet = new StringBuilder();
                    attributeSet.append(xmlPullParser.getPositionDescription());
                    attributeSet.append(": <item> tag requires a 'duration' attribute");
                    throw new XmlPullParserException(attributeSet.toString());
                }
                Drawable drawable;
                int resourceId = obtainAttributes2.getResourceId(C1328R.styleable.RocketAnimationDrawableItem_drawable, 0);
                obtainAttributes2.recycle();
                if (resourceId != 0) {
                    drawable = resources.getDrawable(resourceId);
                } else {
                    do {
                        next = xmlPullParser.next();
                    } while (next == 4);
                    if (next != 2) {
                        attributeSet = new StringBuilder();
                        attributeSet.append(xmlPullParser.getPositionDescription());
                        attributeSet.append(": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                        throw new XmlPullParserException(attributeSet.toString());
                    }
                    drawable = createFromXmlInner(resources, xmlPullParser, attributeSet);
                }
                this.mAnimationState.addFrame(drawable, depth2);
                if (drawable != null) {
                    drawable.setCallback(this);
                }
            }
        }
        setFrame(0, true, false);
    }

    public final Drawable mutate() {
        if (!this.mMutated && super.mutate() == this) {
            this.mAnimationState.mDurations = (int[]) this.mAnimationState.mDurations.clone();
            this.mMutated = true;
        }
        return this;
    }

    public final void swithEnding() {
        super.swithEnding();
    }

    private RocketAnimationDrawable(AnimationState animationState, Resources resources) {
        this.mCurFrame = -1;
        DrawableContainerState animationState2 = new AnimationState(animationState, this, resources);
        this.mAnimationState = animationState2;
        this.mAnimationEndingState = new AnimationState(null, this, null);
        setConstantEndingState(this.mAnimationEndingState);
        setConstantState(animationState2);
        if (animationState != null) {
            setFrame(0, true, false);
        }
    }

    public final void run() {
        boolean z = false;
        boolean z2 = true;
        int i;
        int i2;
        if (this.mIshowingEnding) {
            i = this.mCurFrame + 1;
            i2 = this.mAnimationEndingState.mNumChildren;
            if (i >= i2) {
                i = 0;
            }
            if (!this.mAnimationEndingState.mOneShot || i < i2 - 1) {
                z = true;
            }
            if (i < this.mAnimationEndingState.mNumChildren) {
                this.mCurFrame = i;
                selectDrawable(i);
                if (z) {
                    this.mCurFrame = i;
                    scheduleSelf(this, SystemClock.uptimeMillis() + ((long) this.mAnimationEndingState.mDurations[i]));
                }
            }
            if (this.mAnimationEndingState.mOneShot && i >= i2 - 1 && this.endListener != null) {
                this.endListener.stop();
            }
            return;
        }
        i = this.mCurFrame + 1;
        i2 = this.mAnimationState.mNumChildren;
        if (i >= i2) {
            i = 0;
        }
        if (this.mAnimationState.mOneShot) {
            if (i >= i2 - 1) {
                z2 = false;
            }
        }
        setFrame(i, false, z2);
    }
}
