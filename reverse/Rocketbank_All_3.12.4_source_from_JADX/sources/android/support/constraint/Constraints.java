package android.support.constraint;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;

public class Constraints extends ViewGroup {
    ConstraintSet myConstraintSet;

    public static class LayoutParams extends android.support.constraint.ConstraintLayout.LayoutParams {
        public float alpha;
        public boolean applyElevation;
        public float elevation;
        public float rotation;
        public float rotationX;
        public float rotationY;
        public float scaleX;
        public float scaleY;
        public float transformPivotX;
        public float transformPivotY;
        public float translationX;
        public float translationY;
        public float translationZ;

        public LayoutParams() {
            this.alpha = 1.0f;
            this.applyElevation = false;
            this.elevation = BitmapDescriptorFactory.HUE_RED;
            this.rotation = BitmapDescriptorFactory.HUE_RED;
            this.rotationX = BitmapDescriptorFactory.HUE_RED;
            this.rotationY = BitmapDescriptorFactory.HUE_RED;
            this.scaleX = 1.0f;
            this.scaleY = 1.0f;
            this.transformPivotX = BitmapDescriptorFactory.HUE_RED;
            this.transformPivotY = BitmapDescriptorFactory.HUE_RED;
            this.translationX = BitmapDescriptorFactory.HUE_RED;
            this.translationY = BitmapDescriptorFactory.HUE_RED;
            this.translationZ = BitmapDescriptorFactory.HUE_RED;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.alpha = 1.0f;
            int i = 0;
            this.applyElevation = false;
            this.elevation = BitmapDescriptorFactory.HUE_RED;
            this.rotation = BitmapDescriptorFactory.HUE_RED;
            this.rotationX = BitmapDescriptorFactory.HUE_RED;
            this.rotationY = BitmapDescriptorFactory.HUE_RED;
            this.scaleX = 1.0f;
            this.scaleY = 1.0f;
            this.transformPivotX = BitmapDescriptorFactory.HUE_RED;
            this.transformPivotY = BitmapDescriptorFactory.HUE_RED;
            this.translationX = BitmapDescriptorFactory.HUE_RED;
            this.translationY = BitmapDescriptorFactory.HUE_RED;
            this.translationZ = BitmapDescriptorFactory.HUE_RED;
            context = context.obtainStyledAttributes(attributeSet, C0887R.styleable.ConstraintSet);
            attributeSet = context.getIndexCount();
            while (i < attributeSet) {
                int index = context.getIndex(i);
                if (index == C0887R.styleable.ConstraintSet_android_alpha) {
                    this.alpha = context.getFloat(index, this.alpha);
                } else if (index == C0887R.styleable.ConstraintSet_android_elevation) {
                    this.elevation = context.getFloat(index, this.elevation);
                    this.applyElevation = true;
                } else if (index == C0887R.styleable.ConstraintSet_android_rotationX) {
                    this.rotationX = context.getFloat(index, this.rotationX);
                } else if (index == C0887R.styleable.ConstraintSet_android_rotationY) {
                    this.rotationY = context.getFloat(index, this.rotationY);
                } else if (index == C0887R.styleable.ConstraintSet_android_rotation) {
                    this.rotation = context.getFloat(index, this.rotation);
                } else if (index == C0887R.styleable.ConstraintSet_android_scaleX) {
                    this.scaleX = context.getFloat(index, this.scaleX);
                } else if (index == C0887R.styleable.ConstraintSet_android_scaleY) {
                    this.scaleY = context.getFloat(index, this.scaleY);
                } else if (index == C0887R.styleable.ConstraintSet_android_transformPivotX) {
                    this.transformPivotX = context.getFloat(index, this.transformPivotX);
                } else if (index == C0887R.styleable.ConstraintSet_android_transformPivotY) {
                    this.transformPivotY = context.getFloat(index, this.transformPivotY);
                } else if (index == C0887R.styleable.ConstraintSet_android_translationX) {
                    this.translationX = context.getFloat(index, this.translationX);
                } else if (index == C0887R.styleable.ConstraintSet_android_translationY) {
                    this.translationY = context.getFloat(index, this.translationY);
                } else if (index == C0887R.styleable.ConstraintSet_android_translationZ) {
                    this.translationX = context.getFloat(index, BitmapDescriptorFactory.HUE_RED);
                }
                i++;
            }
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    protected android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new android.support.constraint.ConstraintLayout.LayoutParams(layoutParams);
    }

    protected /* bridge */ /* synthetic */ android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }
}
