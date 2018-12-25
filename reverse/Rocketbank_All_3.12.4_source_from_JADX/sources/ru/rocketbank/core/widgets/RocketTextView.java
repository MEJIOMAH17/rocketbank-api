package ru.rocketbank.core.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.core.manager.TypefaceManager;

/* compiled from: RocketTextView.kt */
public class RocketTextView extends TextView {
    private HashMap _$_findViewCache;

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
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

    public RocketTextView(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
    }

    public RocketTextView(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        init(attributeSet, context);
    }

    public RocketTextView(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i);
        init(attributeSet, context);
    }

    @TargetApi(21)
    public RocketTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i, i2);
        init(attributeSet, context);
    }

    public final void setFontType(int i) {
        if (!isInEditMode()) {
            TypefaceManager.getInstance().getTypeface(i, getContext());
        }
    }

    private final void init(AttributeSet attributeSet, Context context) {
        if (isInEditMode() == null) {
            TypefaceManager.getInstance().setTypeface$6871d432(C1328R.styleable.RocketTextView_rocket_font, C1328R.styleable.RocketTextView, attributeSet, this);
        }
    }
}
