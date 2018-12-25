package ru.rocketbank.core.widgets;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.support.design.C0039R;
import android.support.design.widget.TextInputLayout;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.support.v4.widget.Space;
import android.support.v7.widget.AppCompatDrawableManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.core.manager.TypefaceManager;
import ru.rocketbank.r2d2.C0859R;

public class RocketTextInputLayout extends LinearLayout {
    private static final int[] APPCOMPAT_CHECK_ATTRS = new int[]{C0039R.attr.colorPrimary};
    static final Interpolator FAST_OUT_SLOW_IN_INTERPOLATOR = new FastOutSlowInInterpolator();
    static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
    private boolean isAnimationRunning;
    private ValueAnimator mAnimator;
    private final CollapsingTextHelper mCollapsingTextHelper;
    private boolean mCounterEnabled;
    private int mCounterMaxLength;
    private int mCounterOverflowTextAppearance;
    private boolean mCounterOverflowed;
    private int mCounterTextAppearance;
    private TextView mCounterView;
    private ColorStateList mDefaultTextColor;
    private EditText mEditText;
    private boolean mErrorEnabled;
    private boolean mErrorShown;
    private int mErrorTextAppearance;
    private RocketTextView mErrorTextView;
    private View mErrorView;
    private ColorStateList mFocusedTextColor;
    private boolean mHasReconstructedEditTextBackground;
    private CharSequence mHint;
    private boolean mHintAnimationEnabled;
    private LinearLayout mIndicatorArea;
    private LayoutInflater mLayoutInflater;
    private Paint mTmpPaint;

    /* renamed from: ru.rocketbank.core.widgets.RocketTextInputLayout$1 */
    class C08451 implements TextWatcher {
        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        C08451() {
        }

        public final void afterTextChanged(Editable editable) {
            RocketTextInputLayout.this.updateLabelVisibility(true);
            if (RocketTextInputLayout.this.mCounterEnabled) {
                RocketTextInputLayout.this.updateCounter(editable.length());
            }
        }
    }

