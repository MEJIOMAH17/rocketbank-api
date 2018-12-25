package com.google.maps.android.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.TextView;
import ru.rocketbank.r2d2.C0859R;

public final class IconGenerator {
    private float mAnchorU = 0.5f;
    private float mAnchorV = 1.0f;
    private BubbleDrawable mBackground;
    private ViewGroup mContainer;
    private View mContentView;
    private final Context mContext;
    private RotationLayout mRotationLayout;
    private TextView mTextView;

    public IconGenerator(Context context) {
        this.mContext = context;
        this.mBackground = new BubbleDrawable(this.mContext.getResources());
        this.mContainer = (ViewGroup) LayoutInflater.from(this.mContext).inflate(C0859R.layout.amu_text_bubble, null);
        this.mRotationLayout = (RotationLayout) this.mContainer.getChildAt(0);
        TextView textView = (TextView) this.mRotationLayout.findViewById(C0859R.id.amu_text);
        this.mTextView = textView;
        this.mContentView = textView;
        this.mBackground.setColor$13462e();
        setBackground(this.mBackground);
        context = this.mContext;
        if (this.mTextView != null) {
            this.mTextView.setTextAppearance(context, C0859R.style.amu_Bubble.TextAppearance.Dark);
        }
    }

    public final Bitmap makeIcon(CharSequence charSequence) {
        if (this.mTextView != null) {
            this.mTextView.setText(charSequence);
        }
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
        this.mContainer.measure(makeMeasureSpec, makeMeasureSpec);
        makeMeasureSpec = this.mContainer.getMeasuredWidth();
        int measuredHeight = this.mContainer.getMeasuredHeight();
        this.mContainer.layout(0, 0, makeMeasureSpec, measuredHeight);
        Bitmap createBitmap = Bitmap.createBitmap(makeMeasureSpec, measuredHeight, Config.ARGB_8888);
        createBitmap.eraseColor(0);
        this.mContainer.draw(new Canvas(createBitmap));
        return createBitmap;
    }

    public final void setContentView(View view) {
        this.mRotationLayout.removeAllViews();
        this.mRotationLayout.addView(view);
        this.mContentView = view;
        view = this.mRotationLayout.findViewById(C0859R.id.amu_text);
        this.mTextView = view instanceof TextView ? (TextView) view : null;
    }

    public final void setTextAppearance$13462e() {
        Context context = this.mContext;
        if (this.mTextView != null) {
            this.mTextView.setTextAppearance(context, C0859R.style.amu_ClusterIcon.TextAppearance);
        }
    }

    public final void setBackground(Drawable drawable) {
        this.mContainer.setBackgroundDrawable(drawable);
        if (drawable != null) {
            Rect rect = new Rect();
            drawable.getPadding(rect);
            this.mContainer.setPadding(rect.left, rect.top, rect.right, rect.bottom);
            return;
        }
        this.mContainer.setPadding(0, 0, 0, 0);
    }
}
