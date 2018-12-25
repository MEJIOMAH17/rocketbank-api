package ru.rocketbank.core.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.support.v4.util.LongSparseArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.widget.OverScroller;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import ru.rocketbank.core.C1328R;
import ru.rocketbank.core.manager.TypefaceManager;

public class BarChartView extends View {
    private int activePointerId = -1;
    private Adapter adapter;
    DataSetObserver adaptetObservable = new C08371();
    private float barContentBottom;
    private float barContentHeight;
    private float barContentLeft;
    private Paint barPaint;
    private int barWidth;
    private float contentTop;
    private float contentWidth;
    private int drawableAtScreenCount;
    private Adapter editorAdapter = new DemoAdapter();
    float firstLabelTextStartOffset;
    private int hintColor;
    private float hintPadding;
    private Paint hintPaint;
    private int hintSize;
    private Typeface hintTypeface;
    private float hintWidth;
    private boolean isBeingDragged = false;
    private float labelBottom;
    private int labelSpaceBetween;
    private int labelSpaceTop;
    private int labelTextColor;
    private int labelTextSize;
    private Typeface labelTypeface;
    private int labelWidth;
    private LongSparseArray<Integer> labelWidthCache;
    private int lastMotionX;
    private int lastMotionY;
    private int lineColor;
    private float[] lineCoords;
    private float lineHeight;
    private Paint linePaint;
    private int linesCount = 6;
    private Paint mLabelTextPaint;
    private int maximumVelocity;
    private int minimumVelocity;
    private int overflingDistance;
    private int overscrollDistance;
    private RectF[] rectFArray;
    private float roundX;
    private float roundY;
    private OverScroller scroller;
    private int touchSlop;
    private VelocityTracker velocityTracker;
    private float visibleContentWidth;

    /* renamed from: ru.rocketbank.core.widgets.BarChartView$1 */
    class C08371 extends DataSetObserver {
        C08371() {
        }

        public final void onChanged() {
            super.onChanged();
            BarChartView.this.refreshContent(false);
        }

        public final void onInvalidated() {
            super.onInvalidated();
            BarChartView.this.refreshContent(true);
        }
    }

    public static abstract class Adapter {
        private final DataSetObservable dataObservable = new DataSetObservable();

        public static double getNearMax5(double d) {
            if (d < 1000.0d) {
                return 1000.0d;
            }
            int i = 0;
            double d2 = 5000.0d;
            while (d2 < d) {
                i++;
                d2 = (double) (i * 5000);
            }
            return d2;
        }

        public abstract int getColor(int i);

        public abstract int getCount();

        public abstract String getHit(int i);

        public abstract long getId(int i);

        public abstract String getLabelName(int i);

        public abstract float getProportialSize(int i);

        public abstract String getValue(int i);

        public void notifyDataSetChanged() {
            this.dataObservable.notifyChanged();
        }

        public void notifyDataSetInvalidated() {
            this.dataObservable.notifyInvalidated();
        }

        DataSetObservable getObservable() {
            return this.dataObservable;
        }
    }

    class DemoAdapter extends Adapter {
        private SimpleDateFormat dateFormat = new SimpleDateFormat("MMM");
        private final float percent;
        private float[] values = new float[]{1000.0f, 2000.0f, 3000.0f, 4000.0f, 5000.0f, 6000.0f, 7000.0f, 1000.0f, 2000.0f, 3000.0f, 4000.0f, 5000.0f, 6000.0f, 7000.0f, 1000.0f, 2000.0f, 3000.0f, 4000.0f, 5000.0f, 6000.0f, 7000.0f};

        public final String getHit(int i) {
            return "0x0000";
        }

