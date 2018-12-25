package android.support.v4.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build.VERSION;
import android.support.v4.view.ViewCompat;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

class CircleImageView extends ImageView {
    private AnimationListener mListener;
    int mShadowRadius;

    class OvalShadow extends OvalShape {
        private RadialGradient mRadialGradient;
        private Paint mShadowPaint = new Paint();

        OvalShadow(int i) {
            CircleImageView.this.mShadowRadius = i;
            updateRadialGradient((int) rect().width());
        }

        protected final void onResize(float f, float f2) {
            super.onResize(f, f2);
            updateRadialGradient((int) f);
        }

        public final void draw(Canvas canvas, Paint paint) {
            int width = CircleImageView.this.getWidth() / 2;
            float f = (float) width;
            float height = (float) (CircleImageView.this.getHeight() / 2);
            canvas.drawCircle(f, height, f, this.mShadowPaint);
            canvas.drawCircle(f, height, (float) (width - CircleImageView.this.mShadowRadius), paint);
        }

        private void updateRadialGradient(int i) {
            float f = (float) (i / 2);
            this.mRadialGradient = new RadialGradient(f, f, (float) CircleImageView.this.mShadowRadius, new int[]{1023410176, 0}, null, TileMode.CLAMP);
            this.mShadowPaint.setShader(this.mRadialGradient);
        }
    }

    CircleImageView(Context context) {
        Drawable shapeDrawable;
        super(context);
        context = getContext().getResources().getDisplayMetrics().density;
        int i = (int) (1.75f * context);
        int i2 = (int) (BitmapDescriptorFactory.HUE_RED * context);
        this.mShadowRadius = (int) (3.5f * context);
        if ((VERSION.SDK_INT >= 21 ? 1 : 0) != 0) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            ViewCompat.setElevation(this, 4.0f * context);
        } else {
            Drawable shapeDrawable2 = new ShapeDrawable(new OvalShadow(this.mShadowRadius));
            setLayerType(1, shapeDrawable2.getPaint());
            shapeDrawable2.getPaint().setShadowLayer((float) this.mShadowRadius, (float) i2, (float) i, 503316480);
            context = this.mShadowRadius;
            setPadding(context, context, context, context);
            shapeDrawable = shapeDrawable2;
        }
        shapeDrawable.getPaint().setColor(-328966);
        ViewCompat.setBackground(this, shapeDrawable);
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if ((VERSION.SDK_INT >= 21 ? 1 : 0) == 0) {
            setMeasuredDimension(getMeasuredWidth() + (this.mShadowRadius << 1), getMeasuredHeight() + (this.mShadowRadius << 1));
        }
    }

    public final void setAnimationListener(AnimationListener animationListener) {
        this.mListener = animationListener;
    }

    public void onAnimationStart() {
        super.onAnimationStart();
        if (this.mListener != null) {
            this.mListener.onAnimationStart(getAnimation());
        }
    }

    public void onAnimationEnd() {
        super.onAnimationEnd();
        if (this.mListener != null) {
            this.mListener.onAnimationEnd(getAnimation());
        }
    }

    public void setBackgroundColor(int i) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i);
        }
    }
}
