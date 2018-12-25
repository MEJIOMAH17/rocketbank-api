package ru.rocketbank.core.widgets.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.r2d2.C0859R;

public class CirclePageIndicator extends View implements PageIndicator {
    private int mActivePointerId;
    private boolean mCentered;
    private int mCurrentPage;
    private boolean mIsDragging;
    private float mLastMotionX;
    private int mOrientation;
    private float mPageOffset;
    private final Paint mPaintFill;
    private final Paint mPaintPageFill;
    private final Paint mPaintStroke;
    private float mRadius;
    private int mScrollState;
    private boolean mSnap;
    private int mSnapPage;
    private int mTouchSlop;
    private ViewPager mViewPager;

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new C08561();
        int currentPage;

        /* renamed from: ru.rocketbank.core.widgets.viewpagerindicator.CirclePageIndicator$SavedState$1 */
        static class C08561 implements Creator<SavedState> {
            C08561() {
            }

            public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                return new SavedState[i];
            }

            public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.currentPage = parcel.readInt();
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.currentPage);
        }
    }

    public CirclePageIndicator(Context context) {
        this(context, null);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0859R.attr.vpiCirclePageIndicatorStyle);
    }

    public CirclePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPaintPageFill = new Paint(1);
        this.mPaintStroke = new Paint(1);
        this.mPaintFill = new Paint(1);
        this.mActivePointerId = -1;
        this.mLastMotionX = -1.0f;
        if (!isInEditMode()) {
            Resources resources = getResources();
            int color = resources.getColor(C0859R.color.default_circle_indicator_page_color);
            int color2 = resources.getColor(C0859R.color.default_circle_indicator_fill_color);
            int integer = resources.getInteger(C0859R.integer.default_circle_indicator_orientation);
            int color3 = resources.getColor(C0859R.color.default_circle_indicator_stroke_color);
            float dimension = resources.getDimension(C0859R.dimen.default_circle_indicator_stroke_width);
            float dimension2 = resources.getDimension(C0859R.dimen.default_circle_indicator_radius);
            boolean z = resources.getBoolean(C0859R.bool.default_circle_indicator_centered);
            boolean z2 = resources.getBoolean(C0859R.bool.default_circle_indicator_snap);
            attributeSet = context.obtainStyledAttributes(attributeSet, C1328R.styleable.CirclePageIndicator, i, 0);
            this.mCentered = attributeSet.getBoolean(C1328R.styleable.CirclePageIndicator_centered, z);
            this.mOrientation = attributeSet.getInt(C1328R.styleable.CirclePageIndicator_android_orientation, integer);
            this.mPaintPageFill.setStyle(Style.FILL);
            this.mPaintPageFill.setColor(attributeSet.getColor(C1328R.styleable.CirclePageIndicator_pageColor, color));
            this.mPaintStroke.setStyle(Style.STROKE);
            this.mPaintStroke.setColor(attributeSet.getColor(C1328R.styleable.CirclePageIndicator_strokeColor, color3));
            this.mPaintStroke.setStrokeWidth(attributeSet.getDimension(C1328R.styleable.CirclePageIndicator_strokeWidth, dimension));
            this.mPaintFill.setStyle(Style.FILL);
            this.mPaintFill.setColor(attributeSet.getColor(C1328R.styleable.CirclePageIndicator_fillColor, color2));
            this.mRadius = attributeSet.getDimension(C1328R.styleable.CirclePageIndicator_radius, dimension2);
            this.mSnap = attributeSet.getBoolean(C1328R.styleable.CirclePageIndicator_snap, z2);
            i = attributeSet.getDrawable(C1328R.styleable.CirclePageIndicator_android_background);
            if (i != 0) {
                setBackgroundDrawable(i);
            }
            attributeSet.recycle();
            this.mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
        }
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mViewPager != null) {
            int count = this.mViewPager.getAdapter().getCount();
            if (count != 0) {
                if (this.mCurrentPage >= count) {
                    count--;
                    if (this.mViewPager == null) {
                        throw new IllegalStateException("ViewPager has not been bound.");
                    }
                    this.mViewPager.setCurrentItem(count);
                    this.mCurrentPage = count;
                    invalidate();
                    return;
                }
                int width;
                int paddingLeft;
                int paddingRight;
                int paddingTop;
                if (this.mOrientation == 0) {
                    width = getWidth();
                    paddingLeft = getPaddingLeft();
                    paddingRight = getPaddingRight();
                    paddingTop = getPaddingTop();
                } else {
                    width = getHeight();
                    paddingLeft = getPaddingTop();
                    paddingRight = getPaddingBottom();
                    paddingTop = getPaddingLeft();
                }
                float f = this.mRadius * 3.0f;
                float f2 = ((float) paddingTop) + this.mRadius;
                float f3 = ((float) paddingLeft) + this.mRadius;
                if (this.mCentered) {
                    f3 += (((float) ((width - paddingLeft) - paddingRight)) / 2.0f) - ((((float) count) * f) / 2.0f);
                }
                float f4 = this.mRadius;
                if (this.mPaintStroke.getStrokeWidth() > BitmapDescriptorFactory.HUE_RED) {
                    f4 -= this.mPaintStroke.getStrokeWidth() / 2.0f;
                }
                for (paddingLeft = 0; paddingLeft < count; paddingLeft++) {
                    float f5;
                    float f6 = (((float) paddingLeft) * f) + f3;
                    if (this.mOrientation == 0) {
                        f5 = f2;
                    } else {
                        f5 = f6;
                        f6 = f2;
                    }
                    if (this.mPaintPageFill.getAlpha() > 0) {
                        canvas.drawCircle(f6, f5, f4, this.mPaintPageFill);
                    }
                    if (f4 != this.mRadius) {
                        canvas.drawCircle(f6, f5, this.mRadius, this.mPaintStroke);
                    }
                }
                float f7 = ((float) (this.mSnap ? this.mSnapPage : this.mCurrentPage)) * f;
                if (!this.mSnap) {
                    f7 += this.mPageOffset * f;
                }
                if (this.mOrientation == 0) {
                    f7 += f3;
                } else {
                    float f8 = f2;
                    f2 = f7 + f3;
                    f7 = f8;
                }
                canvas.drawCircle(f7, f2, this.mRadius, this.mPaintFill);
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        int i = 0;
        if (this.mViewPager != null) {
            if (this.mViewPager.getAdapter().getCount() != 0) {
                int action = motionEvent.getAction() & 255;
                switch (action) {
                    case 0:
                        this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, 0);
                        this.mLastMotionX = motionEvent.getX();
                        break;
                    case 1:
                    case 3:
                        if (!this.mIsDragging) {
                            int count = this.mViewPager.getAdapter().getCount();
                            float width = (float) getWidth();
                            float f = width / 2.0f;
                            width /= 6.0f;
                            if (this.mCurrentPage > 0 && motionEvent.getX() < f - width) {
                                if (action != 3) {
                                    this.mViewPager.setCurrentItem(this.mCurrentPage - 1);
                                }
                                return true;
                            } else if (this.mCurrentPage < count - 1 && motionEvent.getX() > f + width) {
                                if (action != 3) {
                                    this.mViewPager.setCurrentItem(this.mCurrentPage + 1);
                                }
                                return true;
                            }
                        }
                        this.mIsDragging = false;
                        this.mActivePointerId = -1;
                        if (this.mViewPager.isFakeDragging() != null) {
                            this.mViewPager.endFakeDrag();
                            break;
                        }
                        break;
                    case 2:
                        motionEvent = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId));
                        float f2 = motionEvent - this.mLastMotionX;
                        if (!this.mIsDragging && Math.abs(f2) > ((float) this.mTouchSlop)) {
                            this.mIsDragging = true;
                        }
                        if (this.mIsDragging) {
                            this.mLastMotionX = motionEvent;
                            if (!(this.mViewPager.isFakeDragging() == null && this.mViewPager.beginFakeDrag() == null)) {
                                this.mViewPager.fakeDragBy(f2);
                                break;
                            }
                        }
                        break;
                    case 5:
                        action = MotionEventCompat.getActionIndex(motionEvent);
                        this.mLastMotionX = MotionEventCompat.getX(motionEvent, action);
                        this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, action);
                        break;
                    case 6:
                        action = MotionEventCompat.getActionIndex(motionEvent);
                        if (MotionEventCompat.getPointerId(motionEvent, action) == this.mActivePointerId) {
                            if (action == 0) {
                                i = 1;
                            }
                            this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, i);
                        }
                        this.mLastMotionX = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId));
                        break;
                    default:
                        break;
                }
                return true;
            }
        }
        return false;
    }

    public final void setViewPager(ViewPager viewPager) {
        if (this.mViewPager != viewPager) {
            if (this.mViewPager != null) {
                this.mViewPager.setOnPageChangeListener(null);
            }
            if (viewPager.getAdapter() == null) {
                throw new IllegalStateException("ViewPager does not have adapter instance.");
            }
            this.mViewPager = viewPager;
            this.mViewPager.setOnPageChangeListener(this);
            invalidate();
        }
    }

    public void onPageScrollStateChanged(int i) {
        this.mScrollState = i;
    }

    public void onPageScrolled(int i, float f, int i2) {
        this.mCurrentPage = i;
        this.mPageOffset = f;
        invalidate();
    }

    public void onPageSelected(int i) {
        if (this.mSnap || this.mScrollState == 0) {
            this.mCurrentPage = i;
            this.mSnapPage = i;
            invalidate();
        }
    }

    protected void onMeasure(int i, int i2) {
        if (this.mOrientation == 0) {
            setMeasuredDimension(measureLong(i), measureShort(i2));
        } else {
            setMeasuredDimension(measureShort(i), measureLong(i2));
        }
    }

    private int measureLong(int i) {
        int mode = MeasureSpec.getMode(i);
        i = MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return i;
        }
        if (this.mViewPager == null) {
            return i;
        }
        int count = this.mViewPager.getAdapter().getCount();
        count = (int) (((((float) (getPaddingLeft() + getPaddingRight())) + (((float) (count << 1)) * this.mRadius)) + (((float) (count - 1)) * this.mRadius)) + 1.0f);
        return mode == Integer.MIN_VALUE ? Math.min(count, i) : count;
    }

    private int measureShort(int i) {
        int mode = MeasureSpec.getMode(i);
        i = MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return i;
        }
        int paddingTop = (int) ((((2.0f * this.mRadius) + ((float) getPaddingTop())) + ((float) getPaddingBottom())) + 1.0f);
        return mode == Integer.MIN_VALUE ? Math.min(paddingTop, i) : paddingTop;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mCurrentPage = savedState.currentPage;
        this.mSnapPage = savedState.currentPage;
        requestLayout();
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentPage = this.mCurrentPage;
        return savedState;
    }
}
