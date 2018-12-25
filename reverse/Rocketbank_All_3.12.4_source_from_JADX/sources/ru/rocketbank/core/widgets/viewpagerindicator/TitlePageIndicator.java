package ru.rocketbank.core.widgets.viewpagerindicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;

public class TitlePageIndicator extends View implements PageIndicator {
    private final Rect mBounds;
    private int mCurrentPage;
    private float mPageOffset;
    private final Paint mPaintText;
    private int mScrollState;

    /* renamed from: ru.rocketbank.core.widgets.viewpagerindicator.TitlePageIndicator$1 */
    static /* synthetic */ class C08571 {
        /* renamed from: $SwitchMap$ru$rocketbank$core$widgets$viewpagerindicator$TitlePageIndicator$IndicatorStyle */
        static final /* synthetic */ int[] f458x4d202f2 = new int[IndicatorStyle.values().length];

        static {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r0 = ru.rocketbank.core.widgets.viewpagerindicator.TitlePageIndicator.IndicatorStyle.values();
            r0 = r0.length;
            r0 = new int[r0];
            f458x4d202f2 = r0;
            r0 = f458x4d202f2;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r1 = ru.rocketbank.core.widgets.viewpagerindicator.TitlePageIndicator.IndicatorStyle.Triangle;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0014 }
            r2 = 1;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0014 }
        L_0x0014:
            r0 = f458x4d202f2;	 Catch:{ NoSuchFieldError -> 0x001f }
            r1 = ru.rocketbank.core.widgets.viewpagerindicator.TitlePageIndicator.IndicatorStyle.Underline;	 Catch:{ NoSuchFieldError -> 0x001f }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x001f }
            r2 = 2;	 Catch:{ NoSuchFieldError -> 0x001f }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x001f }
        L_0x001f:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.widgets.viewpagerindicator.TitlePageIndicator.1.<clinit>():void");
        }
    }

    public enum IndicatorStyle {
        None(0),
        Triangle(1),
        Underline(2);
        
        public final int value;

        private IndicatorStyle(int i) {
            this.value = i;
        }

        public static IndicatorStyle fromValue(int i) {
            for (IndicatorStyle indicatorStyle : values()) {
                if (indicatorStyle.value == i) {
                    return indicatorStyle;
                }
            }
            return 0;
        }
    }

    public enum LinePosition {
        Bottom(0),
        Top(1);
        
        public final int value;

        private LinePosition(int i) {
            this.value = i;
        }

        public static LinePosition fromValue(int i) {
            for (LinePosition linePosition : values()) {
                if (linePosition.value == i) {
                    return linePosition;
                }
            }
            return 0;
        }
    }

    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new C08581();
        int currentPage;

        /* renamed from: ru.rocketbank.core.widgets.viewpagerindicator.TitlePageIndicator$SavedState$1 */
        static class C08581 implements Creator<SavedState> {
            C08581() {
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

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent) != null ? true : null;
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
        if (this.mScrollState == 0) {
            this.mCurrentPage = i;
            invalidate();
        }
    }

    protected void onMeasure(int i, int i2) {
        i = MeasureSpec.getSize(i);
        if (MeasureSpec.getMode(i2) == 1073741824) {
            i2 = (float) MeasureSpec.getSize(i2);
        } else {
            this.mBounds.setEmpty();
            this.mBounds.bottom = (int) (this.mPaintText.descent() - this.mPaintText.ascent());
            i2 = ((((float) (this.mBounds.bottom - this.mBounds.top)) + 0) + 0) + 0;
            if (IndicatorStyle.None != null) {
                i2 += 0;
            }
        }
        setMeasuredDimension(i, (int) i2);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mCurrentPage = savedState.currentPage;
        requestLayout();
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        savedState.currentPage = this.mCurrentPage;
        return savedState;
    }
}
