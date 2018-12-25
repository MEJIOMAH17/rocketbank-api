package ru.rocketbank.core.widgets;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.SwipeDismissBehavior;
import android.support.design.widget.SwipeDismissBehavior.OnDismissListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.core.manager.TypefaceManager;
import ru.rocketbank.r2d2.C0859R;

public final class RocketSnackbar {
    static final Interpolator FAST_OUT_SLOW_IN_INTERPOLATOR = new FastOutSlowInInterpolator();
    private static final Handler sHandler = new Handler(Looper.getMainLooper(), new C08411());
    private final Context mContext;
    private int mDuration;
    private final Callback mManagerCallback = new C13413();
    private final ViewGroup mTargetParent;
    private final SnackbarLayout mView;

    /* renamed from: ru.rocketbank.core.widgets.RocketSnackbar$1 */
    static class C08411 implements android.os.Handler.Callback {
        C08411() {
        }

        public final boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    ((RocketSnackbar) message.obj).showView();
                    return true;
                case 1:
                    ((RocketSnackbar) message.obj).hideView(message.arg1);
                    return true;
                default:
                    return null;
            }
        }
    }

    /* renamed from: ru.rocketbank.core.widgets.RocketSnackbar$8 */
    class C08448 implements AnimationListener {
        public final void onAnimationRepeat(Animation animation) {
        }

        public final void onAnimationStart(Animation animation) {
        }

        C08448() {
        }

        public final void onAnimationEnd(Animation animation) {
            null;
            SnackbarManager.getInstance().onShown(RocketSnackbar.this.mManagerCallback);
        }
    }

    public static abstract class Callback<T> {
        public abstract String[] getPropagationProperties();

        public abstract long getStartDelay$1c0cff52();

        public abstract Object yield$55fbe4a6();
    }

    public static class SnackbarLayout extends LinearLayout {
        private Button mActionView;
        private int mMaxInlineActionWidth;
        private int mMaxWidth;
        private TextView mMessageView;
        private OnAttachStateChangeListener mOnAttachStateChangeListener;
        private OnLayoutChangeListener mOnLayoutChangeListener;

        interface OnAttachStateChangeListener {
            void onViewDetachedFromWindow$3c7ec8c3();
        }

        interface OnLayoutChangeListener {
            void onLayoutChange$5b6f797d();
        }

        public SnackbarLayout(Context context) {
            this(context, null);
        }

        public SnackbarLayout(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            attributeSet = context.obtainStyledAttributes(attributeSet, C1328R.styleable.SnackbarLayout);
            this.mMaxWidth = attributeSet.getDimensionPixelSize(C1328R.styleable.SnackbarLayout_android_maxWidth, -1);
            this.mMaxInlineActionWidth = attributeSet.getDimensionPixelSize(C1328R.styleable.SnackbarLayout_maxActionInlineWidth, -1);
            if (attributeSet.hasValue(C1328R.styleable.SnackbarLayout_elevation)) {
                ViewCompat.setElevation(this, (float) attributeSet.getDimensionPixelSize(C1328R.styleable.SnackbarLayout_elevation, 0));
            }
            attributeSet.recycle();
            setClickable(true);
            LayoutInflater.from(context).inflate(C0859R.layout.design_layout_snackbar_include, this);
            ViewCompat.setAccessibilityLiveRegion(this, 1);
        }

        protected void onFinishInflate() {
            super.onFinishInflate();
            this.mMessageView = (TextView) findViewById(C0859R.id.snackbar_text);
            this.mActionView = (Button) findViewById(C0859R.id.snackbar_action);
        }

        final TextView getMessageView() {
            return this.mMessageView;
        }

        final Button getActionView() {
            return this.mActionView;
        }

        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (this.mMaxWidth > 0 && getMeasuredWidth() > this.mMaxWidth) {
                i = MeasureSpec.makeMeasureSpec(this.mMaxWidth, 1073741824);
                super.onMeasure(i, i2);
            }
            int dimensionPixelSize = getResources().getDimensionPixelSize(C0859R.dimen.design_snackbar_padding_vertical_2lines);
            int dimensionPixelSize2 = getResources().getDimensionPixelSize(C0859R.dimen.design_snackbar_padding_vertical);
            int i3 = 1;
            int i4 = this.mMessageView.getLayout().getLineCount() > 1 ? 1 : 0;
            if (i4 == 0 || this.mMaxInlineActionWidth <= 0 || this.mActionView.getMeasuredWidth() <= this.mMaxInlineActionWidth) {
                if (i4 == 0) {
                    dimensionPixelSize = dimensionPixelSize2;
                }
                if (updateViewsWithinLayout(0, dimensionPixelSize, dimensionPixelSize)) {
                    if (i3 == 0) {
                        super.onMeasure(i, i2);
                    }
                }
            } else if (updateViewsWithinLayout(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
                if (i3 == 0) {
                    super.onMeasure(i, i2);
                }
            }
            i3 = 0;
            if (i3 == 0) {
                super.onMeasure(i, i2);
            }
        }

        final void animateChildrenIn$255f295() {
            ViewCompat.setAlpha(this.mMessageView, BitmapDescriptorFactory.HUE_RED);
            ViewCompat.animate(this.mMessageView).alpha(1.0f).setDuration(180).setStartDelay(70).start();
            if (this.mActionView.getVisibility() == 0) {
                ViewCompat.setAlpha(this.mActionView, BitmapDescriptorFactory.HUE_RED);
                ViewCompat.animate(this.mActionView).alpha(1.0f).setDuration(180).setStartDelay(70).start();
            }
        }

        final void animateChildrenOut$255f295() {
            ViewCompat.setAlpha(this.mMessageView, 1.0f);
            ViewCompat.animate(this.mMessageView).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(180).setStartDelay(0).start();
            if (this.mActionView.getVisibility() == 0) {
                ViewCompat.setAlpha(this.mActionView, 1.0f);
                ViewCompat.animate(this.mActionView).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(180).setStartDelay(0).start();
            }
        }

        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (z && this.mOnLayoutChangeListener) {
                this.mOnLayoutChangeListener.onLayoutChange$5b6f797d();
            }
        }

        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
        }

        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.mOnAttachStateChangeListener != null) {
                this.mOnAttachStateChangeListener.onViewDetachedFromWindow$3c7ec8c3();
            }
        }

        final void setOnLayoutChangeListener(OnLayoutChangeListener onLayoutChangeListener) {
            this.mOnLayoutChangeListener = onLayoutChangeListener;
        }

        final void setOnAttachStateChangeListener(OnAttachStateChangeListener onAttachStateChangeListener) {
            this.mOnAttachStateChangeListener = onAttachStateChangeListener;
        }

        private boolean updateViewsWithinLayout(int i, int i2, int i3) {
            if (i != getOrientation()) {
                setOrientation(i);
                i = 1;
            } else {
                i = 0;
            }
            if (this.mMessageView.getPaddingTop() == i2 && this.mMessageView.getPaddingBottom() == i3) {
                return i;
            }
            updateTopBottomPadding(this.mMessageView, i2, i3);
            return 1;
        }

        private static void updateTopBottomPadding(View view, int i, int i2) {
            if (ViewCompat.isPaddingRelative(view)) {
                ViewCompat.setPaddingRelative(view, ViewCompat.getPaddingStart(view), i, ViewCompat.getPaddingEnd(view), i2);
            } else {
                view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
            }
        }
    }

    static class ThemeUtils {
        private static final int[] APPCOMPAT_CHECK_ATTRS = new int[]{C0859R.attr.colorPrimary};

        public static void checkAppCompatTheme(Context context) {
            context = context.obtainStyledAttributes(APPCOMPAT_CHECK_ATTRS);
            int hasValue = context.hasValue(0) ^ 1;
            if (context != null) {
                context.recycle();
            }
            if (hasValue != 0) {
                throw new IllegalArgumentException("You need to use a Theme.AppCompat theme (or descendant) with the design library.");
            }
        }
    }

    /* renamed from: ru.rocketbank.core.widgets.RocketSnackbar$3 */
    class C13413 implements Callback {
        C13413() {
        }

        public final void show() {
            RocketSnackbar.sHandler.sendMessage(RocketSnackbar.sHandler.obtainMessage(0, RocketSnackbar.this));
        }

        public final void dismiss(int i) {
            RocketSnackbar.sHandler.sendMessage(RocketSnackbar.sHandler.obtainMessage(1, i, 0, RocketSnackbar.this));
        }
    }

    /* renamed from: ru.rocketbank.core.widgets.RocketSnackbar$4 */
    class C13424 implements OnDismissListener {
        C13424() {
        }

        public final void onDismiss(View view) {
            SnackbarManager.getInstance().dismiss(RocketSnackbar.this.mManagerCallback, 0);
        }

        public final void onDragStateChanged(int i) {
            switch (i) {
                case 0:
                    SnackbarManager.getInstance().restoreTimeout(RocketSnackbar.this.mManagerCallback);
                    break;
                case 1:
                case 2:
                    SnackbarManager.getInstance().cancelTimeout(RocketSnackbar.this.mManagerCallback);
                    return;
                default:
                    break;
            }
        }
    }

    /* renamed from: ru.rocketbank.core.widgets.RocketSnackbar$5 */
    class C13435 implements OnAttachStateChangeListener {

        /* renamed from: ru.rocketbank.core.widgets.RocketSnackbar$5$1 */
        class C08431 implements Runnable {
            C08431() {
            }

            public final void run() {
                RocketSnackbar.this.onViewHidden$13462e();
            }
        }

        C13435() {
        }

        public final void onViewDetachedFromWindow$3c7ec8c3() {
            if (RocketSnackbar.this.isShownOrQueued()) {
                RocketSnackbar.sHandler.post(new C08431());
            }
        }
    }

    /* renamed from: ru.rocketbank.core.widgets.RocketSnackbar$6 */
    class C13446 implements OnLayoutChangeListener {
        C13446() {
        }

        public final void onLayoutChange$5b6f797d() {
            RocketSnackbar.this.animateViewIn();
            RocketSnackbar.this.mView.setOnLayoutChangeListener(null);
        }
    }

    /* renamed from: ru.rocketbank.core.widgets.RocketSnackbar$7 */
    class C14397 extends ViewPropertyAnimatorListenerAdapter {
        C14397() {
        }

        public final void onAnimationStart(View view) {
            RocketSnackbar.this.mView.animateChildrenIn$255f295();
        }

        public final void onAnimationEnd(View view) {
            null;
            SnackbarManager.getInstance().onShown(RocketSnackbar.this.mManagerCallback);
        }
    }

    final class Behavior extends SwipeDismissBehavior<SnackbarLayout> {
        Behavior() {
        }

        public final /* bridge */ /* synthetic */ boolean onInterceptTouchEvent(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            SnackbarLayout snackbarLayout = (SnackbarLayout) view;
            if (coordinatorLayout.isPointInChildBounds(snackbarLayout, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                int actionMasked = motionEvent.getActionMasked();
                if (actionMasked != 3) {
                    switch (actionMasked) {
                        case 0:
                            SnackbarManager.getInstance().cancelTimeout(RocketSnackbar.this.mManagerCallback);
                            break;
                        case 1:
                            break;
                        default:
                            break;
                    }
                }
                SnackbarManager.getInstance().restoreTimeout(RocketSnackbar.this.mManagerCallback);
            }
            return super.onInterceptTouchEvent(coordinatorLayout, snackbarLayout, motionEvent);
        }

        public final boolean canSwipeDismissView(View view) {
            return view instanceof SnackbarLayout;
        }
    }

    private RocketSnackbar(ViewGroup viewGroup) {
        this.mTargetParent = viewGroup;
        this.mContext = viewGroup.getContext();
        ThemeUtils.checkAppCompatTheme(this.mContext);
        this.mView = (SnackbarLayout) LayoutInflater.from(this.mContext).inflate(C0859R.layout.design_layout_snackbar_custom, this.mTargetParent, false);
    }

    public static RocketSnackbar make(View view, CharSequence charSequence, int i) {
        RocketSnackbar rocketSnackbar = new RocketSnackbar(findSuitableParent(view));
        rocketSnackbar.mView.getMessageView().setText(charSequence);
        rocketSnackbar.mDuration = i;
        return rocketSnackbar;
    }

    public static RocketSnackbar make$2c974f84(View view, CharSequence charSequence) {
        Typeface typeface = TypefaceManager.getInstance().getTypeface(7, view.getContext());
        RocketSnackbar rocketSnackbar = new RocketSnackbar(findSuitableParent(view));
        rocketSnackbar.mView.getMessageView().setText(charSequence);
        rocketSnackbar.mDuration = null;
        rocketSnackbar.mView.getMessageView().setTypeface(typeface);
        rocketSnackbar.mView.getActionView().setTypeface(typeface);
        return rocketSnackbar;
    }

    public static RocketSnackbar make(View view, int i, int i2) {
        return make(view, view.getResources().getText(i), i2);
    }

    private static ViewGroup findSuitableParent(View view) {
        ViewGroup viewGroup = null;
        while (!(view instanceof CoordinatorLayout)) {
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    return (ViewGroup) view;
                }
                viewGroup = (ViewGroup) view;
            }
            if (view != null) {
                view = view.getParent();
                if (view instanceof View) {
                    view = view;
                    continue;
                } else {
                    view = null;
                    continue;
                }
            }
            if (view == null) {
                return viewGroup;
            }
        }
        return (ViewGroup) view;
    }

    public final RocketSnackbar setAction(int i, final OnClickListener onClickListener) {
        i = this.mContext.getText(i);
        TextView actionView = this.mView.getActionView();
        if (!TextUtils.isEmpty(i)) {
            if (onClickListener != null) {
                actionView.setVisibility(0);
                actionView.setText(i);
                actionView.setOnClickListener(new OnClickListener() {
                    public final void onClick(View view) {
                        onClickListener.onClick(view);
                        SnackbarManager.getInstance().dismiss(RocketSnackbar.this.mManagerCallback, 1);
                    }
                });
                return this;
            }
        }
        actionView.setVisibility(8);
        actionView.setOnClickListener(0);
        return this;
    }

    public final RocketSnackbar setTextColor(int i) {
        this.mView.getMessageView().setTextColor(i);
        return this;
    }

    public final RocketSnackbar setDuration$63dcf297() {
        this.mDuration = -2;
        return this;
    }

    public final void show() {
        SnackbarManager.getInstance().show(this.mDuration, this.mManagerCallback);
    }

    public final boolean isShownOrQueued() {
        return SnackbarManager.getInstance().isCurrentOrNext(this.mManagerCallback);
    }

    final void showView() {
        if (this.mView.getParent() == null) {
            LayoutParams layoutParams = this.mView.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                android.support.design.widget.CoordinatorLayout.Behavior behavior = new Behavior();
                behavior.setStartAlphaSwipeDistance(0.1f);
                behavior.setEndAlphaSwipeDistance(0.6f);
                behavior.setSwipeDirection(0);
                behavior.setListener(new C13424());
                ((CoordinatorLayout.LayoutParams) layoutParams).setBehavior(behavior);
            }
            this.mTargetParent.addView(this.mView);
        }
        this.mView.setOnAttachStateChangeListener(new C13435());
        if (ViewCompat.isLaidOut(this.mView)) {
            animateViewIn();
        } else {
            this.mView.setOnLayoutChangeListener(new C13446());
        }
    }

    private void animateViewIn() {
        if (VERSION.SDK_INT >= 14) {
            ViewCompat.setTranslationY(this.mView, (float) this.mView.getHeight());
            ViewCompat.animate(this.mView).translationY(BitmapDescriptorFactory.HUE_RED).setInterpolator(FAST_OUT_SLOW_IN_INTERPOLATOR).setDuration(250).setListener(new C14397()).start();
            return;
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(this.mView.getContext(), C0859R.anim.design_snackbar_in);
        loadAnimation.setInterpolator(FAST_OUT_SLOW_IN_INTERPOLATOR);
        loadAnimation.setDuration(250);
        loadAnimation.setAnimationListener(new C08448());
        this.mView.startAnimation(loadAnimation);
    }

    final void hideView(final int i) {
        if (this.mView.getVisibility() == 0) {
            LayoutParams layoutParams = this.mView.getLayoutParams();
            Object obj = null;
            if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
                android.support.design.widget.CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
                if ((behavior instanceof SwipeDismissBehavior) && ((SwipeDismissBehavior) behavior).getDragState() != 0) {
                    obj = 1;
                }
            }
            if (obj == null) {
                if (VERSION.SDK_INT >= 14) {
                    ViewCompat.animate(this.mView).translationY((float) this.mView.getHeight()).setInterpolator(FAST_OUT_SLOW_IN_INTERPOLATOR).setDuration(250).setListener(new ViewPropertyAnimatorListenerAdapter() {
                        public final void onAnimationStart(View view) {
                            RocketSnackbar.this.mView.animateChildrenOut$255f295();
                        }

                        public final void onAnimationEnd(View view) {
                            RocketSnackbar.this.onViewHidden$13462e();
                        }
                    }).start();
                    return;
                }
                Animation loadAnimation = AnimationUtils.loadAnimation(this.mView.getContext(), C0859R.anim.design_snackbar_out);
                loadAnimation.setInterpolator(FAST_OUT_SLOW_IN_INTERPOLATOR);
                loadAnimation.setDuration(250);
                loadAnimation.setAnimationListener(new AnimationListener() {
                    public final void onAnimationRepeat(Animation animation) {
                    }

                    public final void onAnimationStart(Animation animation) {
                    }

                    public final void onAnimationEnd(Animation animation) {
                        RocketSnackbar.this.onViewHidden$13462e();
                    }
                });
                this.mView.startAnimation(loadAnimation);
                return;
            }
        }
        onViewHidden$13462e();
    }

    private void onViewHidden$13462e() {
        SnackbarManager.getInstance().onDismissed(this.mManagerCallback);
        ViewParent parent = this.mView.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.mView);
        }
    }
}
