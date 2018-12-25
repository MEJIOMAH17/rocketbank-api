package ru.rocketbank.r2d2.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import ru.rocketbank.r2d2.C0859R;

@Deprecated
public final class BackgroundImageView extends ImageView {
    private Paint paint;
    private Rect rect;

    public final void setScaleType(ScaleType scaleType) {
    }

    public BackgroundImageView(Context context) {
        this(context, null);
    }

    public BackgroundImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BackgroundImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(attributeSet, context);
    }

    @TargetApi(21)
    public BackgroundImageView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init(attributeSet, context);
    }

    protected final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.rect.set(0, 0, getWidth(), getHeight());
        canvas.drawRect(this.rect, this.paint);
    }

    private void init(AttributeSet attributeSet, Context context) {
        super.setScaleType(ScaleType.CENTER_CROP);
        attributeSet = context.obtainStyledAttributes(attributeSet, C0859R.styleable.BackgroundImageView);
        boolean z = attributeSet.getBoolean(0, false);
        attributeSet.recycle();
        this.paint = new Paint();
        this.paint.setColor(Color.argb(z ? 128 : 95, 0, 0, 0));
        this.rect = new Rect();
    }
}