        public final long getId(int i) {
            return 0;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public DemoAdapter() {
            /*
            r2 = this;
            ru.rocketbank.core.widgets.BarChartView.this = r3;
            r2.<init>();
            r3 = new java.text.SimpleDateFormat;
            r0 = "MMM";
            r3.<init>(r0);
            r2.dateFormat = r3;
            r3 = 21;
            r3 = new float[r3];
            r3 = {1148846080, 1157234688, 1161527296, 1165623296, 1167867904, 1169915904, 1171963904, 1148846080, 1157234688, 1161527296, 1165623296, 1167867904, 1169915904, 1171963904, 1148846080, 1157234688, 1161527296, 1165623296, 1167867904, 1169915904, 1171963904};
            r2.values = r3;
            r3 = 0;
            r0 = 0;
        L_0x0019:
            r1 = r2.values;
            r1 = r1.length;
            if (r0 >= r1) goto L_0x002d;
        L_0x001e:
            r1 = r2.values;
            r1 = r1[r0];
            r1 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1));
            if (r1 >= 0) goto L_0x002a;
        L_0x0026:
            r3 = r2.values;
            r3 = r3[r0];
        L_0x002a:
            r0 = r0 + 1;
            goto L_0x0019;
        L_0x002d:
            r0 = 1120403456; // 0x42c80000 float:100.0 double:5.53552857E-315;
            r3 = r3 / r0;
            r2.percent = r3;
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.widgets.BarChartView.DemoAdapter.<init>(ru.rocketbank.core.widgets.BarChartView):void");
        }

        public final float getProportialSize(int i) {
            return (this.values[i] / this.percent) / 1120403456;
        }

        public final int getColor(int i) {
            double proportialSize = (double) getProportialSize(i);
            if (proportialSize >= 0.0d && proportialSize < 0.15d) {
                return -152013;
            }
            if (proportialSize >= 0.15d && proportialSize < 0.25d) {
                return 267746087;
            }
            if (proportialSize >= 0.25d && proportialSize < 0.4d) {
                return -960711;
            }
            if (proportialSize >= 0.4d && proportialSize < 0.55d) {
                return -2147525;
            }
            if (proportialSize < 0.55d || proportialSize >= 0.7d) {
                return (proportialSize < 0.7d || proportialSize >= 0.85d) ? -4972945 : -3389822;
            } else {
                return -2014103;
            }
        }

        public final String getLabelName(int i) {
            Calendar instance = Calendar.getInstance();
            instance.set(2, i);
            return this.dateFormat.format(new Date(instance.getTimeInMillis()));
        }

        public final String getValue(int i) {
            return String.valueOf(this.values[i]);
        }

        public final int getCount() {
            return this.values.length;
        }
    }

    public BarChartView(Context context) {
        super(context);
        init$51fe1fdb(context, null);
    }

    public BarChartView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init$51fe1fdb(context, attributeSet);
    }

    public BarChartView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init$51fe1fdb(context, attributeSet);
    }

    @TargetApi(21)
    public BarChartView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init$51fe1fdb(context, attributeSet);
    }

    private void init$51fe1fdb(Context context, AttributeSet attributeSet) {
        this.scroller = new OverScroller(getContext());
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.touchSlop = viewConfiguration.getScaledTouchSlop();
        this.minimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.maximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.overscrollDistance = viewConfiguration.getScaledOverscrollDistance();
        this.overflingDistance = viewConfiguration.getScaledOverflingDistance();
        this.labelWidthCache = new LongSparseArray();
        context = context.getTheme().obtainStyledAttributes(attributeSet, C1328R.styleable.BarChartView, 0, 0);
        try {
            this.labelSpaceBetween = context.getDimensionPixelSize(C1328R.styleable.BarChartView_space_between_label, 10);
            this.labelTextSize = context.getDimensionPixelSize(C1328R.styleable.BarChartView_label_text_size, 10);
            this.labelSpaceTop = context.getDimensionPixelSize(C1328R.styleable.BarChartView_space_label_top, 10);
            this.hintSize = context.getDimensionPixelSize(C1328R.styleable.BarChartView_hint_size, 10);
            this.hintColor = context.getColor(C1328R.styleable.BarChartView_hint_color, -13421773);
            this.lineColor = context.getColor(C1328R.styleable.BarChartView_line_color, -13421773);
            this.labelTextColor = context.getColor(C1328R.styleable.BarChartView_label_text_color, -13421773);
            this.labelWidth = context.getDimensionPixelSize(C1328R.styleable.BarChartView_label_width, 10);
            this.barWidth = context.getDimensionPixelSize(C1328R.styleable.BarChartView_bar_width, 10);
            this.hintPadding = (float) context.getDimensionPixelSize(C1328R.styleable.BarChartView_hint_padding, 0);
            this.roundX = (float) context.getDimensionPixelSize(C1328R.styleable.BarChartView_bar_round_x, 0);
            this.roundY = (float) context.getDimensionPixelSize(C1328R.styleable.BarChartView_bar_round_y, 0);
            this.linesCount = context.getInteger(C1328R.styleable.BarChartView_hint_count, 6);
            if (isInEditMode() == null) {
                int i = context.getInt(C1328R.styleable.BarChartView_label_font, -1);
                int i2 = context.getInt(C1328R.styleable.BarChartView_hint_font, -1);
                this.labelTypeface = TypefaceManager.getInstance().getTypeface(i, getContext());
                this.hintTypeface = TypefaceManager.getInstance().getTypeface(i2, getContext());
            }
            context.recycle();
            this.barPaint = new Paint(1);
            this.barPaint.setColor(-65536);
            this.mLabelTextPaint = new Paint(1);
            this.mLabelTextPaint.setColor(this.labelTextColor);
            this.mLabelTextPaint.setTextSize((float) this.labelTextSize);
            this.mLabelTextPaint.setStyle(Style.STROKE);
            this.hintPaint = new Paint(1);
            this.hintPaint.setColor(this.hintColor);
            this.hintPaint.setTextSize((float) this.hintSize);
            this.hintPaint.setStyle(Style.STROKE);
            if (this.labelTypeface != null) {
                this.mLabelTextPaint.setTypeface(this.labelTypeface);
            }
            if (this.hintTypeface != null) {
                this.hintPaint.setTypeface(this.hintTypeface);
            }
            if (isInEditMode() != null) {
                setAdapter(this.editorAdapter);
            }
            this.lineHeight = TypedValue.applyDimension(1, 1.0f, getResources().getDisplayMetrics());
        } catch (Throwable th) {
            context.recycle();
        }
    }

    public final void refreshContent(boolean z) {
        int i;
        float measureText;
        if (this.adapter != null) {
            float f = BitmapDescriptorFactory.HUE_RED;
            this.hintWidth = BitmapDescriptorFactory.HUE_RED;
            for (i = 0; ((float) i) < this.lineHeight; i++) {
                measureText = this.hintPaint.measureText(this.adapter.getHit(i));
                if (this.hintWidth < measureText) {
                    this.hintWidth = measureText;
                }
            }
            this.firstLabelTextStartOffset = ((float) ((this.labelWidth - this.barWidth) / 2)) - ((((float) this.labelWidth) - this.mLabelTextPaint.measureText(this.adapter.getLabelName(0))) / 2.0f);
            this.firstLabelTextStartOffset = Math.max(this.firstLabelTextStartOffset, BitmapDescriptorFactory.HUE_RED);
            this.visibleContentWidth = (((float) ((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight())) - this.hintWidth) - this.hintPadding;
            this.contentWidth = ((float) ((this.labelWidth + this.labelSpaceBetween) * this.adapter.getCount())) + this.firstLabelTextStartOffset;
            float f2 = this.contentWidth - this.visibleContentWidth;
            if (f2 >= BitmapDescriptorFactory.HUE_RED) {
                f = f2;
            }
            if (((float) getScrollX()) > f) {
                setScrollX((int) f);
            } else if (z) {
                setScrollX((int) f);
            }
        }
        this.contentTop = (float) (getPaddingTop() + getTop());
        this.barContentLeft = (float) getPaddingLeft();
        this.labelBottom = (((float) getBottom()) - this.contentTop) - ((float) this.labelTextSize);
        this.barContentBottom = this.labelBottom - ((float) this.labelSpaceTop);
        this.barContentHeight = this.barContentBottom - ((float) getPaddingTop());
        z = this.barContentHeight / ((float) (this.linesCount - 1));
        this.lineCoords = new float[(this.linesCount << 2)];
        for (int i2 = 0; i2 < this.linesCount; i2++) {
            i = i2 << 2;
            measureText = ((float) getPaddingTop()) + (((float) i2) * z);
            this.lineCoords[i] = (this.barContentLeft + this.hintWidth) + this.hintPadding;
            this.lineCoords[i + 1] = measureText;
            this.lineCoords[i + 2] = (float) (getRight() - getPaddingRight());
            this.lineCoords[i + 3] = measureText;
        }
        this.linePaint = new Paint();
        this.linePaint.setColor(this.lineColor);
        this.drawableAtScreenCount = (int) (this.visibleContentWidth / ((float) (this.labelWidth + this.labelSpaceBetween)));
        if (this.drawableAtScreenCount >= false) {
            this.drawableAtScreenCount = 0;
        } else {
            this.drawableAtScreenCount += 3;
        }
        allocateRectF();
        invalidate();
    }

    private void allocateRectF() {
        this.rectFArray = new RectF[this.drawableAtScreenCount];
        for (int i = 0; i < this.rectFArray.length; i++) {
            this.rectFArray[i] = new RectF();
        }
    }

    public final void setAdapter(Adapter adapter) {
        if (this.adapter != null) {
            this.adapter.getObservable().unregisterObserver(this.adaptetObservable);
        }
        this.adapter = adapter;
        if (adapter != null) {
            adapter.getObservable().registerObserver(this.adaptetObservable);
        }
        refreshContent(true);
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        refreshContent(0);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void onDraw(android.graphics.Canvas r16) {
        /*
        r15 = this;
        r0 = r15;
        r7 = r16;
        r1 = r0.getScrollX();
        r2 = (float) r1;
        r1 = r0.getMeasuredWidth();
        r3 = r0.getScrollX();
        r1 = r1 + r3;
        r4 = (float) r1;
        r1 = r0.getMeasuredHeight();
        r5 = (float) r1;
        r6 = android.graphics.Region.Op.REPLACE;
        r3 = 0;
        r1 = r7;
        r1.clipRect(r2, r3, r4, r5, r6);
        r1 = r0.labelWidth;
        r2 = r0.labelSpaceBetween;
        r1 = r1 + r2;
        r8 = (float) r1;
        r1 = r0.getScrollX();
        r1 = (float) r1;
        r1 = r1 / r8;
        r9 = (int) r1;
        r1 = (float) r9;
        r10 = r1 * r8;
        r1 = r0.drawableAtScreenCount;
        r2 = r0.adapter;
        r11 = 0;
        if (r2 == 0) goto L_0x003e;
    L_0x0035:
        r2 = r0.adapter;
        r2 = r2.getCount();
        r2 = r2 - r9;
        if (r2 >= 0) goto L_0x003f;
    L_0x003e:
        r2 = r11;
    L_0x003f:
        if (r1 <= r2) goto L_0x0042;
    L_0x0041:
        r1 = r2;
    L_0x0042:
        r2 = r0.adapter;
        if (r2 == 0) goto L_0x0078;
    L_0x0046:
        r2 = r11;
    L_0x0047:
        r3 = r0.linesCount;
        if (r2 >= r3) goto L_0x0076;
    L_0x004b:
        r3 = r2 << 2;
        r4 = r0.adapter;
        r5 = r0.linesCount;
        r5 = r5 - r2;
        r5 = r5 + -1;
        r4 = r4.getHit(r5);
        r5 = r0.getPaddingLeft();
        r6 = r0.getScrollX();
        r5 = r5 + r6;
        r5 = (float) r5;
        r6 = r0.lineCoords;
        r3 = r3 + 1;
        r3 = r6[r3];
        r6 = r0.hintSize;
        r6 = r6 / 2;
        r6 = (float) r6;
        r3 = r3 + r6;
        r6 = r0.hintPaint;
        r7.drawText(r4, r5, r3, r6);
        r2 = r2 + 1;
        goto L_0x0047;
    L_0x0076:
        r12 = r1;
        goto L_0x0079;
    L_0x0078:
        r12 = r11;
    L_0x0079:
        r1 = r0.getPaddingLeft();
        r1 = (float) r1;
        r2 = r0.hintWidth;
        r1 = r1 + r2;
        r2 = r0.hintPadding;
        r13 = r1 + r2;
        r1 = r0.getScrollX();
        r1 = (float) r1;
        r2 = r13 + r1;
        r1 = r0.getPaddingTop();
        r3 = (float) r1;
        r1 = r0.getMeasuredWidth();
        r4 = r0.getPaddingRight();
        r1 = r1 - r4;
        r4 = r0.getScrollX();
        r1 = r1 + r4;
        r4 = (float) r1;
        r1 = r0.getMeasuredHeight();
        r5 = (float) r1;
        r6 = android.graphics.Region.Op.REPLACE;
        r1 = r7;
        r1.clipRect(r2, r3, r4, r5, r6);
        r1 = r0.linePaint;
        if (r1 == 0) goto L_0x00e4;
    L_0x00af:
        r14 = r11;
    L_0x00b0:
        r1 = r0.linesCount;
        if (r14 >= r1) goto L_0x00e4;
    L_0x00b4:
        r1 = r14 << 2;
        r2 = r0.lineCoords;
        r2 = r2[r1];
        r3 = r0.getScrollX();
        r3 = (float) r3;
        r2 = r2 + r3;
        r3 = r0.lineCoords;
        r4 = r1 + 2;
        r3 = r3[r4];
        r4 = r0.getScrollX();
        r4 = (float) r4;
        r4 = r4 + r3;
        r3 = r0.lineCoords;
        r5 = r1 + 1;
        r3 = r3[r5];
        r5 = r0.lineCoords;
        r1 = r1 + 3;
        r1 = r5[r1];
        r5 = r0.lineHeight;
        r5 = r5 + r1;
        r6 = r0.linePaint;
        r1 = r7;
        r1.drawRect(r2, r3, r4, r5, r6);
        r14 = r14 + 1;
        goto L_0x00b0;
    L_0x00e4:
        r10 = r10 + r13;
        r1 = r0.firstLabelTextStartOffset;
        r10 = r10 + r1;
        r1 = r0.adapter;
        if (r1 != 0) goto L_0x00ed;
    L_0x00ec:
        return;
    L_0x00ed:
        if (r11 >= r12) goto L_0x0198;
    L_0x00ef:
        if (r9 >= 0) goto L_0x010d;
    L_0x00f1:
        r1 = new java.lang.IllegalStateException;
        r2 = new java.lang.StringBuilder;
        r3 = "startContentIndex = ";
        r2.<init>(r3);
        r2.append(r9);
        r3 = " count ";
        r2.append(r3);
        r2.append(r12);
        r2 = r2.toString();
        r1.<init>(r2);
        throw r1;
    L_0x010d:
        r1 = r9 + r11;
        r2 = r0.adapter;
        r2 = r2.getColor(r1);
        r3 = r0.adapter;
        r3 = r3.getProportialSize(r1);
        r4 = r0.barContentHeight;
        r4 = r4 * r3;
        r3 = r0.barContentHeight;
        r3 = r3 - r4;
        r4 = r0.getPaddingTop();
        r4 = (float) r4;
        r3 = r3 + r4;
        r4 = r0.barPaint;
        r4.setColor(r2);
        r2 = r0.labelWidth;
        r4 = r0.barWidth;
        r2 = r2 - r4;
        r2 = r2 / 2;
        r2 = (float) r2;
        r2 = r2 + r10;
        r4 = r0.rectFArray;
        r4 = r4.length;
        if (r4 > r11) goto L_0x0159;
    L_0x013a:
        r1 = new java.lang.ArrayIndexOutOfBoundsException;
        r2 = new java.lang.StringBuilder;
        r3 = "No such index ";
        r2.<init>(r3);
        r2.append(r11);
        r3 = " capacity = ";
        r2.append(r3);
        r3 = r0.rectFArray;
        r3 = r3.length;
        r2.append(r3);
        r2 = r2.toString();
        r1.<init>(r2);
        throw r1;
    L_0x0159:
        r4 = r0.rectFArray;
        r4 = r4[r11];
        r4.left = r2;
        r4.top = r3;
        r3 = r0.barWidth;
        r3 = (float) r3;
        r2 = r2 + r3;
        r4.right = r2;
        r2 = r0.barContentBottom;
        r4.bottom = r2;
        r2 = r0.roundX;
        r3 = r0.roundY;
        r5 = r0.barPaint;
        r7.drawRoundRect(r4, r2, r3, r5);
        r2 = r0.adapter;
        r1 = r2.getLabelName(r1);
        r2 = r0.mLabelTextPaint;
        r2 = r2.measureText(r1);
        r3 = r0.labelWidth;
        r3 = (float) r3;
        r3 = r3 - r2;
        r2 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r3 = r3 / r2;
        r3 = r3 + r10;
        r2 = r0.labelBottom;
        r4 = r0.labelTextSize;
        r4 = (float) r4;
        r2 = r2 + r4;
        r4 = r0.mLabelTextPaint;
        r7.drawText(r1, r3, r2, r4);
        r10 = r10 + r8;
        r11 = r11 + 1;
        goto L_0x00ed;
    L_0x0198:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.widgets.BarChartView.onDraw(android.graphics.Canvas):void");
    }

    private int getScrollRange() {
        Adapter adapter = this.adapter;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (adapter != null) {
            f = Math.max(BitmapDescriptorFactory.HUE_RED, this.contentWidth - this.visibleContentWidth);
        }
        StringBuilder stringBuilder = new StringBuilder("Scroll range = ");
        stringBuilder.append(f);
        stringBuilder.append(",  ContentWidth ");
        stringBuilder.append(this.contentWidth);
        stringBuilder.append(", visibleContentWidth ");
        stringBuilder.append(this.visibleContentWidth);
        stringBuilder.append(", getScroll ");
        stringBuilder.append(getScrollX());
        Log.v("DiagramView", stringBuilder.toString());
        return (int) f;
    }

    public void computeScroll() {
        if (this.scroller.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.scroller.getCurrX();
            int currY = this.scroller.getCurrY();
            if (!(scrollX == currX && scrollY == currY)) {
                int scrollRange = getScrollRange();
                getOverScrollMode();
                int i = currY - scrollY;
                overScrollBy(currX - scrollX, i, scrollX, scrollY, scrollRange, 0, this.overflingDistance, 0, false);
                onScrollChanged(getScrollX(), getScrollY(), scrollX, scrollY);
            }
            if (!awakenScrollBars() && VERSION.SDK_INT >= 16) {
                postInvalidateOnAnimation();
            }
        }
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        Log.v("DiagramView", "onGenericMotionEvent");
        if ((motionEvent.getSource() & 2) != 0) {
            if (motionEvent.getAction() == 8) {
                if (!this.isBeingDragged) {
                    float axisValue = motionEvent.getAxisValue(9);
                    if (axisValue != BitmapDescriptorFactory.HUE_RED) {
                        int i = (int) (axisValue * BitmapDescriptorFactory.HUE_RED);
                        int scrollRange = getScrollRange();
                        int scrollY = getScrollY();
                        i = scrollY - i;
                        if (i < 0) {
                            scrollRange = 0;
                        } else if (i <= scrollRange) {
                            scrollRange = i;
                        }
                        if (scrollRange != scrollY) {
                            super.scrollTo(getScrollX(), scrollRange);
                            return true;
                        }
                    }
                }
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        Log.v("DiagramView", "onOverScrolled");
        if (this.scroller.isFinished()) {
            super.scrollTo(i, i2);
        } else {
            z = getScrollX();
            z2 = getScrollY();
            setScrollX(i);
            setScrollY(i2);
            onScrollChanged(getScrollX(), getScrollY(), z, z2);
        }
        awakenScrollBars();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = motionEvent;
        if (this.velocityTracker == null) {
            r10.velocityTracker = VelocityTracker.obtain();
        }
        r10.velocityTracker.addMovement(motionEvent2);
        int action = motionEvent.getAction() & 255;
        int i = 0;
        if (action != 6) {
            int xVelocity;
            switch (action) {
                case 0:
                    if (r10.adapter != null) {
                        boolean isFinished = r10.scroller.isFinished() ^ true;
                        r10.isBeingDragged = isFinished;
                        if (isFinished) {
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                        if (!r10.scroller.isFinished()) {
                            r10.scroller.abortAnimation();
                        }
                        r10.lastMotionX = (int) motionEvent.getX();
                        r10.activePointerId = motionEvent2.getPointerId(0);
                        break;
                    }
                    return false;
                case 1:
                    if (r10.isBeingDragged) {
                        VelocityTracker velocityTracker = r10.velocityTracker;
                        velocityTracker.computeCurrentVelocity(1000, (float) r10.maximumVelocity);
                        xVelocity = (int) velocityTracker.getXVelocity(r10.activePointerId);
                        if (r10.adapter != null) {
                            if (Math.abs(xVelocity) > r10.minimumVelocity) {
                                int i2 = -xVelocity;
                                if (r10.adapter != null) {
                                    r10.scroller.fling(getScrollX(), getScrollY(), i2, 0, 0, (int) Math.max(BitmapDescriptorFactory.HUE_RED, r10.contentWidth - ((float) ((getWidth() - getPaddingRight()) - getPaddingLeft()))), 0, 0, 0, 0);
                                    if (VERSION.SDK_INT >= 16) {
                                        postInvalidateOnAnimation();
                                    }
                                }
                            } else if (r10.scroller.springBack(getScrollX(), getScrollY(), 0, getScrollRange(), 0, 0) && VERSION.SDK_INT >= 16) {
                                postInvalidateOnAnimation();
                            }
                        }
                        r10.activePointerId = -1;
                        r10.isBeingDragged = false;
                        if (r10.velocityTracker != null) {
                            r10.velocityTracker.recycle();
                            r10.velocityTracker = null;
                            break;
                        }
                    }
                    break;
                case 2:
                    action = motionEvent2.findPointerIndex(r10.activePointerId);
                    if (action != -1) {
                        xVelocity = (int) motionEvent2.getX(action);
                        action = r10.lastMotionX - xVelocity;
                        if (!r10.isBeingDragged && Math.abs(action) > r10.touchSlop) {
                            ViewParent parent2 = getParent();
                            if (parent2 != null) {
                                parent2.requestDisallowInterceptTouchEvent(true);
                            }
                            r10.isBeingDragged = true;
                            action = action > 0 ? action - r10.touchSlop : action + r10.touchSlop;
                        }
                        if (r10.isBeingDragged) {
                            r10.lastMotionX = xVelocity;
                            getScrollX();
                            getScrollY();
                            int scrollRange = getScrollRange();
                            getOverScrollMode();
                            if (overScrollBy(action, 0, getScrollX(), 0, scrollRange, 0, r10.overscrollDistance, 0, true)) {
                                r10.velocityTracker.clear();
                                break;
                            }
                        }
                    }
                    StringBuilder stringBuilder = new StringBuilder("Invalid pointerId =");
                    stringBuilder.append(r10.activePointerId);
                    stringBuilder.append(" in onTouchEvent");
                    Log.e("DiagramView", stringBuilder.toString());
                    break;
                    break;
                case 3:
                    if (r10.isBeingDragged && r10.adapter != null) {
                        if (r10.scroller.springBack(getScrollX(), getScrollY(), 0, getScrollRange(), 0, 0) && VERSION.SDK_INT >= 16) {
                            postInvalidateOnAnimation();
                        }
                        r10.activePointerId = -1;
                        r10.isBeingDragged = false;
                        if (r10.velocityTracker != null) {
                            r10.velocityTracker.recycle();
                            r10.velocityTracker = null;
                            break;
                        }
                    }
                    break;
                default:
                    break;
            }
        }
        action = (motionEvent.getAction() >> 8) & 255;
        if (motionEvent2.getPointerId(action) == r10.activePointerId) {
            if (action == 0) {
                i = 1;
            }
            r10.lastMotionY = (int) motionEvent2.getY(i);
            r10.activePointerId = motionEvent2.getPointerId(i);
            if (r10.velocityTracker != null) {
                r10.velocityTracker.clear();
            }
        }
        return true;
    }
}