    /* renamed from: ru.rocketbank.core.widgets.RocketTextInputLayout$4 */
    class C08464 implements AnimatorUpdateListener {
        C08464() {
        }

        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            RocketTextInputLayout.this.mCollapsingTextHelper.setExpansionFraction(valueAnimator.getAnimatedFraction());
        }
    }

    /* renamed from: ru.rocketbank.core.widgets.RocketTextInputLayout$5 */
    class C08475 implements AnimatorListener {
        public final void onAnimationCancel(Animator animator) {
        }

        public final void onAnimationRepeat(Animator animator) {
        }

        C08475() {
        }

        public final void onAnimationStart(Animator animator) {
            RocketTextInputLayout.this.isAnimationRunning = true;
        }

        public final void onAnimationEnd(Animator animator) {
            RocketTextInputLayout.this.isAnimationRunning = false;
        }
    }

    class TextInputAccessibilityDelegate extends AccessibilityDelegateCompat {
        private TextInputAccessibilityDelegate() {
        }

        public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(TextInputLayout.class.getSimpleName());
        }

        public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            view = RocketTextInputLayout.this.mCollapsingTextHelper.getText();
            if (!TextUtils.isEmpty(view)) {
                accessibilityEvent.getText().add(view);
            }
        }

        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setClassName(TextInputLayout.class.getSimpleName());
            view = RocketTextInputLayout.this.mCollapsingTextHelper.getText();
            if (!TextUtils.isEmpty(view)) {
                accessibilityNodeInfoCompat.setText(view);
            }
            if (RocketTextInputLayout.this.mEditText != null) {
                accessibilityNodeInfoCompat.setLabelFor(RocketTextInputLayout.this.mEditText);
            }
            view = RocketTextInputLayout.this.mErrorView != null ? RocketTextInputLayout.this.mErrorTextView.getText() : null;
            if (!TextUtils.isEmpty(view)) {
                accessibilityNodeInfoCompat.setContentInvalid(true);
                accessibilityNodeInfoCompat.setError(view);
            }
        }
    }

    /* renamed from: ru.rocketbank.core.widgets.RocketTextInputLayout$2 */
    class C14412 extends ViewPropertyAnimatorListenerAdapter {
        C14412() {
        }

        public final void onAnimationStart(View view) {
            view.setVisibility(0);
        }
    }

    /* renamed from: ru.rocketbank.core.widgets.RocketTextInputLayout$3 */
    class C14423 extends ViewPropertyAnimatorListenerAdapter {
        C14423() {
        }

        public final void onAnimationEnd(View view) {
            view.setVisibility(4);
            RocketTextInputLayout.this.updateLabelVisibility(true);
        }
    }

    public RocketTextInputLayout(Context context) {
        this(context, null);
    }

    public RocketTextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RocketTextInputLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.isAnimationRunning = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(APPCOMPAT_CHECK_ATTRS);
        int hasValue = obtainStyledAttributes.hasValue(0) ^ 1;
        if (obtainStyledAttributes != null) {
            obtainStyledAttributes.recycle();
        }
        if (hasValue != 0) {
            throw new IllegalArgumentException("You need to use a Theme.AppCompat theme (or descendant) with the design library.");
        }
        this.mLayoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        attributeSet = context.obtainStyledAttributes(attributeSet, C1328R.styleable.RocketTextInputLayout, i, C0859R.style.RocketTextInputLayout);
        i = TypefaceManager.getInstance();
        i.getTypeface(context, attributeSet, C1328R.styleable.RocketTextInputLayout_error_font);
        this.mCollapsingTextHelper = new CollapsingTextHelper(this, i.getTypeface(context, attributeSet, C1328R.styleable.RocketTextInputLayout_hint_font));
        this.mCollapsingTextHelper.setTextSizeInterpolator(FAST_OUT_SLOW_IN_INTERPOLATOR);
        this.mCollapsingTextHelper.setPositionInterpolator(new AccelerateInterpolator());
        this.mCollapsingTextHelper.setCollapsedTextGravity$13462e();
        context = attributeSet.getText(C1328R.styleable.RocketTextInputLayout_android_hint);
        this.mHint = context;
        this.mCollapsingTextHelper.setText(context);
        sendAccessibilityEvent(2048);
        this.mHintAnimationEnabled = attributeSet.getBoolean(C1328R.styleable.RocketTextInputLayout_hintAnimationEnabled, true);
        if (attributeSet.hasValue(C1328R.styleable.RocketTextInputLayout_android_textColorHint) != null) {
            context = attributeSet.getColorStateList(C1328R.styleable.RocketTextInputLayout_android_textColorHint);
            this.mFocusedTextColor = context;
            this.mDefaultTextColor = context;
        }
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        if (attributeSet.getResourceId(C1328R.styleable.RocketTextInputLayout_hintTextAppearance, -1) != -1) {
            this.mCollapsingTextHelper.setCollapsedTextAppearance(attributeSet.getResourceId(C1328R.styleable.RocketTextInputLayout_hintTextAppearance, 0));
            this.mFocusedTextColor = ColorStateList.valueOf(this.mCollapsingTextHelper.getCollapsedTextColor());
            if (this.mEditText != null) {
                updateLabelVisibility(false);
                this.mEditText.setLayoutParams(updateEditTextMargin(this.mEditText.getLayoutParams()));
                this.mEditText.requestLayout();
            }
        }
        this.mErrorTextAppearance = attributeSet.getResourceId(C1328R.styleable.RocketTextInputLayout_errorTextAppearance, 0);
        context = attributeSet.getBoolean(C1328R.styleable.RocketTextInputLayout_errorEnabled, false);
        boolean z = attributeSet.getBoolean(C1328R.styleable.RocketTextInputLayout_counterEnabled, false);
        hasValue = attributeSet.getInt(C1328R.styleable.RocketTextInputLayout_counterMaxLength, -1);
        if (this.mCounterMaxLength != hasValue) {
            if (hasValue > 0) {
                this.mCounterMaxLength = hasValue;
            } else {
                this.mCounterMaxLength = -1;
            }
            if (this.mCounterEnabled) {
                updateCounter(this.mEditText == null ? 0 : this.mEditText.getText().length());
            }
        }
        this.mCounterTextAppearance = attributeSet.getResourceId(C1328R.styleable.RocketTextInputLayout_counterTextAppearance, 0);
        this.mCounterOverflowTextAppearance = attributeSet.getResourceId(C1328R.styleable.RocketTextInputLayout_counterOverflowTextAppearance, 0);
        attributeSet.recycle();
        setErrorEnabled(context);
        if (this.mCounterEnabled != z) {
            if (z) {
                this.mCounterView = new TextView(getContext());
                this.mCounterView.setMaxLines(1);
                this.mCounterView.setTextAppearance(getContext(), this.mCounterTextAppearance);
                ViewCompat.setAccessibilityLiveRegion(this.mCounterView, 1);
                addIndicator(this.mCounterView, -1);
                if (this.mEditText == null) {
                    updateCounter(0);
                } else {
                    updateCounter(this.mEditText.getText().length());
                }
            } else {
                removeIndicator(this.mCounterView);
                this.mCounterView = null;
            }
            this.mCounterEnabled = z;
        }
        if (ViewCompat.getImportantForAccessibility(this) == null) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
        ViewCompat.setAccessibilityDelegate(this, new TextInputAccessibilityDelegate());
    }

    public void addView(View view, int i, LayoutParams layoutParams) {
        if (view instanceof EditText) {
            EditText editText = (EditText) view;
            if (this.mEditText != null) {
                throw new IllegalArgumentException("We already have an EditText, can only have one");
            }
            this.mEditText = editText;
            this.mCollapsingTextHelper.setTypefaces(this.mEditText.getTypeface());
            this.mCollapsingTextHelper.setExpandedTextSize(this.mEditText.getTextSize());
            this.mCollapsingTextHelper.setExpandedTextGravity(this.mEditText.getGravity());
            this.mEditText.addTextChangedListener(new C08451());
            if (this.mDefaultTextColor == 0) {
                this.mDefaultTextColor = this.mEditText.getHintTextColors();
            }
            if (TextUtils.isEmpty(this.mHint) != 0) {
                i = this.mEditText.getHint();
                this.mHint = i;
                this.mCollapsingTextHelper.setText(i);
                sendAccessibilityEvent(2048);
                this.mEditText.setHint(null);
            }
            if (this.mCounterView != 0) {
                updateCounter(this.mEditText.getText().length());
            }
            if (this.mIndicatorArea != 0) {
                ViewCompat.setPaddingRelative(this.mIndicatorArea, ViewCompat.getPaddingStart(this.mEditText), 0, ViewCompat.getPaddingEnd(this.mEditText), this.mEditText.getPaddingBottom());
            }
            updateLabelVisibility(false);
            super.addView(view, 0, updateEditTextMargin(layoutParams));
            return;
        }
        super.addView(view, i, layoutParams);
    }

    private LinearLayout.LayoutParams updateEditTextMargin(LayoutParams layoutParams) {
        layoutParams = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams);
        if (this.mTmpPaint == null) {
            this.mTmpPaint = new Paint();
        }
        this.mTmpPaint.setTypeface(this.mCollapsingTextHelper.getCollapsedTypeface());
        this.mTmpPaint.setTextSize(this.mCollapsingTextHelper.getCollapsedTextSize());
        layoutParams.topMargin = (int) (-this.mTmpPaint.ascent());
        return layoutParams;
    }

    private void updateLabelVisibility(boolean z) {
        int i = 0;
        int i2 = (this.mEditText == null || TextUtils.isEmpty(this.mEditText.getText())) ? 0 : 1;
        for (int i3 : getDrawableState()) {
            if (i3 == 16842908) {
                i = 1;
                break;
            }
        }
        CharSequence text = (this.mErrorEnabled && this.mErrorView != null && this.mErrorView.getVisibility() == 0) ? this.mErrorTextView.getText() : null;
        int isEmpty = 1 ^ TextUtils.isEmpty(text);
        if (this.mDefaultTextColor != null) {
            this.mCollapsingTextHelper.setExpandedTextColor(this.mDefaultTextColor.getDefaultColor());
        }
        if (this.mCounterOverflowed && this.mCounterView != null) {
            this.mCollapsingTextHelper.setCollapsedTextColor(this.mCounterView.getCurrentTextColor());
        } else if (isEmpty != 0 && this.mErrorView != null) {
            this.mCollapsingTextHelper.setCollapsedTextColor(this.mErrorTextView.getCurrentTextColor());
        } else if (i != 0 && this.mFocusedTextColor != null) {
            this.mCollapsingTextHelper.setCollapsedTextColor(this.mFocusedTextColor.getDefaultColor());
        } else if (this.mDefaultTextColor != null) {
            this.mCollapsingTextHelper.setCollapsedTextColor(this.mDefaultTextColor.getDefaultColor());
        }
        if (i2 == 0 && i == 0) {
            if (isEmpty == 0) {
                if (this.mAnimator != null && this.isAnimationRunning) {
                    this.mAnimator.cancel();
                }
                if (z && this.mHintAnimationEnabled) {
                    animateToExpansionFraction(BitmapDescriptorFactory.HUE_RED);
                    return;
                } else {
                    this.mCollapsingTextHelper.setExpansionFraction(BitmapDescriptorFactory.HUE_RED);
                    return;
                }
            }
        }
        if (this.mAnimator != null && this.isAnimationRunning) {
            this.mAnimator.cancel();
        }
        if (z && this.mHintAnimationEnabled) {
            animateToExpansionFraction(1.0f);
        } else {
            this.mCollapsingTextHelper.setExpansionFraction(1.0f);
        }
    }

    public final void setHint(CharSequence charSequence) {
        this.mHint = charSequence;
        this.mCollapsingTextHelper.setText(charSequence);
        sendAccessibilityEvent(2048);
    }

    private void addIndicator(View view, int i) {
        if (this.mIndicatorArea == null) {
            this.mIndicatorArea = new LinearLayout(getContext());
            this.mIndicatorArea.setOrientation(0);
            addView(this.mIndicatorArea, -1, -2);
            this.mIndicatorArea.addView(new Space(getContext(), '\u0000'), new LinearLayout.LayoutParams(0, 0, 1.0f));
            if (this.mEditText != null) {
                ViewCompat.setPaddingRelative(this.mIndicatorArea, ViewCompat.getPaddingStart(this.mEditText), 0, ViewCompat.getPaddingEnd(this.mEditText), this.mEditText.getPaddingBottom());
            }
        }
        this.mIndicatorArea.setVisibility(0);
        this.mIndicatorArea.addView(view, i);
    }

    private void removeIndicator(View view) {
        if (this.mIndicatorArea != null) {
            this.mIndicatorArea.removeView(view);
            if (this.mIndicatorArea.getChildCount() == null) {
                this.mIndicatorArea.setVisibility(8);
            }
        }
    }

    public final void setErrorEnabled(boolean z) {
        if (this.mErrorEnabled != z) {
            if (this.mErrorView != null) {
                ViewCompat.animate(this.mErrorView).cancel();
            }
            if (z) {
                this.mErrorView = this.mLayoutInflater.inflate(C0859R.layout.text_layout_error, this, false);
                this.mErrorTextView = (RocketTextView) this.mErrorView.findViewById(C0859R.id.errorText);
                this.mErrorTextView.setTextAppearance(getContext(), this.mErrorTextAppearance);
                this.mErrorView.setVisibility(4);
                ViewCompat.setAccessibilityLiveRegion(this.mErrorView, 1);
                addIndicator(this.mErrorView, 0);
            } else {
                this.mErrorShown = false;
                updateEditTextBackground();
                removeIndicator(this.mErrorView);
                this.mErrorView = null;
            }
            this.mErrorEnabled = z;
        }
    }

    public final void setError(CharSequence charSequence) {
        if (!this.mErrorEnabled) {
            if (!TextUtils.isEmpty(charSequence)) {
                setErrorEnabled(true);
            } else {
                return;
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            if (this.mErrorView.getVisibility() == null) {
                ViewCompat.animate(this.mErrorView).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(200).setInterpolator(FAST_OUT_SLOW_IN_INTERPOLATOR).setListener(new C14423()).start();
                this.mErrorShown = null;
                updateEditTextBackground();
            }
            return;
        }
        ViewCompat.setAlpha(this.mErrorView, BitmapDescriptorFactory.HUE_RED);
        this.mErrorTextView.setText(charSequence);
        ViewCompat.animate(this.mErrorView).alpha(1.0f).setDuration(200).setInterpolator(FAST_OUT_SLOW_IN_INTERPOLATOR).setListener(new C14412()).start();
        this.mErrorShown = true;
        updateEditTextBackground();
        updateLabelVisibility(true);
    }

    private void updateCounter(int i) {
        boolean z = this.mCounterOverflowed;
        if (this.mCounterMaxLength == -1) {
            this.mCounterView.setText(String.valueOf(i));
            this.mCounterOverflowed = false;
        } else {
            this.mCounterOverflowed = i > this.mCounterMaxLength;
            if (z != this.mCounterOverflowed) {
                this.mCounterView.setTextAppearance(getContext(), this.mCounterOverflowed ? this.mCounterOverflowTextAppearance : this.mCounterTextAppearance);
            }
            this.mCounterView.setText(getContext().getString(C0039R.string.character_counter_pattern, new Object[]{Integer.valueOf(i), Integer.valueOf(this.mCounterMaxLength)}));
        }
        if (this.mEditText != 0 && z != this.mCounterOverflowed) {
            updateLabelVisibility(false);
            updateEditTextBackground();
        }
    }

    private void ensureBackgroundDrawableStateWorkaround() {
        Drawable background = this.mEditText.getBackground();
        if (!(background == null || this.mHasReconstructedEditTextBackground)) {
            Drawable newDrawable = background.getConstantState().newDrawable();
            if (background instanceof DrawableContainer) {
                this.mHasReconstructedEditTextBackground = DrawableUtils.setContainerConstantState((DrawableContainer) background, newDrawable.getConstantState());
            }
            if (!this.mHasReconstructedEditTextBackground) {
                this.mEditText.setBackgroundDrawable(newDrawable);
                this.mHasReconstructedEditTextBackground = true;
            }
        }
    }

    private void updateEditTextBackground() {
        ensureBackgroundDrawableStateWorkaround();
        Drawable background = this.mEditText.getBackground();
        if (background != null) {
            if (this.mErrorShown && this.mErrorView != null) {
                background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(this.mErrorTextView.getCurrentTextColor(), Mode.SRC_IN));
            } else if (!this.mCounterOverflowed || this.mCounterView == null) {
                background.clearColorFilter();
                this.mEditText.refreshDrawableState();
            } else {
                background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(this.mCounterView.getCurrentTextColor(), Mode.SRC_IN));
            }
        }
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        this.mCollapsingTextHelper.draw(canvas);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mEditText) {
            z = this.mEditText.getLeft() + this.mEditText.getCompoundPaddingLeft();
            i = this.mEditText.getRight() - this.mEditText.getCompoundPaddingRight();
            this.mCollapsingTextHelper.setExpandedBounds(z, this.mEditText.getTop() + this.mEditText.getCompoundPaddingTop(), i, this.mEditText.getBottom() - this.mEditText.getCompoundPaddingBottom());
            this.mCollapsingTextHelper.setCollapsedBounds(z, getPaddingTop(), i, (i4 - i2) - getPaddingBottom());
            this.mCollapsingTextHelper.recalculate();
        }
    }

    public void refreshDrawableState() {
        super.refreshDrawableState();
        updateLabelVisibility(ViewCompat.isLaidOut(this));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void animateToExpansionFraction(float r3) {
        /*
        r2 = this;
        r0 = r2.mCollapsingTextHelper;
        r0 = r0.getExpansionFraction();
        r3 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1));
        if (r3 != 0) goto L_0x000b;
    L_0x000a:
        return;
    L_0x000b:
        r3 = r2.mAnimator;
        if (r3 != 0) goto L_0x0036;
    L_0x000f:
        r3 = 2;
        r3 = new float[r3];
        r3 = {0, 1065353216};
        r3 = android.animation.ValueAnimator.ofFloat(r3);
        r2.mAnimator = r3;
        r3 = r2.mAnimator;
        r0 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        r3.setDuration(r0);
        r3 = r2.mAnimator;
        r0 = new ru.rocketbank.core.widgets.RocketTextInputLayout$4;
        r0.<init>();
        r3.addUpdateListener(r0);
        r3 = r2.mAnimator;
        r0 = new ru.rocketbank.core.widgets.RocketTextInputLayout$5;
        r0.<init>();
        r3.addListener(r0);
    L_0x0036:
        r3 = r2.mCollapsingTextHelper;
        r0 = LINEAR_INTERPOLATOR;
        r3.setPositionInterpolator(r0);
        r3 = r2.mAnimator;
        r3.start();
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.widgets.RocketTextInputLayout.animateToExpansionFraction(float):void");
    }
}
