package ru.rocketbank.core.widgets;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.NinePatchDrawable;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ItemDecoration;
import android.support.v7.widget.RecyclerView.State;
import android.view.View;

public final class ItemShadowDecorator extends ItemDecoration {
    private final boolean mCastShadowForTransparentBackgroundItem;
    private final NinePatchDrawable mShadowDrawable;
    private final Rect mShadowPadding;

    public ItemShadowDecorator(NinePatchDrawable ninePatchDrawable) {
        this(ninePatchDrawable, (byte) 0);
    }

    private ItemShadowDecorator(NinePatchDrawable ninePatchDrawable, byte b) {
        this.mShadowPadding = new Rect();
        this.mShadowDrawable = ninePatchDrawable;
        this.mShadowDrawable.getPadding(this.mShadowPadding);
        this.mCastShadowForTransparentBackgroundItem = true;
    }

    public final void onDraw(Canvas canvas, RecyclerView recyclerView, State state) {
        state = recyclerView.getChildCount();
        if (state != null) {
            for (int i = 0; i < state; i++) {
                Object obj;
                int translationX;
                int translationY;
                int top;
                View childAt = recyclerView.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    if (ViewCompat.getAlpha(childAt) == 1.0f) {
                        if (childAt.getBackground() != null) {
                            obj = 1;
                            if (obj != null) {
                                translationX = (int) (ViewCompat.getTranslationX(childAt) + 0.5f);
                                translationY = (int) (ViewCompat.getTranslationY(childAt) + 0.5f);
                                top = childAt.getTop() - this.mShadowPadding.top;
                                this.mShadowDrawable.setBounds((childAt.getLeft() - this.mShadowPadding.left) + translationX, top + translationY, (childAt.getRight() + this.mShadowPadding.right) + translationX, (childAt.getBottom() + this.mShadowPadding.bottom) + translationY);
                                this.mShadowDrawable.draw(canvas);
                            }
                        }
                    }
                }
                obj = null;
                if (obj != null) {
                    translationX = (int) (ViewCompat.getTranslationX(childAt) + 0.5f);
                    translationY = (int) (ViewCompat.getTranslationY(childAt) + 0.5f);
                    top = childAt.getTop() - this.mShadowPadding.top;
                    this.mShadowDrawable.setBounds((childAt.getLeft() - this.mShadowPadding.left) + translationX, top + translationY, (childAt.getRight() + this.mShadowPadding.right) + translationX, (childAt.getBottom() + this.mShadowPadding.bottom) + translationY);
                    this.mShadowDrawable.draw(canvas);
                }
            }
        }
    }

    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
        rect.set(0, 0, 0, 0);
    }
}
