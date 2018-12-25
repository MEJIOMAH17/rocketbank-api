package com.facebook;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.support.v4.app.Fragment;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.FragmentWrapper;

public abstract class FacebookButtonBase extends Button {
    private String analyticsButtonCreatedEventName;
    private String analyticsButtonTappedEventName;
    private OnClickListener externalOnClickListener;
    private OnClickListener internalOnClickListener;
    private boolean overrideCompoundPadding;
    private int overrideCompoundPaddingLeft;
    private int overrideCompoundPaddingRight;
    private FragmentWrapper parentFragment;

    /* renamed from: com.facebook.FacebookButtonBase$1 */
    class C03501 implements OnClickListener {
        C03501() {
        }

        public void onClick(View view) {
            FacebookButtonBase.this.logButtonTapped(FacebookButtonBase.this.getContext());
            if (FacebookButtonBase.this.internalOnClickListener != null) {
                FacebookButtonBase.this.internalOnClickListener.onClick(view);
                return;
            }
            if (FacebookButtonBase.this.externalOnClickListener != null) {
                FacebookButtonBase.this.externalOnClickListener.onClick(view);
            }
        }
    }

    protected abstract int getDefaultRequestCode();

    protected int getDefaultStyleResource() {
        return 0;
    }

    protected FacebookButtonBase(Context context, AttributeSet attributeSet, int i, int i2, String str, String str2) {
        super(context, attributeSet, 0);
        if (i2 == 0) {
            i2 = getDefaultStyleResource();
        }
        if (i2 == 0) {
            i2 = C0361R.style.com_facebook_button;
        }
        configureButton(context, attributeSet, i, i2);
        this.analyticsButtonCreatedEventName = str;
        this.analyticsButtonTappedEventName = str2;
        setClickable(true);
        setFocusable(true);
    }

    public void setFragment(Fragment fragment) {
        this.parentFragment = new FragmentWrapper(fragment);
    }

    public void setFragment(android.app.Fragment fragment) {
        this.parentFragment = new FragmentWrapper(fragment);
    }

    public Fragment getFragment() {
        return this.parentFragment != null ? this.parentFragment.getSupportFragment() : null;
    }

    public android.app.Fragment getNativeFragment() {
        return this.parentFragment != null ? this.parentFragment.getNativeFragment() : null;
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.externalOnClickListener = onClickListener;
    }

    public int getRequestCode() {
        return getDefaultRequestCode();
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!isInEditMode()) {
            logButtonCreated(getContext());
        }
    }

    protected void onDraw(Canvas canvas) {
        if ((getGravity() & 1) != 0) {
            int compoundPaddingLeft = getCompoundPaddingLeft();
            int compoundPaddingRight = getCompoundPaddingRight();
            int min = Math.min((((getWidth() - (getCompoundDrawablePadding() + compoundPaddingLeft)) - compoundPaddingRight) - measureTextWidth(getText().toString())) / 2, (compoundPaddingLeft - getPaddingLeft()) / 2);
            this.overrideCompoundPaddingLeft = compoundPaddingLeft - min;
            this.overrideCompoundPaddingRight = compoundPaddingRight + min;
            this.overrideCompoundPadding = true;
        }
        super.onDraw(canvas);
        this.overrideCompoundPadding = false;
    }

    public int getCompoundPaddingLeft() {
        return this.overrideCompoundPadding ? this.overrideCompoundPaddingLeft : super.getCompoundPaddingLeft();
    }

    public int getCompoundPaddingRight() {
        return this.overrideCompoundPadding ? this.overrideCompoundPaddingRight : super.getCompoundPaddingRight();
    }

    protected Activity getActivity() {
        Context context = getContext();
        while (true) {
            boolean z = context instanceof Activity;
            if (!z && (context instanceof ContextWrapper)) {
                context = ((ContextWrapper) context).getBaseContext();
            } else if (z) {
                return (Activity) context;
            } else {
                throw new FacebookException("Unable to get Activity.");
            }
        }
        if (z) {
            return (Activity) context;
        }
        throw new FacebookException("Unable to get Activity.");
    }

    protected int measureTextWidth(String str) {
        return (int) Math.ceil((double) getPaint().measureText(str));
    }

    protected void configureButton(Context context, AttributeSet attributeSet, int i, int i2) {
        parseBackgroundAttributes(context, attributeSet, i, i2);
        parseCompoundDrawableAttributes(context, attributeSet, i, i2);
        parseContentAttributes(context, attributeSet, i, i2);
        parseTextAttributes(context, attributeSet, i, i2);
        setupOnClickListener();
    }

    protected void callExternalOnClickListener(View view) {
        if (this.externalOnClickListener != null) {
            this.externalOnClickListener.onClick(view);
        }
    }

    protected void setInternalOnClickListener(OnClickListener onClickListener) {
        this.internalOnClickListener = onClickListener;
    }

    private void logButtonCreated(Context context) {
        AppEventsLogger.newLogger(context).logSdkEvent(this.analyticsButtonCreatedEventName, null, null);
    }

    private void logButtonTapped(Context context) {
        AppEventsLogger.newLogger(context).logSdkEvent(this.analyticsButtonTappedEventName, null, null);
    }

    private void parseBackgroundAttributes(Context context, AttributeSet attributeSet, int i, int i2) {
        if (!isInEditMode()) {
            attributeSet = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842964}, i, i2);
            try {
                if (attributeSet.hasValue(0) != 0) {
                    context = attributeSet.getResourceId(0, 0);
                    if (context != null) {
                        setBackgroundResource(context);
                    } else {
                        setBackgroundColor(attributeSet.getColor(0, 0));
                    }
                } else {
                    setBackgroundColor(ContextCompat.getColor(context, C0361R.color.com_facebook_blue));
                }
                attributeSet.recycle();
            } catch (Throwable th) {
                attributeSet.recycle();
            }
        }
    }

    @SuppressLint({"ResourceType"})
    private void parseCompoundDrawableAttributes(Context context, AttributeSet attributeSet, int i, int i2) {
        context = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16843119, 16843117, 16843120, 16843118, 16843121}, i, i2);
        try {
            setCompoundDrawablesWithIntrinsicBounds(context.getResourceId(0, 0), context.getResourceId(1, 0), context.getResourceId(2, 0), context.getResourceId(3, 0));
            setCompoundDrawablePadding(context.getDimensionPixelSize(4, 0));
        } finally {
            context.recycle();
        }
    }

    private void parseContentAttributes(Context context, AttributeSet attributeSet, int i, int i2) {
        context = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842966, 16842967, 16842968, 16842969}, i, i2);
        try {
            setPadding(context.getDimensionPixelSize(0, 0), context.getDimensionPixelSize(1, 0), context.getDimensionPixelSize(2, 0), context.getDimensionPixelSize(3, 0));
        } finally {
            context.recycle();
        }
    }

    private void parseTextAttributes(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842904}, i, i2);
        try {
            setTextColor(obtainStyledAttributes.getColorStateList(0));
            obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842927}, i, i2);
            try {
                setGravity(obtainStyledAttributes.getInt(0, 17));
                context = context.getTheme().obtainStyledAttributes(attributeSet, new int[]{16842901, 16842903, 16843087}, i, i2);
                try {
                    setTextSize(0, (float) context.getDimensionPixelSize(0, 0));
                    setTypeface(Typeface.defaultFromStyle(context.getInt(1, 1)));
                    setText(context.getString(2));
                } finally {
                    context.recycle();
                }
            } finally {
                obtainStyledAttributes.recycle();
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void setupOnClickListener() {
        super.setOnClickListener(new C03501());
    }
}
