package android.support.design.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.design.C0039R;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.view.View;

public final class TabItem extends View {
    final int mCustomLayout;
    final Drawable mIcon;
    final CharSequence mText;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context = TintTypedArray.obtainStyledAttributes(context, attributeSet, C0039R.styleable.TabItem);
        this.mText = context.getText(C0039R.styleable.TabItem_android_text);
        this.mIcon = context.getDrawable(C0039R.styleable.TabItem_android_icon);
        this.mCustomLayout = context.getResourceId(C0039R.styleable.TabItem_android_layout, 0);
        context.recycle();
    }
}
