package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.C0219R;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public class LinearLayoutCompat extends ViewGroup {
    public static final int HORIZONTAL = 0;
    private static final int INDEX_BOTTOM = 2;
    private static final int INDEX_CENTER_VERTICAL = 0;
    private static final int INDEX_FILL = 3;
    private static final int INDEX_TOP = 1;
    public static final int SHOW_DIVIDER_BEGINNING = 1;
    public static final int SHOW_DIVIDER_END = 4;
    public static final int SHOW_DIVIDER_MIDDLE = 2;
    public static final int SHOW_DIVIDER_NONE = 0;
    public static final int VERTICAL = 1;
    private static final int VERTICAL_GRAVITY_COUNT = 4;
    private boolean mBaselineAligned;
    private int mBaselineAlignedChildIndex;
    private int mBaselineChildTop;
    private Drawable mDivider;
    private int mDividerHeight;
    private int mDividerPadding;
    private int mDividerWidth;
    private int mGravity;
    private int[] mMaxAscent;
    private int[] mMaxDescent;
    private int mOrientation;
    private int mShowDividers;
    private int mTotalLength;
    private boolean mUseLargestChild;
    private float mWeightSum;

    @RestrictTo
    @Retention(RetentionPolicy.SOURCE)
    public @interface DividerMode {
    }

    public static class LayoutParams extends MarginLayoutParams {
        public int gravity;
        public float weight;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = -1;
            context = context.obtainStyledAttributes(attributeSet, C0219R.styleable.LinearLayoutCompat_Layout);
            this.weight = context.getFloat(C0219R.styleable.LinearLayoutCompat_Layout_android_layout_weight, BitmapDescriptorFactory.HUE_RED);
            this.gravity = context.getInt(C0219R.styleable.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            context.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = -1;
            this.weight = 0;
        }

        public LayoutParams(int i, int i2, float f) {
            super(i, i2);
            this.gravity = -1;
            this.weight = f;
        }

        public LayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
        }

        public LayoutParams(MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = -1;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = -1;
            this.weight = layoutParams.weight;
            this.gravity = layoutParams.gravity;
        }
    }

    @RestrictTo
    @Retention(RetentionPolicy.SOURCE)
    public @interface OrientationMode {
    }

    int getChildrenSkipCount(View view, int i) {
        return 0;
    }

    int getLocationOffset(View view) {
        return 0;
    }

    int getNextLocationOffset(View view) {
        return 0;
    }

    int measureNullChild(int i) {
        return 0;
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public LinearLayoutCompat(Context context) {
        this(context, null);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBaselineAligned = true;
        this.mBaselineAlignedChildIndex = -1;
        this.mBaselineChildTop = 0;
        this.mGravity = 8388659;
        context = TintTypedArray.obtainStyledAttributes(context, attributeSet, C0219R.styleable.LinearLayoutCompat, i, 0);
        attributeSet = context.getInt(C0219R.styleable.LinearLayoutCompat_android_orientation, -1);
        if (attributeSet >= null) {
            setOrientation(attributeSet);
        }
        attributeSet = context.getInt(C0219R.styleable.LinearLayoutCompat_android_gravity, -1);
        if (attributeSet >= null) {
            setGravity(attributeSet);
        }
        attributeSet = context.getBoolean(C0219R.styleable.LinearLayoutCompat_android_baselineAligned, true);
        if (attributeSet == null) {
            setBaselineAligned(attributeSet);
        }
        this.mWeightSum = context.getFloat(C0219R.styleable.LinearLayoutCompat_android_weightSum, -1082130432);
        this.mBaselineAlignedChildIndex = context.getInt(C0219R.styleable.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.mUseLargestChild = context.getBoolean(C0219R.styleable.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(context.getDrawable(C0219R.styleable.LinearLayoutCompat_divider));
        this.mShowDividers = context.getInt(C0219R.styleable.LinearLayoutCompat_showDividers, 0);
        this.mDividerPadding = context.getDimensionPixelSize(C0219R.styleable.LinearLayoutCompat_dividerPadding, 0);
        context.recycle();
    }

    public void setShowDividers(int i) {
        if (i != this.mShowDividers) {
            requestLayout();
        }
        this.mShowDividers = i;
    }

    public int getShowDividers() {
        return this.mShowDividers;
    }

    public Drawable getDividerDrawable() {
        return this.mDivider;
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable != this.mDivider) {
            this.mDivider = drawable;
            boolean z = false;
            if (drawable != null) {
                this.mDividerWidth = drawable.getIntrinsicWidth();
                this.mDividerHeight = drawable.getIntrinsicHeight();
            } else {
                this.mDividerWidth = 0;
                this.mDividerHeight = 0;
            }
            if (drawable == null) {
                z = true;
            }
            setWillNotDraw(z);
            requestLayout();
        }
    }

    public void setDividerPadding(int i) {
        this.mDividerPadding = i;
    }

    public int getDividerPadding() {
        return this.mDividerPadding;
    }

    @RestrictTo
    public int getDividerWidth() {
        return this.mDividerWidth;
    }

    protected void onDraw(Canvas canvas) {
        if (this.mDivider != null) {
            if (this.mOrientation == 1) {
                drawDividersVertical(canvas);
            } else {
                drawDividersHorizontal(canvas);
            }
        }
    }

    void drawDividersVertical(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        int i = 0;
        while (i < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i);
            if (!(virtualChildAt == null || virtualChildAt.getVisibility() == 8 || !hasDividerBeforeChildAt(i))) {
                drawHorizontalDivider(canvas, (virtualChildAt.getTop() - ((LayoutParams) virtualChildAt.getLayoutParams()).topMargin) - this.mDividerHeight);
            }
            i++;
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 == null) {
                virtualChildCount = (getHeight() - getPaddingBottom()) - this.mDividerHeight;
            } else {
                virtualChildCount = virtualChildAt2.getBottom() + ((LayoutParams) virtualChildAt2.getLayoutParams()).bottomMargin;
            }
            drawHorizontalDivider(canvas, virtualChildCount);
        }
    }

    void drawDividersHorizontal(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i = 0;
        while (i < virtualChildCount) {
            View virtualChildAt = getVirtualChildAt(i);
            if (!(virtualChildAt == null || virtualChildAt.getVisibility() == 8 || !hasDividerBeforeChildAt(i))) {
                int right;
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (isLayoutRtl) {
                    right = virtualChildAt.getRight() + layoutParams.rightMargin;
                } else {
                    right = (virtualChildAt.getLeft() - layoutParams.leftMargin) - this.mDividerWidth;
                }
                drawVerticalDivider(canvas, right);
            }
            i++;
        }
        if (hasDividerBeforeChildAt(virtualChildCount)) {
            View virtualChildAt2 = getVirtualChildAt(virtualChildCount - 1);
            if (virtualChildAt2 != null) {
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                if (isLayoutRtl) {
                    virtualChildCount = (virtualChildAt2.getLeft() - layoutParams2.leftMargin) - this.mDividerWidth;
                } else {
                    virtualChildCount = virtualChildAt2.getRight() + layoutParams2.rightMargin;
                }
            } else if (isLayoutRtl) {
                virtualChildCount = getPaddingLeft();
            } else {
                virtualChildCount = (getWidth() - getPaddingRight()) - this.mDividerWidth;
            }
            drawVerticalDivider(canvas, virtualChildCount);
        }
    }

    void drawHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    public boolean isBaselineAligned() {
        return this.mBaselineAligned;
    }

    public void setBaselineAligned(boolean z) {
        this.mBaselineAligned = z;
    }

    public boolean isMeasureWithLargestChildEnabled() {
        return this.mUseLargestChild;
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.mUseLargestChild = z;
    }

    public int getBaseline() {
        if (this.mBaselineAlignedChildIndex < 0) {
            return super.getBaseline();
        }
        if (getChildCount() <= this.mBaselineAlignedChildIndex) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(this.mBaselineAlignedChildIndex);
        int baseline = childAt.getBaseline();
        if (baseline != -1) {
            int i = this.mBaselineChildTop;
            if (this.mOrientation == 1) {
                int i2 = this.mGravity & 112;
                if (i2 != 48) {
                    if (i2 == 16) {
                        i += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.mTotalLength) / 2;
                    } else if (i2 == 80) {
                        i = ((getBottom() - getTop()) - getPaddingBottom()) - this.mTotalLength;
                    }
                }
            }
            return (i + ((LayoutParams) childAt.getLayoutParams()).topMargin) + baseline;
        } else if (this.mBaselineAlignedChildIndex == 0) {
            return -1;
        } else {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
    }

    public int getBaselineAlignedChildIndex() {
        return this.mBaselineAlignedChildIndex;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0) {
            if (i < getChildCount()) {
                this.mBaselineAlignedChildIndex = i;
                return;
            }
        }
        StringBuilder stringBuilder = new StringBuilder("base aligned child index out of range (0, ");
        stringBuilder.append(getChildCount());
        stringBuilder.append(")");
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    View getVirtualChildAt(int i) {
        return getChildAt(i);
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.mWeightSum;
    }

    public void setWeightSum(float f) {
        this.mWeightSum = Math.max(BitmapDescriptorFactory.HUE_RED, f);
    }

    protected void onMeasure(int i, int i2) {
        if (this.mOrientation == 1) {
            measureVertical(i, i2);
        } else {
            measureHorizontal(i, i2);
        }
    }

    @RestrictTo
    protected boolean hasDividerBeforeChildAt(int i) {
        boolean z = false;
        if (i == 0) {
            return (this.mShowDividers & 1) != 0;
        } else {
            if (i == getChildCount()) {
                return (this.mShowDividers & 4) != 0;
            } else {
                if ((this.mShowDividers & 2) == 0) {
                    return false;
                }
                for (i--; i >= 0; i--) {
                    if (getChildAt(i).getVisibility() != 8) {
                        z = true;
                        break;
                    }
                }
                return z;
            }
        }
    }

    void measureVertical(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        View virtualChildAt;
        int i9 = i;
        int i10 = i2;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        int i11 = this.mBaselineAlignedChildIndex;
        boolean z = this.mUseLargestChild;
        int i12 = 0;
        int i13 = i12;
        int i14 = i13;
        int i15 = i14;
        int i16 = i15;
        int i17 = i16;
        int i18 = i17;
        int i19 = i18;
        float f = BitmapDescriptorFactory.HUE_RED;
        Object obj = 1;
        while (true) {
            i3 = 8;
            i4 = i15;
            if (i17 >= virtualChildCount) {
                break;
            }
            View virtualChildAt2 = getVirtualChildAt(i17);
            if (virtualChildAt2 == null) {
                r7.mTotalLength += measureNullChild(i17);
                i5 = virtualChildCount;
                i6 = mode2;
                i15 = i4;
            } else {
                float f2;
                View view;
                int i20 = i12;
                if (virtualChildAt2.getVisibility() != 8) {
                    int i21;
                    int i22;
                    int i23;
                    int i24;
                    if (hasDividerBeforeChildAt(i17)) {
                        r7.mTotalLength += r7.mDividerHeight;
                    }
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt2.getLayoutParams();
                    f2 = f + layoutParams.weight;
                    int i25;
                    if (mode2 == 1073741824 && layoutParams.height == 0 && layoutParams.weight > BitmapDescriptorFactory.HUE_RED) {
                        i7 = r7.mTotalLength;
                        i25 = i13;
                        r7.mTotalLength = Math.max(i7, (layoutParams.topMargin + i7) + layoutParams.bottomMargin);
                        view = virtualChildAt2;
                        i21 = i16;
                        i5 = virtualChildCount;
                        i6 = mode2;
                        i18 = 1;
                        i22 = i4;
                        i23 = i20;
                        i24 = i25;
                        mode2 = i17;
                    } else {
                        i25 = i13;
                        if (layoutParams.height != 0 || layoutParams.weight <= BitmapDescriptorFactory.HUE_RED) {
                            i13 = Integer.MIN_VALUE;
                        } else {
                            layoutParams.height = -2;
                            i13 = 0;
                        }
                        i6 = mode2;
                        int i26 = i13;
                        i24 = i25;
                        i5 = virtualChildCount;
                        virtualChildCount = i14;
                        i14 = i9;
                        view = virtualChildAt2;
                        i23 = i20;
                        i22 = i4;
                        mode2 = 1073741824;
                        i21 = i16;
                        mode2 = i17;
                        measureChildBeforeLayout(virtualChildAt2, i17, i14, 0, i10, f2 == BitmapDescriptorFactory.HUE_RED ? r7.mTotalLength : 0);
                        i7 = i26;
                        if (i7 != Integer.MIN_VALUE) {
                            layoutParams.height = i7;
                        }
                        i7 = view.getMeasuredHeight();
                        i12 = r7.mTotalLength;
                        r7.mTotalLength = Math.max(i12, (((i12 + i7) + layoutParams.topMargin) + layoutParams.bottomMargin) + getNextLocationOffset(view));
                        i14 = z ? Math.max(i7, virtualChildCount) : virtualChildCount;
                    }
                    if (i11 >= 0 && i11 == mode2 + 1) {
                        r7.mBaselineChildTop = r7.mTotalLength;
                    }
                    if (mode2 >= i11 || layoutParams.weight <= BitmapDescriptorFactory.HUE_RED) {
                        if (mode == 1073741824 || layoutParams.width != -1) {
                            i7 = 0;
                        } else {
                            i7 = 1;
                            i19 = i7;
                        }
                        i12 = layoutParams.leftMargin + layoutParams.rightMargin;
                        i13 = view.getMeasuredWidth() + i12;
                        i15 = Math.max(i24, i13);
                        i16 = View.combineMeasuredStates(i23, view.getMeasuredState());
                        obj = (obj == null || layoutParams.width != -1) ? null : 1;
                        if (layoutParams.weight > BitmapDescriptorFactory.HUE_RED) {
                            if (i7 == 0) {
                                i12 = i13;
                            }
                            i3 = Math.max(i22, i12);
                            i7 = i21;
                        } else {
                            i3 = i22;
                            if (i7 != 0) {
                                i13 = i12;
                            }
                            i7 = Math.max(i21, i13);
                        }
                    } else {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                }
                view = virtualChildAt2;
                i5 = virtualChildCount;
                i6 = mode2;
                i3 = i4;
                i15 = i13;
                virtualChildCount = i14;
                mode2 = i17;
                f2 = f;
                i7 = i16;
                i16 = i20;
                i17 = mode2 + getChildrenSkipCount(view, mode2);
                i13 = i15;
                i12 = i16;
                i15 = i3;
                i16 = i7;
                f = f2;
            }
            i17++;
            mode2 = i6;
            virtualChildCount = i5;
            i9 = i;
        }
        i17 = i12;
        i15 = i13;
        i12 = i16;
        i5 = virtualChildCount;
        i6 = mode2;
        i13 = i4;
        virtualChildCount = i14;
        if (r7.mTotalLength > 0) {
            i14 = i5;
            if (hasDividerBeforeChildAt(i14)) {
                r7.mTotalLength += r7.mDividerHeight;
            }
        } else {
            i14 = i5;
        }
        if (z) {
            i16 = i6;
            if (i16 != Integer.MIN_VALUE) {
                if (i16 == 0) {
                }
                i8 = i15;
            }
            r7.mTotalLength = 0;
            i9 = 0;
            while (i9 < i14) {
                virtualChildAt = getVirtualChildAt(i9);
                if (virtualChildAt == null) {
                    r7.mTotalLength += measureNullChild(i9);
                } else if (virtualChildAt.getVisibility() == i3) {
                    i9 += getChildrenSkipCount(virtualChildAt, i9);
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt.getLayoutParams();
                    i3 = r7.mTotalLength;
                    i8 = i15;
                    r7.mTotalLength = Math.max(i3, (((i3 + virtualChildCount) + layoutParams2.topMargin) + layoutParams2.bottomMargin) + getNextLocationOffset(virtualChildAt));
                    i9++;
                    i15 = i8;
                    i3 = 8;
                }
                i8 = i15;
                i9++;
                i15 = i8;
                i3 = 8;
            }
            i8 = i15;
        } else {
            i8 = i15;
            i16 = i6;
        }
        r7.mTotalLength += getPaddingTop() + getPaddingBottom();
        i15 = View.resolveSizeAndState(Math.max(r7.mTotalLength, getSuggestedMinimumHeight()), i10, 0);
        i9 = (ViewCompat.MEASURED_SIZE_MASK & i15) - r7.mTotalLength;
        if (i18 == 0) {
            if (i9 == 0 || f <= BitmapDescriptorFactory.HUE_RED) {
                i7 = Math.max(i12, i13);
                if (z && i16 != 1073741824) {
                    for (i12 = 0; i12 < i14; i12++) {
                        View virtualChildAt3 = getVirtualChildAt(i12);
                        if (!(virtualChildAt3 == null || virtualChildAt3.getVisibility() == 8 || ((LayoutParams) virtualChildAt3.getLayoutParams()).weight <= BitmapDescriptorFactory.HUE_RED)) {
                            virtualChildAt3.measure(MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredWidth(), 1073741824), MeasureSpec.makeMeasureSpec(virtualChildCount, 1073741824));
                        }
                    }
                }
                virtualChildCount = i;
                if (obj == null || mode == 1073741824) {
                    i7 = i8;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(i7 + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), virtualChildCount, i17), i15);
                if (i19 != 0) {
                    forceUniformWidth(i14, i10);
                }
            }
        }
        if (r7.mWeightSum > BitmapDescriptorFactory.HUE_RED) {
            f = r7.mWeightSum;
        }
        r7.mTotalLength = 0;
        float f3 = f;
        i7 = 0;
        i3 = i9;
        i9 = i12;
        i12 = i8;
        while (i7 < i14) {
            float f4;
            virtualChildAt = getVirtualChildAt(i7);
            float f5;
            if (virtualChildAt.getVisibility() != 8) {
                int i27;
                int i28;
                Object obj2;
                Object obj3;
                layoutParams2 = (LayoutParams) virtualChildAt.getLayoutParams();
                f5 = layoutParams2.weight;
                if (f5 > BitmapDescriptorFactory.HUE_RED) {
                    int i29 = (int) ((((float) i3) * f5) / f3);
                    i27 = i3 - i29;
                    f4 = f3 - f5;
                    i13 = getChildMeasureSpec(i, ((getPaddingLeft() + getPaddingRight()) + layoutParams2.leftMargin) + layoutParams2.rightMargin, layoutParams2.width);
                    if (layoutParams2.height == 0) {
                        if (i16 == 1073741824) {
                            if (i29 > 0) {
                                i3 = 1073741824;
                                virtualChildAt.measure(i13, MeasureSpec.makeMeasureSpec(i29, i3));
                                i17 = View.combineMeasuredStates(i17, virtualChildAt.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                            } else {
                                i3 = 1073741824;
                                i29 = 0;
                                virtualChildAt.measure(i13, MeasureSpec.makeMeasureSpec(i29, i3));
                                i17 = View.combineMeasuredStates(i17, virtualChildAt.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                            }
                        }
                    }
                    i3 = virtualChildAt.getMeasuredHeight() + i29;
                    if (i3 < 0) {
                        i3 = 0;
                    }
                    i29 = i3;
                    i3 = 1073741824;
                    virtualChildAt.measure(i13, MeasureSpec.makeMeasureSpec(i29, i3));
                    i17 = View.combineMeasuredStates(i17, virtualChildAt.getMeasuredState() & InputDeviceCompat.SOURCE_ANY);
                } else {
                    f5 = f3;
                    virtualChildCount = i;
                    f4 = f5;
                    i27 = i3;
                }
                i13 = layoutParams2.leftMargin + layoutParams2.rightMargin;
                i3 = virtualChildAt.getMeasuredWidth() + i13;
                i12 = Math.max(i12, i3);
                if (mode != 1073741824) {
                    i28 = i12;
                    i12 = -1;
                    if (layoutParams2.width == -1) {
                        obj2 = 1;
                        if (obj2 != null) {
                            i13 = i3;
                        }
                        i13 = Math.max(i9, i13);
                        obj3 = (obj == null && layoutParams2.width == i12) ? 1 : null;
                        i3 = r7.mTotalLength;
                        r7.mTotalLength = Math.max(i3, (((virtualChildAt.getMeasuredHeight() + i3) + layoutParams2.topMargin) + layoutParams2.bottomMargin) + getNextLocationOffset(virtualChildAt));
                        obj = obj3;
                        i3 = i27;
                        i12 = i28;
                        i9 = i13;
                    }
                } else {
                    i28 = i12;
                    i12 = -1;
                }
                obj2 = null;
                if (obj2 != null) {
                    i13 = i3;
                }
                i13 = Math.max(i9, i13);
                if (obj == null) {
                }
                i3 = r7.mTotalLength;
                r7.mTotalLength = Math.max(i3, (((virtualChildAt.getMeasuredHeight() + i3) + layoutParams2.topMargin) + layoutParams2.bottomMargin) + getNextLocationOffset(virtualChildAt));
                obj = obj3;
                i3 = i27;
                i12 = i28;
                i9 = i13;
            } else {
                i8 = i12;
                f5 = f3;
                virtualChildCount = i;
                f4 = f5;
            }
            i7++;
            f3 = f4;
        }
        i8 = i12;
        virtualChildCount = i;
        r7.mTotalLength += getPaddingTop() + getPaddingBottom();
        i7 = i9;
        if (obj == null) {
        }
        i7 = i8;
        setMeasuredDimension(View.resolveSizeAndState(Math.max(i7 + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), virtualChildCount, i17), i15);
        if (i19 != 0) {
            forceUniformWidth(i14, i10);
        }
    }

    private void forceUniformWidth(int i, int i2) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.width == -1) {
                    int i4 = layoutParams.height;
                    layoutParams.height = virtualChildAt.getMeasuredHeight();
                    measureChildWithMargins(virtualChildAt, makeMeasureSpec, 0, i2, 0);
                    layoutParams.height = i4;
                }
            }
        }
    }

    void measureHorizontal(int i, int i2) {
        int[] iArr;
        int i3;
        boolean z;
        boolean z2;
        int baseline;
        int i4;
        int i5;
        int i6;
        int i7 = i;
        int i8 = i2;
        this.mTotalLength = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = MeasureSpec.getMode(i);
        int mode2 = MeasureSpec.getMode(i2);
        if (this.mMaxAscent == null || r7.mMaxDescent == null) {
            r7.mMaxAscent = new int[4];
            r7.mMaxDescent = new int[4];
        }
        int[] iArr2 = r7.mMaxAscent;
        int[] iArr3 = r7.mMaxDescent;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z3 = r7.mBaselineAligned;
        boolean z4 = r7.mUseLargestChild;
        int i9 = 1073741824;
        int i10 = mode == 1073741824 ? 1 : 0;
        int i11 = 0;
        int i12 = i11;
        int i13 = i12;
        int i14 = i13;
        int i15 = i14;
        int i16 = i15;
        int i17 = i16;
        int i18 = i17;
        int i19 = 1;
        float f = BitmapDescriptorFactory.HUE_RED;
        while (true) {
            iArr = iArr3;
            if (i11 >= virtualChildCount) {
                break;
            }
            float f2;
            int measuredHeight;
            View virtualChildAt = getVirtualChildAt(i11);
            if (virtualChildAt == null) {
                r7.mTotalLength += measureNullChild(i11);
                f2 = f;
                i3 = i11;
                i11 = i9;
                z = z4;
                z2 = z3;
            } else {
                int i20;
                View view;
                if (virtualChildAt.getVisibility() != 8) {
                    if (hasDividerBeforeChildAt(i11)) {
                        r7.mTotalLength += r7.mDividerWidth;
                    }
                    LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                    f2 = f + layoutParams.weight;
                    if (mode == i9 && layoutParams.width == 0 && layoutParams.weight > BitmapDescriptorFactory.HUE_RED) {
                        if (i10 != 0) {
                            r7.mTotalLength += layoutParams.leftMargin + layoutParams.rightMargin;
                        } else {
                            i3 = r7.mTotalLength;
                            r7.mTotalLength = Math.max(i3, (layoutParams.leftMargin + i3) + layoutParams.rightMargin);
                        }
                        if (z3) {
                            i9 = MeasureSpec.makeMeasureSpec(0, 0);
                            virtualChildAt.measure(i9, i9);
                            i20 = i11;
                            z = z4;
                            z2 = z3;
                            view = virtualChildAt;
                        } else {
                            i20 = i11;
                            z = z4;
                            z2 = z3;
                            view = virtualChildAt;
                            i14 = 1;
                            i11 = 1073741824;
                            if (mode2 == i11 && layoutParams.height == -1) {
                                i3 = 1;
                                i18 = i3;
                            } else {
                                i3 = 0;
                            }
                            i9 = layoutParams.topMargin + layoutParams.bottomMargin;
                            measuredHeight = view.getMeasuredHeight() + i9;
                            i17 = View.combineMeasuredStates(i17, view.getMeasuredState());
                            if (z2) {
                                baseline = view.getBaseline();
                                if (baseline != -1) {
                                    i4 = ((((layoutParams.gravity >= 0 ? r7.mGravity : layoutParams.gravity) & 112) >> 4) & -2) >> 1;
                                    iArr2[i4] = Math.max(iArr2[i4], baseline);
                                    iArr[i4] = Math.max(iArr[i4], measuredHeight - baseline);
                                }
                            }
                            i13 = Math.max(i13, measuredHeight);
                            i19 = (i19 == 0 && layoutParams.height == -1) ? 1 : 0;
                            if (layoutParams.weight <= BitmapDescriptorFactory.HUE_RED) {
                                if (i3 == 0) {
                                    i9 = measuredHeight;
                                }
                                i16 = Math.max(i16, i9);
                            } else {
                                i5 = i16;
                                if (i3 != 0) {
                                    measuredHeight = i9;
                                }
                                i15 = Math.max(i15, measuredHeight);
                                i16 = i5;
                            }
                        }
                    } else {
                        if (layoutParams.width != 0 || layoutParams.weight <= BitmapDescriptorFactory.HUE_RED) {
                            i4 = -2;
                            i9 = Integer.MIN_VALUE;
                        } else {
                            i4 = -2;
                            layoutParams.width = -2;
                            i9 = 0;
                        }
                        i20 = i11;
                        int i21 = i9;
                        z = z4;
                        z2 = z3;
                        int i22 = i4;
                        view = virtualChildAt;
                        measureChildBeforeLayout(virtualChildAt, i20, i7, f2 == BitmapDescriptorFactory.HUE_RED ? r7.mTotalLength : 0, i8, 0);
                        i3 = i21;
                        if (i3 != Integer.MIN_VALUE) {
                            layoutParams.width = i3;
                        }
                        i3 = view.getMeasuredWidth();
                        if (i10 != 0) {
                            r7.mTotalLength += ((layoutParams.leftMargin + i3) + layoutParams.rightMargin) + getNextLocationOffset(view);
                        } else {
                            i11 = r7.mTotalLength;
                            r7.mTotalLength = Math.max(i11, (((i11 + i3) + layoutParams.leftMargin) + layoutParams.rightMargin) + getNextLocationOffset(view));
                        }
                        if (z) {
                            i12 = Math.max(i3, i12);
                        }
                    }
                    i11 = 1073741824;
                    if (mode2 == i11) {
                    }
                    i3 = 0;
                    i9 = layoutParams.topMargin + layoutParams.bottomMargin;
                    measuredHeight = view.getMeasuredHeight() + i9;
                    i17 = View.combineMeasuredStates(i17, view.getMeasuredState());
                    if (z2) {
                        baseline = view.getBaseline();
                        if (baseline != -1) {
                            if (layoutParams.gravity >= 0) {
                            }
                            i4 = ((((layoutParams.gravity >= 0 ? r7.mGravity : layoutParams.gravity) & 112) >> 4) & -2) >> 1;
                            iArr2[i4] = Math.max(iArr2[i4], baseline);
                            iArr[i4] = Math.max(iArr[i4], measuredHeight - baseline);
                        }
                    }
                    i13 = Math.max(i13, measuredHeight);
                    if (i19 == 0) {
                    }
                    if (layoutParams.weight <= BitmapDescriptorFactory.HUE_RED) {
                        i5 = i16;
                        if (i3 != 0) {
                            measuredHeight = i9;
                        }
                        i15 = Math.max(i15, measuredHeight);
                        i16 = i5;
                    } else {
                        if (i3 == 0) {
                            i9 = measuredHeight;
                        }
                        i16 = Math.max(i16, i9);
                    }
                } else {
                    i20 = i11;
                    i11 = i9;
                    z = z4;
                    z2 = z3;
                    view = virtualChildAt;
                    baseline = i13;
                    i9 = i15;
                    i5 = i16;
                    i6 = i17;
                    f2 = f;
                }
                i5 = i20;
                i3 = getChildrenSkipCount(view, i5) + i5;
            }
            i9 = i11;
            iArr3 = iArr;
            z4 = z;
            z3 = z2;
            i7 = i;
            i8 = i2;
            i11 = i3 + 1;
            f = f2;
        }
        i11 = i9;
        z = z4;
        z2 = z3;
        baseline = i13;
        i9 = i15;
        i5 = i16;
        i6 = i17;
        if (r7.mTotalLength > 0 && hasDividerBeforeChildAt(virtualChildCount)) {
            r7.mTotalLength += r7.mDividerWidth;
        }
        if (!(iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1)) {
            baseline = Math.max(baseline, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        }
        if (z && (mode == Integer.MIN_VALUE || mode == 0)) {
            r7.mTotalLength = 0;
            i11 = 0;
            while (i11 < virtualChildCount) {
                int i23;
                View virtualChildAt2 = getVirtualChildAt(i11);
                if (virtualChildAt2 == null) {
                    r7.mTotalLength += measureNullChild(i11);
                } else if (virtualChildAt2.getVisibility() == 8) {
                    i11 += getChildrenSkipCount(virtualChildAt2, i11);
                } else {
                    LayoutParams layoutParams2 = (LayoutParams) virtualChildAt2.getLayoutParams();
                    if (i10 != 0) {
                        r7.mTotalLength += ((layoutParams2.leftMargin + i12) + layoutParams2.rightMargin) + getNextLocationOffset(virtualChildAt2);
                    } else {
                        i7 = r7.mTotalLength;
                        i23 = i11;
                        r7.mTotalLength = Math.max(i7, (((i7 + i12) + layoutParams2.leftMargin) + layoutParams2.rightMargin) + getNextLocationOffset(virtualChildAt2));
                        i11 = i23 + 1;
                    }
                }
                i23 = i11;
                i11 = i23 + 1;
            }
        }
        r7.mTotalLength += getPaddingLeft() + getPaddingRight();
        i11 = View.resolveSizeAndState(Math.max(r7.mTotalLength, getSuggestedMinimumWidth()), i, 0);
        i4 = (ViewCompat.MEASURED_SIZE_MASK & i11) - r7.mTotalLength;
        if (i14 == 0) {
            if (i4 == 0 || f <= BitmapDescriptorFactory.HUE_RED) {
                i3 = Math.max(i9, i5);
                if (z && mode != 1073741824) {
                    for (i9 = 0; i9 < virtualChildCount; i9++) {
                        View virtualChildAt3 = getVirtualChildAt(i9);
                        if (!(virtualChildAt3 == null || virtualChildAt3.getVisibility() == 8 || ((LayoutParams) virtualChildAt3.getLayoutParams()).weight <= BitmapDescriptorFactory.HUE_RED)) {
                            virtualChildAt3.measure(MeasureSpec.makeMeasureSpec(i12, 1073741824), MeasureSpec.makeMeasureSpec(virtualChildAt3.getMeasuredHeight(), 1073741824));
                        }
                    }
                }
                i4 = i2;
                if (i19 == 0 || mode2 == 1073741824) {
                    i3 = baseline;
                }
                setMeasuredDimension(i11 | (ViewCompat.MEASURED_STATE_MASK & i6), View.resolveSizeAndState(Math.max(i3 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight()), i4, i6 << 16));
                if (i18 != 0) {
                    forceUniformHeight(virtualChildCount, i);
                }
            }
        }
        if (r7.mWeightSum > BitmapDescriptorFactory.HUE_RED) {
            f = r7.mWeightSum;
        }
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr[3] = -1;
        iArr[2] = -1;
        iArr[1] = -1;
        iArr[0] = -1;
        r7.mTotalLength = 0;
        i5 = i9;
        baseline = -1;
        float f3 = f;
        i3 = 0;
        while (i3 < virtualChildCount) {
            View virtualChildAt4 = getVirtualChildAt(i3);
            if (virtualChildAt4 == null || virtualChildAt4.getVisibility() == 8) {
                measuredHeight = i4;
                i4 = i2;
            } else {
                float f4;
                int i24;
                LayoutParams layoutParams3 = (LayoutParams) virtualChildAt4.getLayoutParams();
                float f5 = layoutParams3.weight;
                if (f5 > BitmapDescriptorFactory.HUE_RED) {
                    measuredHeight = (int) ((((float) i4) * f5) / f3);
                    float f6 = f3 - f5;
                    int i25 = i4 - measuredHeight;
                    i9 = getChildMeasureSpec(i2, ((getPaddingTop() + getPaddingBottom()) + layoutParams3.topMargin) + layoutParams3.bottomMargin, layoutParams3.height);
                    if (layoutParams3.width == 0) {
                        if (mode == 1073741824) {
                            if (measuredHeight <= 0) {
                                measuredHeight = 0;
                            }
                            virtualChildAt4.measure(MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824), i9);
                            i6 = View.combineMeasuredStates(i6, virtualChildAt4.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                            f3 = f6;
                            measuredHeight = i25;
                        }
                    }
                    i8 = virtualChildAt4.getMeasuredWidth() + measuredHeight;
                    if (i8 < 0) {
                        i8 = 0;
                    }
                    measuredHeight = i8;
                    virtualChildAt4.measure(MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824), i9);
                    i6 = View.combineMeasuredStates(i6, virtualChildAt4.getMeasuredState() & ViewCompat.MEASURED_STATE_MASK);
                    f3 = f6;
                    measuredHeight = i25;
                } else {
                    measuredHeight = i4;
                    i4 = i2;
                }
                if (i10 != 0) {
                    f4 = f3;
                    r7.mTotalLength += ((virtualChildAt4.getMeasuredWidth() + layoutParams3.leftMargin) + layoutParams3.rightMargin) + getNextLocationOffset(virtualChildAt4);
                    i24 = measuredHeight;
                } else {
                    f4 = f3;
                    i9 = r7.mTotalLength;
                    i24 = measuredHeight;
                    r7.mTotalLength = Math.max(i9, (((virtualChildAt4.getMeasuredWidth() + i9) + layoutParams3.leftMargin) + layoutParams3.rightMargin) + getNextLocationOffset(virtualChildAt4));
                }
                i9 = (mode2 == 1073741824 || layoutParams3.height != -1) ? 0 : 1;
                measuredHeight = layoutParams3.topMargin + layoutParams3.bottomMargin;
                i8 = virtualChildAt4.getMeasuredHeight() + measuredHeight;
                baseline = Math.max(baseline, i8);
                if (i9 == 0) {
                    measuredHeight = i8;
                }
                i9 = Math.max(i5, measuredHeight);
                if (i19 != 0) {
                    i5 = -1;
                    if (layoutParams3.height == -1) {
                        measuredHeight = 1;
                        if (z2) {
                            i12 = virtualChildAt4.getBaseline();
                            if (i12 != i5) {
                                i7 = ((((layoutParams3.gravity >= 0 ? r7.mGravity : layoutParams3.gravity) & 112) >> 4) & -2) >> 1;
                                iArr2[i7] = Math.max(iArr2[i7], i12);
                                iArr[i7] = Math.max(iArr[i7], i8 - i12);
                                i5 = i9;
                                i19 = measuredHeight;
                                f3 = f4;
                                measuredHeight = i24;
                            }
                        }
                        i5 = i9;
                        i19 = measuredHeight;
                        f3 = f4;
                        measuredHeight = i24;
                    }
                } else {
                    i5 = -1;
                }
                measuredHeight = 0;
                if (z2) {
                    i12 = virtualChildAt4.getBaseline();
                    if (i12 != i5) {
                        if (layoutParams3.gravity >= 0) {
                        }
                        i7 = ((((layoutParams3.gravity >= 0 ? r7.mGravity : layoutParams3.gravity) & 112) >> 4) & -2) >> 1;
                        iArr2[i7] = Math.max(iArr2[i7], i12);
                        iArr[i7] = Math.max(iArr[i7], i8 - i12);
                        i5 = i9;
                        i19 = measuredHeight;
                        f3 = f4;
                        measuredHeight = i24;
                    }
                }
                i5 = i9;
                i19 = measuredHeight;
                f3 = f4;
                measuredHeight = i24;
            }
            i3++;
            i4 = measuredHeight;
            measuredHeight = i;
        }
        i4 = i2;
        r7.mTotalLength += getPaddingLeft() + getPaddingRight();
        if (!(iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1)) {
            baseline = Math.max(baseline, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        }
        i3 = i5;
        if (i19 == 0) {
        }
        i3 = baseline;
        setMeasuredDimension(i11 | (ViewCompat.MEASURED_STATE_MASK & i6), View.resolveSizeAndState(Math.max(i3 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight()), i4, i6 << 16));
        if (i18 != 0) {
            forceUniformHeight(virtualChildCount, i);
        }
    }

    private void forceUniformHeight(int i, int i2) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View virtualChildAt = getVirtualChildAt(i3);
            if (virtualChildAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                if (layoutParams.height == -1) {
                    int i4 = layoutParams.width;
                    layoutParams.width = virtualChildAt.getMeasuredWidth();
                    measureChildWithMargins(virtualChildAt, i2, 0, makeMeasureSpec, 0);
                    layoutParams.width = i4;
                }
            }
        }
    }

    void measureChildBeforeLayout(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.mOrientation) {
            layoutVertical(i, i2, i3, i4);
        } else {
            layoutHorizontal(i, i2, i3, i4);
        }
    }

    void layoutVertical(int i, int i2, int i3, int i4) {
        int paddingTop;
        int paddingLeft = getPaddingLeft();
        int i5 = i3 - i;
        int paddingRight = i5 - getPaddingRight();
        int paddingRight2 = (i5 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        i5 = this.mGravity & 112;
        int i6 = this.mGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if (i5 == 16) {
            paddingTop = (((i4 - i2) - r6.mTotalLength) / 2) + getPaddingTop();
        } else if (i5 != 80) {
            paddingTop = getPaddingTop();
        } else {
            paddingTop = ((getPaddingTop() + i4) - i2) - r6.mTotalLength;
        }
        int i7 = 0;
        while (i7 < virtualChildCount) {
            int i8;
            View virtualChildAt = getVirtualChildAt(i7);
            if (virtualChildAt == null) {
                paddingTop += measureNullChild(i7);
            } else if (virtualChildAt.getVisibility() != 8) {
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                int measuredHeight = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams = (LayoutParams) virtualChildAt.getLayoutParams();
                i8 = layoutParams.gravity;
                if (i8 < 0) {
                    i8 = i6;
                }
                i8 = GravityCompat.getAbsoluteGravity(i8, ViewCompat.getLayoutDirection(this)) & 7;
                if (i8 == 1) {
                    i8 = ((((paddingRight2 - measuredWidth) / 2) + paddingLeft) + layoutParams.leftMargin) - layoutParams.rightMargin;
                } else if (i8 != 5) {
                    i8 = layoutParams.leftMargin + paddingLeft;
                } else {
                    i8 = (paddingRight - measuredWidth) - layoutParams.rightMargin;
                }
                i5 = i8;
                if (hasDividerBeforeChildAt(i7)) {
                    paddingTop += r6.mDividerHeight;
                }
                int i9 = paddingTop + layoutParams.topMargin;
                LayoutParams layoutParams2 = layoutParams;
                setChildFrame(virtualChildAt, i5, i9 + getLocationOffset(virtualChildAt), measuredWidth, measuredHeight);
                i7 += getChildrenSkipCount(virtualChildAt, i7);
                paddingTop = i9 + ((measuredHeight + layoutParams2.bottomMargin) + getNextLocationOffset(virtualChildAt));
                i8 = 1;
                i7 += i8;
            }
            i8 = 1;
            i7 += i8;
        }
    }

    void layoutHorizontal(int i, int i2, int i3, int i4) {
        int paddingLeft;
        int i5;
        int i6;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int paddingTop = getPaddingTop();
        int i7 = i4 - i2;
        int paddingBottom = i7 - getPaddingBottom();
        int paddingBottom2 = (i7 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        i7 = this.mGravity & GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        int i8 = this.mGravity & 112;
        boolean z = this.mBaselineAligned;
        int[] iArr = this.mMaxAscent;
        int[] iArr2 = this.mMaxDescent;
        i7 = GravityCompat.getAbsoluteGravity(i7, ViewCompat.getLayoutDirection(this));
        int i9 = 1;
        if (i7 == 1) {
            paddingLeft = (((i3 - i) - r6.mTotalLength) / 2) + getPaddingLeft();
        } else if (i7 != 5) {
            paddingLeft = getPaddingLeft();
        } else {
            paddingLeft = ((getPaddingLeft() + i3) - i) - r6.mTotalLength;
        }
        if (isLayoutRtl) {
            i5 = virtualChildCount - 1;
            i6 = -1;
        } else {
            i5 = 0;
            i6 = 1;
        }
        i7 = 0;
        while (i7 < virtualChildCount) {
            int i10;
            int i11;
            int i12;
            int i13;
            int i14 = i5 + (i6 * i7);
            View virtualChildAt = getVirtualChildAt(i14);
            if (virtualChildAt == null) {
                paddingLeft += measureNullChild(i14);
                i10 = i9;
                i11 = paddingTop;
                i12 = virtualChildCount;
                i13 = i8;
            } else if (virtualChildAt.getVisibility() != 8) {
                int i15;
                View view;
                LayoutParams layoutParams;
                View view2;
                int measuredWidth = virtualChildAt.getMeasuredWidth();
                i9 = virtualChildAt.getMeasuredHeight();
                LayoutParams layoutParams2 = (LayoutParams) virtualChildAt.getLayoutParams();
                if (z) {
                    i15 = i7;
                    i12 = virtualChildCount;
                    if (layoutParams2.height != -1) {
                        i7 = virtualChildAt.getBaseline();
                        virtualChildCount = layoutParams2.gravity;
                        if (virtualChildCount < 0) {
                            virtualChildCount = i8;
                        }
                        virtualChildCount &= 112;
                        i13 = i8;
                        if (virtualChildCount != 16) {
                            i10 = 1;
                            i7 = ((((paddingBottom2 - i9) / 2) + paddingTop) + layoutParams2.topMargin) - layoutParams2.bottomMargin;
                        } else if (virtualChildCount == 48) {
                            if (virtualChildCount == 80) {
                                i7 = paddingTop;
                            } else {
                                virtualChildCount = (paddingBottom - i9) - layoutParams2.bottomMargin;
                                if (i7 != -1) {
                                    virtualChildCount -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - i7);
                                }
                                i7 = virtualChildCount;
                            }
                            i10 = 1;
                        } else {
                            virtualChildCount = layoutParams2.topMargin + paddingTop;
                            if (i7 == -1) {
                                i10 = 1;
                                virtualChildCount += iArr[1] - i7;
                            } else {
                                i10 = 1;
                            }
                            i7 = virtualChildCount;
                        }
                        if (hasDividerBeforeChildAt(i14)) {
                            paddingLeft += r6.mDividerWidth;
                        }
                        virtualChildCount = layoutParams2.leftMargin + paddingLeft;
                        view = virtualChildAt;
                        i8 = i14;
                        i14 = virtualChildCount + getLocationOffset(virtualChildAt);
                        r19 = i15;
                        i11 = paddingTop;
                        layoutParams = layoutParams2;
                        setChildFrame(virtualChildAt, i14, i7, measuredWidth, i9);
                        view2 = view;
                        i7 = r19 + getChildrenSkipCount(view2, i8);
                        paddingLeft = virtualChildCount + ((measuredWidth + layoutParams.rightMargin) + getNextLocationOffset(view2));
                        i7++;
                        i9 = i10;
                        virtualChildCount = i12;
                        i8 = i13;
                        paddingTop = i11;
                    }
                } else {
                    i15 = i7;
                    i12 = virtualChildCount;
                }
                i7 = -1;
                virtualChildCount = layoutParams2.gravity;
                if (virtualChildCount < 0) {
                    virtualChildCount = i8;
                }
                virtualChildCount &= 112;
                i13 = i8;
                if (virtualChildCount != 16) {
                    i10 = 1;
                    i7 = ((((paddingBottom2 - i9) / 2) + paddingTop) + layoutParams2.topMargin) - layoutParams2.bottomMargin;
                } else if (virtualChildCount == 48) {
                    virtualChildCount = layoutParams2.topMargin + paddingTop;
                    if (i7 == -1) {
                        i10 = 1;
                    } else {
                        i10 = 1;
                        virtualChildCount += iArr[1] - i7;
                    }
                    i7 = virtualChildCount;
                } else {
                    if (virtualChildCount == 80) {
                        virtualChildCount = (paddingBottom - i9) - layoutParams2.bottomMargin;
                        if (i7 != -1) {
                            virtualChildCount -= iArr2[2] - (virtualChildAt.getMeasuredHeight() - i7);
                        }
                        i7 = virtualChildCount;
                    } else {
                        i7 = paddingTop;
                    }
                    i10 = 1;
                }
                if (hasDividerBeforeChildAt(i14)) {
                    paddingLeft += r6.mDividerWidth;
                }
                virtualChildCount = layoutParams2.leftMargin + paddingLeft;
                view = virtualChildAt;
                i8 = i14;
                i14 = virtualChildCount + getLocationOffset(virtualChildAt);
                r19 = i15;
                i11 = paddingTop;
                layoutParams = layoutParams2;
                setChildFrame(virtualChildAt, i14, i7, measuredWidth, i9);
                view2 = view;
                i7 = r19 + getChildrenSkipCount(view2, i8);
                paddingLeft = virtualChildCount + ((measuredWidth + layoutParams.rightMargin) + getNextLocationOffset(view2));
                i7++;
                i9 = i10;
                virtualChildCount = i12;
                i8 = i13;
                paddingTop = i11;
            } else {
                r19 = i7;
                i11 = paddingTop;
                i12 = virtualChildCount;
                i13 = i8;
                i10 = 1;
            }
            i7++;
            i9 = i10;
            virtualChildCount = i12;
            i8 = i13;
            paddingTop = i11;
        }
    }

    private void setChildFrame(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    public void setOrientation(int i) {
        if (this.mOrientation != i) {
            this.mOrientation = i;
            requestLayout();
        }
    }

    public int getOrientation() {
        return this.mOrientation;
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            if ((GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK & i) == 0) {
                i |= GravityCompat.START;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.mGravity = i;
            requestLayout();
        }
    }

    public int getGravity() {
        return this.mGravity;
    }

    public void setHorizontalGravity(int i) {
        i &= GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK;
        if ((GravityCompat.RELATIVE_HORIZONTAL_GRAVITY_MASK & this.mGravity) != i) {
            this.mGravity = i | (this.mGravity & -8388616);
            requestLayout();
        }
    }

    public void setVerticalGravity(int i) {
        i &= 112;
        if ((this.mGravity & 112) != i) {
            this.mGravity = i | (this.mGravity & -113);
            requestLayout();
        }
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    protected LayoutParams generateDefaultLayoutParams() {
        if (this.mOrientation == 0) {
            return new LayoutParams(-2, -2);
        }
        return this.mOrientation == 1 ? new LayoutParams(-1, -2) : null;
    }

    protected LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    protected boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(LinearLayoutCompat.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(LinearLayoutCompat.class.getName());
    }
}
