package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ViewCompat;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;

public final class ChangeBounds extends Transition {
    private static final Property<View, PointF> BOTTOM_RIGHT_ONLY_PROPERTY = new Property<View, PointF>(PointF.class, "bottomRight") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return null;
        }

        public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
            View view = (View) obj;
            PointF pointF = (PointF) obj2;
            ViewUtils.setLeftTopRightBottom(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    };
    private static final Property<ViewBounds, PointF> BOTTOM_RIGHT_PROPERTY = new Property<ViewBounds, PointF>(PointF.class, "bottomRight") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return null;
        }

        public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
            ((ViewBounds) obj).setBottomRight((PointF) obj2);
        }
    };
    private static final Property<Drawable, PointF> DRAWABLE_ORIGIN_PROPERTY = new Property<Drawable, PointF>(PointF.class, "boundsOrigin") {
        private Rect mBounds = new Rect();

        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            ((Drawable) obj).copyBounds(this.mBounds);
            return new PointF((float) this.mBounds.left, (float) this.mBounds.top);
        }

        public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
            Drawable drawable = (Drawable) obj;
            PointF pointF = (PointF) obj2;
            drawable.copyBounds(this.mBounds);
            this.mBounds.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.mBounds);
        }
    };
    private static final Property<View, PointF> POSITION_PROPERTY = new Property<View, PointF>(PointF.class, "position") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return null;
        }

        public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
            View view = (View) obj;
            PointF pointF = (PointF) obj2;
            int round = Math.round(pointF.x);
            obj2 = Math.round(pointF.y);
            ViewUtils.setLeftTopRightBottom(view, round, obj2, view.getWidth() + round, view.getHeight() + obj2);
        }
    };
    private static final Property<View, PointF> TOP_LEFT_ONLY_PROPERTY = new Property<View, PointF>(PointF.class, "topLeft") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return null;
        }

        public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
            View view = (View) obj;
            PointF pointF = (PointF) obj2;
            ViewUtils.setLeftTopRightBottom(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    };
    private static final Property<ViewBounds, PointF> TOP_LEFT_PROPERTY = new Property<ViewBounds, PointF>(PointF.class, "topLeft") {
        public final /* bridge */ /* synthetic */ Object get(Object obj) {
            return null;
        }

        public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
            ((ViewBounds) obj).setTopLeft((PointF) obj2);
        }
    };
    private static RectEvaluator sRectEvaluator = new RectEvaluator();
    private static final String[] sTransitionProperties = new String[]{"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    private boolean mReparent = false;
    private boolean mResizeClip = false;
    private int[] mTempLocation = new int[2];

    static class ViewBounds {
        private int mBottom;
        private int mBottomRightCalls;
        private int mLeft;
        private int mRight;
        private int mTop;
        private int mTopLeftCalls;
        private View mView;

        ViewBounds(View view) {
            this.mView = view;
        }

        final void setTopLeft(PointF pointF) {
            this.mLeft = Math.round(pointF.x);
            this.mTop = Math.round(pointF.y);
            this.mTopLeftCalls++;
            if (this.mTopLeftCalls == this.mBottomRightCalls) {
                setLeftTopRightBottom();
            }
        }

        final void setBottomRight(PointF pointF) {
            this.mRight = Math.round(pointF.x);
            this.mBottom = Math.round(pointF.y);
            this.mBottomRightCalls++;
            if (this.mTopLeftCalls == this.mBottomRightCalls) {
                setLeftTopRightBottom();
            }
        }

        private void setLeftTopRightBottom() {
            ViewUtils.setLeftTopRightBottom(this.mView, this.mLeft, this.mTop, this.mRight, this.mBottom);
            this.mTopLeftCalls = 0;
            this.mBottomRightCalls = 0;
        }
    }

    public final String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    private static void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        if (ViewCompat.isLaidOut(view) || view.getWidth() != 0 || view.getHeight() != 0) {
            transitionValues.values.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            transitionValues.values.put("android:changeBounds:parent", transitionValues.view.getParent());
        }
    }

    public final void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    public final void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    public final Animator createAnimator(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        ChangeBounds changeBounds = this;
        TransitionValues transitionValues3 = transitionValues;
        TransitionValues transitionValues4 = transitionValues2;
        if (transitionValues3 != null) {
            if (transitionValues4 != null) {
                ViewGroup viewGroup2 = (ViewGroup) transitionValues4.values.get("android:changeBounds:parent");
                if (((ViewGroup) transitionValues3.values.get("android:changeBounds:parent")) != null) {
                    if (viewGroup2 != null) {
                        int i;
                        View view = transitionValues4.view;
                        Rect rect = (Rect) transitionValues3.values.get("android:changeBounds:bounds");
                        Rect rect2 = (Rect) transitionValues4.values.get("android:changeBounds:bounds");
                        int i2 = rect.left;
                        int i3 = rect2.left;
                        int i4 = rect.top;
                        int i5 = rect2.top;
                        int i6 = rect.right;
                        int i7 = rect2.right;
                        int i8 = rect.bottom;
                        int i9 = rect2.bottom;
                        int i10 = i6 - i2;
                        int i11 = i8 - i4;
                        int i12 = i7 - i3;
                        int i13 = i9 - i5;
                        Rect rect3 = (Rect) transitionValues3.values.get("android:changeBounds:clip");
                        Rect rect4 = (Rect) transitionValues4.values.get("android:changeBounds:clip");
                        if ((i10 == 0 || i11 == 0) && (i12 == 0 || i13 == 0)) {
                            i = 0;
                        } else {
                            if (i2 == i3) {
                                if (i4 == i5) {
                                    i = 0;
                                    if (!(i6 == i7 && i8 == i9)) {
                                        i++;
                                    }
                                }
                            }
                            i = 1;
                            i++;
                        }
                        if (!(rect3 == null || rect3.equals(rect4)) || (rect3 == null && rect4 != null)) {
                            i++;
                        }
                        int i14 = i;
                        if (i14 > 0) {
                            Animator ofPointF;
                            ViewUtils.setLeftTopRightBottom(view, i2, i4, i6, i8);
                            if (i14 != 2) {
                                changeBounds = this;
                                if (i2 == i3) {
                                    if (i4 == i5) {
                                        ofPointF = ObjectAnimatorUtils.ofPointF(view, BOTTOM_RIGHT_ONLY_PROPERTY, getPathMotion$7a3a016f().getPath((float) i6, (float) i8, (float) i7, (float) i9));
                                    }
                                }
                                ofPointF = ObjectAnimatorUtils.ofPointF(view, TOP_LEFT_ONLY_PROPERTY, getPathMotion$7a3a016f().getPath((float) i2, (float) i4, (float) i3, (float) i5));
                            } else if (i10 == i12 && i11 == i13) {
                                changeBounds = this;
                                ofPointF = ObjectAnimatorUtils.ofPointF(view, POSITION_PROPERTY, getPathMotion$7a3a016f().getPath((float) i2, (float) i4, (float) i3, (float) i5));
                            } else {
                                final ViewBounds viewBounds = new ViewBounds(view);
                                ObjectAnimator ofPointF2 = ObjectAnimatorUtils.ofPointF(viewBounds, TOP_LEFT_PROPERTY, getPathMotion$7a3a016f().getPath((float) i2, (float) i4, (float) i3, (float) i5));
                                ObjectAnimator ofPointF3 = ObjectAnimatorUtils.ofPointF(viewBounds, BOTTOM_RIGHT_PROPERTY, getPathMotion$7a3a016f().getPath((float) i6, (float) i8, (float) i7, (float) i9));
                                Animator animatorSet = new AnimatorSet();
                                animatorSet.playTogether(new Animator[]{ofPointF2, ofPointF3});
                                animatorSet.addListener(new AnimatorListenerAdapter() {
                                    private ViewBounds mViewBounds = viewBounds;
                                });
                                ofPointF = animatorSet;
                            }
                            if (view.getParent() instanceof ViewGroup) {
                                final ViewGroup viewGroup3 = (ViewGroup) view.getParent();
                                ViewGroupUtils.suppressLayout(viewGroup3, true);
                                changeBounds.addListener(new TransitionListenerAdapter() {
                                    boolean mCanceled = null;

                                    public final void onTransitionCancel$30e4fb03() {
                                        ViewGroupUtils.suppressLayout(viewGroup3, false);
                                        this.mCanceled = true;
                                    }

                                    public final void onTransitionEnd(Transition transition) {
                                        if (!this.mCanceled) {
                                            ViewGroupUtils.suppressLayout(viewGroup3, false);
                                        }
                                        transition.removeListener(this);
                                    }

                                    public final void onTransitionPause$30e4fb03() {
                                        ViewGroupUtils.suppressLayout(viewGroup3, false);
                                    }

                                    public final void onTransitionResume$30e4fb03() {
                                        ViewGroupUtils.suppressLayout(viewGroup3, true);
                                    }
                                });
                            }
                            return ofPointF;
                        }
                        changeBounds = this;
                        return null;
                    }
                }
                return null;
            }
        }
        return null;
    }
}
