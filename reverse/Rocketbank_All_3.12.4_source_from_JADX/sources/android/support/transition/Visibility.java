package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.support.transition.Transition.TransitionListener;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public abstract class Visibility extends Transition {
    private static final String[] sTransitionProperties = new String[]{"android:visibility:visibility", "android:visibility:parent"};
    private int mMode = 3;

    static class VisibilityInfo {
        ViewGroup mEndParent;
        int mEndVisibility;
        boolean mFadeIn;
        ViewGroup mStartParent;
        int mStartVisibility;
        boolean mVisibilityChange;

        private VisibilityInfo() {
        }
    }

    static class DisappearListener extends AnimatorListenerAdapter implements AnimatorPauseListenerCompat, TransitionListener {
        boolean mCanceled = false;
        private final int mFinalVisibility;
        private boolean mLayoutSuppressed;
        private final ViewGroup mParent;
        private final boolean mSuppressLayout;
        private final View mView;

        public final void onAnimationRepeat(Animator animator) {
        }

        public final void onAnimationStart(Animator animator) {
        }

        public final void onTransitionCancel$30e4fb03() {
        }

        public final void onTransitionStart$30e4fb03() {
        }

        DisappearListener(View view, int i) {
            this.mView = view;
            this.mFinalVisibility = i;
            this.mParent = (ViewGroup) view.getParent();
            this.mSuppressLayout = true;
            if (this.mLayoutSuppressed != 1 && this.mParent != 0) {
                this.mLayoutSuppressed = true;
                ViewGroupUtils.suppressLayout(this.mParent, true);
            }
        }

        public final void onAnimationPause(Animator animator) {
            if (this.mCanceled == null) {
                ViewUtils.setTransitionVisibility(this.mView, this.mFinalVisibility);
            }
        }

        public final void onAnimationResume(Animator animator) {
            if (this.mCanceled == null) {
                ViewUtils.setTransitionVisibility(this.mView, 0);
            }
        }

        public final void onAnimationCancel(Animator animator) {
            this.mCanceled = true;
        }

        public final void onAnimationEnd(Animator animator) {
            hideViewWhenNotCanceled();
        }

        public final void onTransitionEnd(Transition transition) {
            hideViewWhenNotCanceled();
            transition.removeListener(this);
        }

        private void hideViewWhenNotCanceled() {
            if (!this.mCanceled) {
                ViewUtils.setTransitionVisibility(this.mView, this.mFinalVisibility);
                if (this.mParent != null) {
                    this.mParent.invalidate();
                }
            }
            if (this.mLayoutSuppressed && this.mParent != null) {
                this.mLayoutSuppressed = false;
                ViewGroupUtils.suppressLayout(this.mParent, false);
            }
        }

        public final void onTransitionPause$30e4fb03() {
            if (this.mLayoutSuppressed && this.mParent != null) {
                this.mLayoutSuppressed = false;
                ViewGroupUtils.suppressLayout(this.mParent, false);
            }
        }

        public final void onTransitionResume$30e4fb03() {
            if (!this.mLayoutSuppressed && this.mParent != null) {
                this.mLayoutSuppressed = true;
                ViewGroupUtils.suppressLayout(this.mParent, true);
            }
        }
    }

    public Animator onAppear$7a73f915(View view, TransitionValues transitionValues) {
        return null;
    }

    public Animator onDisappear$7a73f915(View view, TransitionValues transitionValues) {
        return null;
    }

    public final void setMode(int i) {
        if ((i & -4) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.mMode = i;
    }

    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    private static void captureValues(TransitionValues transitionValues) {
        transitionValues.values.put("android:visibility:visibility", Integer.valueOf(transitionValues.view.getVisibility()));
        transitionValues.values.put("android:visibility:parent", transitionValues.view.getParent());
        Object obj = new int[2];
        transitionValues.view.getLocationOnScreen(obj);
        transitionValues.values.put("android:visibility:screenLocation", obj);
    }

    public void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    public void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    private static VisibilityInfo getVisibilityChangeInfo(TransitionValues transitionValues, TransitionValues transitionValues2) {
        VisibilityInfo visibilityInfo = new VisibilityInfo();
        visibilityInfo.mVisibilityChange = false;
        visibilityInfo.mFadeIn = false;
        if (transitionValues == null || !transitionValues.values.containsKey("android:visibility:visibility")) {
            visibilityInfo.mStartVisibility = -1;
            visibilityInfo.mStartParent = null;
        } else {
            visibilityInfo.mStartVisibility = ((Integer) transitionValues.values.get("android:visibility:visibility")).intValue();
            visibilityInfo.mStartParent = (ViewGroup) transitionValues.values.get("android:visibility:parent");
        }
        if (transitionValues2 == null || !transitionValues2.values.containsKey("android:visibility:visibility")) {
            visibilityInfo.mEndVisibility = -1;
            visibilityInfo.mEndParent = null;
        } else {
            visibilityInfo.mEndVisibility = ((Integer) transitionValues2.values.get("android:visibility:visibility")).intValue();
            visibilityInfo.mEndParent = (ViewGroup) transitionValues2.values.get("android:visibility:parent");
        }
        if (transitionValues == null || transitionValues2 == null) {
            if (transitionValues == null && visibilityInfo.mEndVisibility == null) {
                visibilityInfo.mFadeIn = true;
                visibilityInfo.mVisibilityChange = true;
            } else if (transitionValues2 == null && visibilityInfo.mStartVisibility == null) {
                visibilityInfo.mFadeIn = false;
                visibilityInfo.mVisibilityChange = true;
            }
        } else if (visibilityInfo.mStartVisibility == visibilityInfo.mEndVisibility && visibilityInfo.mStartParent == visibilityInfo.mEndParent) {
            return visibilityInfo;
        } else {
            if (visibilityInfo.mStartVisibility != visibilityInfo.mEndVisibility) {
                if (visibilityInfo.mStartVisibility == null) {
                    visibilityInfo.mFadeIn = false;
                    visibilityInfo.mVisibilityChange = true;
                } else if (visibilityInfo.mEndVisibility == null) {
                    visibilityInfo.mFadeIn = true;
                    visibilityInfo.mVisibilityChange = true;
                }
            } else if (visibilityInfo.mEndParent == null) {
                visibilityInfo.mFadeIn = false;
                visibilityInfo.mVisibilityChange = true;
            } else if (visibilityInfo.mStartParent == null) {
                visibilityInfo.mFadeIn = true;
                visibilityInfo.mVisibilityChange = true;
            }
        }
        return visibilityInfo;
    }

    public Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        Visibility visibility = this;
        View view = viewGroup;
        TransitionValues transitionValues3 = transitionValues;
        TransitionValues transitionValues4 = transitionValues2;
        VisibilityInfo visibilityChangeInfo = getVisibilityChangeInfo(transitionValues, transitionValues2);
        View view2 = null;
        if (!visibilityChangeInfo.mVisibilityChange || (visibilityChangeInfo.mStartParent == null && visibilityChangeInfo.mEndParent == null)) {
            return null;
        }
        if (visibilityChangeInfo.mFadeIn) {
            if ((visibility.mMode & 1) == 1) {
                if (transitionValues4 != null) {
                    if (transitionValues3 == null) {
                        view = (View) transitionValues4.view.getParent();
                        if (getVisibilityChangeInfo(getMatchedTransitionValues(view, false), getTransitionValues(view, false)).mVisibilityChange) {
                            return null;
                        }
                    }
                    return onAppear$7a73f915(transitionValues4.view, transitionValues3);
                }
            }
            return null;
        }
        Animator animator;
        int i = visibilityChangeInfo.mEndVisibility;
        if ((visibility.mMode & 2) == 2) {
            int i2;
            Animator onDisappear$7a73f915;
            int visibility2;
            TransitionListener disappearListener;
            View view3 = transitionValues3 != null ? transitionValues3.view : null;
            View view4 = transitionValues4 != null ? transitionValues4.view : null;
            if (view4 != null) {
                if (view4.getParent() != null) {
                    if (i != 4) {
                        if (view3 == view4) {
                        }
                        view2 = view3;
                        view4 = null;
                    }
                    if (view2 == null && transitionValues3 != null) {
                        int[] iArr = (int[]) transitionValues3.values.get("android:visibility:screenLocation");
                        int i3 = iArr[0];
                        i2 = iArr[1];
                        int[] iArr2 = new int[2];
                        view.getLocationOnScreen(iArr2);
                        view2.offsetLeftAndRight((i3 - iArr2[0]) - view2.getLeft());
                        view2.offsetTopAndBottom((i2 - iArr2[1]) - view2.getTop());
                        final ViewGroupOverlayImpl overlay = ViewGroupUtils.getOverlay(viewGroup);
                        overlay.add(view2);
                        onDisappear$7a73f915 = onDisappear$7a73f915(view2, transitionValues3);
                        if (onDisappear$7a73f915 == null) {
                            overlay.remove(view2);
                        } else {
                            onDisappear$7a73f915.addListener(new AnimatorListenerAdapter() {
                                public final void onAnimationEnd(Animator animator) {
                                    overlay.remove(view2);
                                }
                            });
                        }
                        return onDisappear$7a73f915;
                    } else if (view4 == null) {
                        visibility2 = view4.getVisibility();
                        ViewUtils.setTransitionVisibility(view4, 0);
                        onDisappear$7a73f915 = onDisappear$7a73f915(view4, transitionValues3);
                        if (onDisappear$7a73f915 == null) {
                            disappearListener = new DisappearListener(view4, i);
                            onDisappear$7a73f915.addListener(disappearListener);
                            AnimatorUtils.addPauseListener(onDisappear$7a73f915, disappearListener);
                            addListener(disappearListener);
                        } else {
                            ViewUtils.setTransitionVisibility(view4, visibility2);
                        }
                        return onDisappear$7a73f915;
                    } else {
                        animator = null;
                    }
                }
            }
            if (view4 != null) {
                view2 = view4;
                view4 = null;
            } else {
                if (view3 != null) {
                    if (view3.getParent() != null) {
                        if (view3.getParent() instanceof View) {
                            view4 = (View) view3.getParent();
                            if (getVisibilityChangeInfo(getTransitionValues(view4, true), getMatchedTransitionValues(view4, true)).mVisibilityChange) {
                                if (view4.getParent() == null) {
                                    i2 = view4.getId();
                                    if (!(i2 == -1 || view.findViewById(i2) == null || !visibility.mCanRemoveViews)) {
                                    }
                                }
                                view2 = null;
                            } else {
                                Bitmap bitmap;
                                Matrix matrix = new Matrix();
                                matrix.setTranslate((float) (-view4.getScrollX()), (float) (-view4.getScrollY()));
                                ViewUtils.transformMatrixToGlobal(view3, matrix);
                                ViewUtils.transformMatrixToLocal(view, matrix);
                                RectF rectF = new RectF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, (float) view3.getWidth(), (float) view3.getHeight());
                                matrix.mapRect(rectF);
                                int round = Math.round(rectF.left);
                                int round2 = Math.round(rectF.top);
                                int round3 = Math.round(rectF.right);
                                int round4 = Math.round(rectF.bottom);
                                View imageView = new ImageView(view3.getContext());
                                imageView.setScaleType(ScaleType.CENTER_CROP);
                                int round5 = Math.round(rectF.width());
                                int round6 = Math.round(rectF.height());
                                if (round5 <= 0 || round6 <= 0) {
                                    bitmap = null;
                                } else {
                                    float min = Math.min(1.0f, 1048576.0f / ((float) (round5 * round6)));
                                    round5 = (int) (((float) round5) * min);
                                    int i4 = (int) (((float) round6) * min);
                                    matrix.postTranslate(-rectF.left, -rectF.top);
                                    matrix.postScale(min, min);
                                    bitmap = Bitmap.createBitmap(round5, i4, Config.ARGB_8888);
                                    Canvas canvas = new Canvas(bitmap);
                                    canvas.concat(matrix);
                                    view3.draw(canvas);
                                }
                                if (bitmap != null) {
                                    imageView.setImageBitmap(bitmap);
                                }
                                imageView.measure(MeasureSpec.makeMeasureSpec(round3 - round, 1073741824), MeasureSpec.makeMeasureSpec(round4 - round2, 1073741824));
                                imageView.layout(round, round2, round3, round4);
                                view2 = imageView;
                            }
                            view4 = null;
                        }
                    }
                    view2 = view3;
                    view4 = null;
                }
                view4 = null;
                view2 = null;
            }
            if (view2 == null) {
            }
            if (view4 == null) {
                animator = null;
            } else {
                visibility2 = view4.getVisibility();
                ViewUtils.setTransitionVisibility(view4, 0);
                onDisappear$7a73f915 = onDisappear$7a73f915(view4, transitionValues3);
                if (onDisappear$7a73f915 == null) {
                    ViewUtils.setTransitionVisibility(view4, visibility2);
                } else {
                    disappearListener = new DisappearListener(view4, i);
                    onDisappear$7a73f915.addListener(disappearListener);
                    AnimatorUtils.addPauseListener(onDisappear$7a73f915, disappearListener);
                    addListener(disappearListener);
                }
                return onDisappear$7a73f915;
            }
        }
        animator = null;
        return animator;
    }

    public boolean isTransitionRequired(TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues == null && transitionValues2 == null) {
            return false;
        }
        if (transitionValues != null && transitionValues2 != null && transitionValues2.values.containsKey("android:visibility:visibility") != transitionValues.values.containsKey("android:visibility:visibility")) {
            return false;
        }
        transitionValues = getVisibilityChangeInfo(transitionValues, transitionValues2);
        if (transitionValues.mVisibilityChange == null || (transitionValues.mStartVisibility != null && transitionValues.mEndVisibility != null)) {
            return false;
        }
        return true;
    }
}
