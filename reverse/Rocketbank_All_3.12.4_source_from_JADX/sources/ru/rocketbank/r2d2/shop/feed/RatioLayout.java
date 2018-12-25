package ru.rocketbank.r2d2.shop.feed;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: RatioLayout.kt */
public final class RatioLayout extends FrameLayout {
    public static final Companion Companion = new Companion();
    private static final float DEFAULT_RATIO = 1.0f;
    private HashMap _$_findViewCache;
    private float ratio = DEFAULT_RATIO;

    /* compiled from: RatioLayout.kt */
    public static final class Companion {
        private Companion() {
        }

        public final float getDEFAULT_RATIO() {
            return RatioLayout.DEFAULT_RATIO;
        }
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public RatioLayout(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
    }

    public RatioLayout(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        readAttributes(attributeSet);
    }

    public RatioLayout(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i);
        readAttributes(attributeSet);
    }

    private final void readAttributes(AttributeSet attributeSet) {
        Context context = getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "context");
        attributeSet = context.getTheme().obtainStyledAttributes(attributeSet, C0859R.styleable.RatioLayout, 0, 0);
        try {
            this.ratio = attributeSet.getFloat(0, DEFAULT_RATIO);
        } finally {
            attributeSet.recycle();
        }
    }

    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, MeasureSpec.makeMeasureSpec((int) (((float) MeasureSpec.getSize(i)) * this.ratio), MeasureSpec.getMode(i)));
    }
}
