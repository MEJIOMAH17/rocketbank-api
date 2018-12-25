package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.appcompat.C0219R;
import android.util.AttributeSet;
import android.widget.TextView;

class AppCompatTextHelperV17 extends AppCompatTextHelper {
    private TintInfo mDrawableEndTint;
    private TintInfo mDrawableStartTint;

    AppCompatTextHelperV17(TextView textView) {
        super(textView);
    }

    void loadFromAttributes(AttributeSet attributeSet, int i) {
        super.loadFromAttributes(attributeSet, i);
        Context context = this.mView.getContext();
        AppCompatDrawableManager appCompatDrawableManager = AppCompatDrawableManager.get();
        attributeSet = context.obtainStyledAttributes(attributeSet, C0219R.styleable.AppCompatTextHelper, i, 0);
        if (attributeSet.hasValue(C0219R.styleable.AppCompatTextHelper_android_drawableStart) != 0) {
            this.mDrawableStartTint = AppCompatTextHelper.createTintInfo(context, appCompatDrawableManager, attributeSet.getResourceId(C0219R.styleable.AppCompatTextHelper_android_drawableStart, 0));
        }
        if (attributeSet.hasValue(C0219R.styleable.AppCompatTextHelper_android_drawableEnd) != 0) {
            this.mDrawableEndTint = AppCompatTextHelper.createTintInfo(context, appCompatDrawableManager, attributeSet.getResourceId(C0219R.styleable.AppCompatTextHelper_android_drawableEnd, 0));
        }
        attributeSet.recycle();
    }

    void applyCompoundDrawablesTints() {
        super.applyCompoundDrawablesTints();
        if (this.mDrawableStartTint != null || this.mDrawableEndTint != null) {
            Drawable[] compoundDrawablesRelative = this.mView.getCompoundDrawablesRelative();
            applyCompoundDrawableTint(compoundDrawablesRelative[0], this.mDrawableStartTint);
            applyCompoundDrawableTint(compoundDrawablesRelative[2], this.mDrawableEndTint);
        }
    }
}
