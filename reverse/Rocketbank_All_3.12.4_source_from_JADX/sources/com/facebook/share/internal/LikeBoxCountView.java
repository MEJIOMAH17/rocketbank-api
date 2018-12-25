package com.facebook.share.internal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.RectF;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.facebook.C0361R;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public class LikeBoxCountView extends FrameLayout {
    private int additionalTextPadding;
    private Paint borderPaint;
    private float borderRadius;
    private float caretHeight;
    private LikeBoxCountViewCaretPosition caretPosition = LikeBoxCountViewCaretPosition.LEFT;
    private float caretWidth;
    private TextView likeCountLabel;
    private int textPadding;

    public enum LikeBoxCountViewCaretPosition {
        LEFT,
        TOP,
        RIGHT,
        BOTTOM
    }

    public LikeBoxCountView(Context context) {
        super(context);
        initialize(context);
    }

    public void setText(String str) {
        this.likeCountLabel.setText(str);
    }

    public void setCaretPosition(LikeBoxCountViewCaretPosition likeBoxCountViewCaretPosition) {
        this.caretPosition = likeBoxCountViewCaretPosition;
        switch (likeBoxCountViewCaretPosition) {
            case LEFT:
                setAdditionalTextPadding(this.additionalTextPadding, 0, 0, 0);
                return;
            case TOP:
                setAdditionalTextPadding(0, this.additionalTextPadding, 0, 0);
                return;
            case RIGHT:
                setAdditionalTextPadding(0, 0, this.additionalTextPadding, 0);
                return;
            case BOTTOM:
                setAdditionalTextPadding(0, 0, 0, this.additionalTextPadding);
                break;
            default:
                break;
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int paddingTop = getPaddingTop();
        int paddingLeft = getPaddingLeft();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        switch (this.caretPosition) {
            case LEFT:
                paddingLeft = (int) (((float) paddingLeft) + this.caretHeight);
                break;
            case TOP:
                paddingTop = (int) (((float) paddingTop) + this.caretHeight);
                break;
            case RIGHT:
                width = (int) (((float) width) - this.caretHeight);
                break;
            case BOTTOM:
                height = (int) (((float) height) - this.caretHeight);
                break;
            default:
                break;
        }
        drawBorder(canvas, (float) paddingLeft, (float) paddingTop, (float) width, (float) height);
    }

    private void initialize(Context context) {
        setWillNotDraw(false);
        this.caretHeight = getResources().getDimension(C0361R.dimen.com_facebook_likeboxcountview_caret_height);
        this.caretWidth = getResources().getDimension(C0361R.dimen.com_facebook_likeboxcountview_caret_width);
        this.borderRadius = getResources().getDimension(C0361R.dimen.com_facebook_likeboxcountview_border_radius);
        this.borderPaint = new Paint();
        this.borderPaint.setColor(getResources().getColor(C0361R.color.com_facebook_likeboxcountview_border_color));
        this.borderPaint.setStrokeWidth(getResources().getDimension(C0361R.dimen.com_facebook_likeboxcountview_border_width));
        this.borderPaint.setStyle(Style.STROKE);
        initializeLikeCountLabel(context);
        addView(this.likeCountLabel);
        setCaretPosition(this.caretPosition);
    }

    private void initializeLikeCountLabel(Context context) {
        this.likeCountLabel = new TextView(context);
        this.likeCountLabel.setLayoutParams(new LayoutParams(-1, -1));
        this.likeCountLabel.setGravity(17);
        this.likeCountLabel.setTextSize(0, getResources().getDimension(C0361R.dimen.com_facebook_likeboxcountview_text_size));
        this.likeCountLabel.setTextColor(getResources().getColor(C0361R.color.com_facebook_likeboxcountview_text_color));
        this.textPadding = getResources().getDimensionPixelSize(C0361R.dimen.com_facebook_likeboxcountview_text_padding);
        this.additionalTextPadding = getResources().getDimensionPixelSize(C0361R.dimen.com_facebook_likeboxcountview_caret_height);
    }

    private void setAdditionalTextPadding(int i, int i2, int i3, int i4) {
        this.likeCountLabel.setPadding(this.textPadding + i, this.textPadding + i2, this.textPadding + i3, this.textPadding + i4);
    }

    private void drawBorder(Canvas canvas, float f, float f2, float f3, float f4) {
        Path path = new Path();
        float f5 = this.borderRadius * 2.0f;
        float f6 = f + f5;
        float f7 = f2 + f5;
        path.addArc(new RectF(f, f2, f6, f7), -180.0f, 90.0f);
        if (this.caretPosition == LikeBoxCountViewCaretPosition.TOP) {
            float f8 = f3 - f;
            path.lineTo(((f8 - this.caretWidth) / 2.0f) + f, f2);
            path.lineTo((f8 / 2.0f) + f, f2 - this.caretHeight);
            path.lineTo(((f8 + this.caretWidth) / 2.0f) + f, f2);
        }
        path.lineTo(f3 - this.borderRadius, f2);
        float f9 = f3 - f5;
        path.addArc(new RectF(f9, f2, f3, f7), -90.0f, 90.0f);
        if (this.caretPosition == LikeBoxCountViewCaretPosition.RIGHT) {
            f8 = f4 - f2;
            path.lineTo(f3, ((f8 - this.caretWidth) / 2.0f) + f2);
            path.lineTo(this.caretHeight + f3, (f8 / 2.0f) + f2);
            path.lineTo(f3, ((f8 + this.caretWidth) / 2.0f) + f2);
        }
        path.lineTo(f3, f4 - this.borderRadius);
        f5 = f4 - f5;
        path.addArc(new RectF(f9, f5, f3, f4), BitmapDescriptorFactory.HUE_RED, 90.0f);
        if (this.caretPosition == LikeBoxCountViewCaretPosition.BOTTOM) {
            f3 -= f;
            path.lineTo(((this.caretWidth + f3) / 2.0f) + f, f4);
            path.lineTo((f3 / 2.0f) + f, this.caretHeight + f4);
            path.lineTo(((f3 - this.caretWidth) / 2.0f) + f, f4);
        }
        path.lineTo(this.borderRadius + f, f4);
        path.addArc(new RectF(f, f5, f6, f4), 90.0f, 90.0f);
        if (this.caretPosition == LikeBoxCountViewCaretPosition.LEFT) {
            f4 -= f2;
            path.lineTo(f, ((this.caretWidth + f4) / 2.0f) + f2);
            path.lineTo(f - this.caretHeight, (f4 / 2.0f) + f2);
            path.lineTo(f, ((f4 - this.caretWidth) / 2.0f) + f2);
        }
        path.lineTo(f, f2 + this.borderRadius);
        canvas.drawPath(path, this.borderPaint);
    }
}
