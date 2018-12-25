package ru.rocketbank.core.widgets;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.content.res.AppCompatResources;
import android.support.v7.widget.AppCompatButton;
import android.util.AttributeSet;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.core.manager.TypefaceManager;

/* compiled from: RocketCompatButton.kt */
public final class RocketCompatButton extends AppCompatButton {
    public RocketCompatButton(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
    }

    public RocketCompatButton(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        init(attributeSet, context);
    }

    public RocketCompatButton(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i);
        init(attributeSet, context);
    }

    private final void init(AttributeSet attributeSet, Context context) {
        if (!isInEditMode()) {
            TypefaceManager.getInstance().setTypeface$6871d432(C1328R.styleable.RocketButton_rocket_font, C1328R.styleable.RocketButton, attributeSet, this);
        }
        if (attributeSet != null) {
            Drawable drawable;
            Drawable drawable2;
            Drawable drawable3;
            attributeSet = context.obtainStyledAttributes(attributeSet, C1328R.styleable.CustomTextView);
            Drawable drawable4 = null;
            if (VERSION.SDK_INT >= 21) {
                context = attributeSet.getDrawable(C1328R.styleable.CustomTextView_drawableLeftCompat);
                drawable = attributeSet.getDrawable(C1328R.styleable.CustomTextView_drawableRightCompat);
                Drawable drawable5 = attributeSet.getDrawable(C1328R.styleable.CustomTextView_drawableBottomCompat);
                drawable4 = attributeSet.getDrawable(C1328R.styleable.CustomTextView_drawableTopCompat);
                drawable2 = drawable;
                drawable3 = drawable5;
                drawable = context;
            } else {
                int resourceId = attributeSet.getResourceId(C1328R.styleable.CustomTextView_drawableLeftCompat, -1);
                int resourceId2 = attributeSet.getResourceId(C1328R.styleable.CustomTextView_drawableRightCompat, -1);
                int resourceId3 = attributeSet.getResourceId(C1328R.styleable.CustomTextView_drawableBottomCompat, -1);
                int resourceId4 = attributeSet.getResourceId(C1328R.styleable.CustomTextView_drawableTopCompat, -1);
                drawable = resourceId != -1 ? AppCompatResources.getDrawable(context, resourceId) : null;
                drawable2 = resourceId2 != -1 ? AppCompatResources.getDrawable(context, resourceId2) : null;
                drawable3 = resourceId3 != -1 ? AppCompatResources.getDrawable(context, resourceId3) : null;
                if (resourceId4 != -1) {
                    drawable4 = AppCompatResources.getDrawable(context, resourceId4);
                }
            }
            setCompoundDrawablesWithIntrinsicBounds(drawable, drawable4, drawable2, drawable3);
            attributeSet.recycle();
        }
    }
}
