package ru.rocketbank.core.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import ru.rocketbank.r2d2.C0859R;

public class WheelView extends ScrollView {
    public static final String TAG = "WheelView";
    private Context context;
    int displayItemCount;
    int initialY;
    int itemHeight = 0;
    List<String> items;
    int newCheck = 50;
    int offset = 1;
    private OnWheelViewListener onWheelViewListener;
    Paint paint;
    private int scrollDirection = -1;
    Runnable scrollerTask;
    int[] selectedAreaBorder;
    int selectedIndex = 1;
    int viewWidth;
    private LinearLayout views;

    /* renamed from: ru.rocketbank.core.widgets.WheelView$1 */
    class C08521 implements Runnable {
        C08521() {
        }

        public final void run() {
            if (WheelView.this.initialY - WheelView.this.getScrollY() == 0) {
                final int i = WheelView.this.initialY % WheelView.this.itemHeight;
                final int i2 = WheelView.this.initialY / WheelView.this.itemHeight;
                if (i == 0) {
                    WheelView wheelView = WheelView.this;
                    wheelView.selectedIndex = i2 + wheelView.offset;
                    WheelView.access$000(WheelView.this);
                    return;
                } else if (i > WheelView.this.itemHeight / 2) {
                    WheelView.this.post(new Runnable() {
                        public final void run() {
                            WheelView.this.smoothScrollTo(0, (WheelView.this.initialY - i) + WheelView.this.itemHeight);
                            WheelView.this.selectedIndex = (i2 + WheelView.this.offset) + 1;
                            WheelView.access$000(WheelView.this);
                        }
                    });
                    return;
                } else {
                    WheelView.this.post(new Runnable() {
                        public final void run() {
                            WheelView.this.smoothScrollTo(0, WheelView.this.initialY - i);
                            WheelView.this.selectedIndex = i2 + WheelView.this.offset;
                            WheelView.access$000(WheelView.this);
                        }
                    });
                    return;
                }
            }
            WheelView.this.initialY = WheelView.this.getScrollY();
            WheelView.this.postDelayed(WheelView.this.scrollerTask, (long) WheelView.this.newCheck);
        }
    }

    /* renamed from: ru.rocketbank.core.widgets.WheelView$2 */
    class C08532 extends Drawable {
        public final int getOpacity() {
            return 0;
        }

        public final void setAlpha(int i) {
        }

        public final void setColorFilter(ColorFilter colorFilter) {
        }

        C08532() {
        }

        public final void draw(Canvas canvas) {
            canvas.drawLine((float) (WheelView.this.viewWidth / 6), (float) WheelView.access$100(WheelView.this)[0], (float) ((WheelView.this.viewWidth * 5) / 6), (float) WheelView.access$100(WheelView.this)[0], WheelView.this.paint);
            canvas.drawLine((float) (WheelView.this.viewWidth / 6), (float) WheelView.access$100(WheelView.this)[1], (float) ((WheelView.this.viewWidth * 5) / 6), (float) WheelView.access$100(WheelView.this)[1], WheelView.this.paint);
        }
    }

    public interface OnWheelViewListener {
        void onSelected(int i, String str);
    }

    public WheelView(Context context) {
        super(context);
        init(context);
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public WheelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }

    public final void setItems(List<String> list) {
        if (this.items == null) {
            this.items = new ArrayList();
        }
        this.items.clear();
        this.items.addAll(list);
        for (int i = 0; i < this.offset; i++) {
            this.items.add(0, "");
            this.items.add("");
        }
        initData();
    }

    private void init(Context context) {
        this.context = context;
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder("parent: ");
        stringBuilder.append(getParent());
        Log.d(str, stringBuilder.toString());
        setVerticalScrollBarEnabled(false);
        this.views = new LinearLayout(context);
        this.views.setOrientation(1);
        addView(this.views);
        this.scrollerTask = new C08521();
    }

    private void initData() {
        this.displayItemCount = (this.offset << 1) + 1;
        for (String str : this.items) {
            String str2;
            LinearLayout linearLayout = this.views;
            View textView = new TextView(this.context);
            textView.setLayoutParams(new LayoutParams(-1, -2));
            textView.setSingleLine(true);
            textView.setTextSize(2, 16.0f);
            textView.setText(str2);
            textView.setGravity(17);
            int i = (int) ((15.0f * this.context.getResources().getDisplayMetrics().density) + 0.5f);
            textView.setPadding(i, i, i, i);
            if (this.itemHeight == 0) {
                textView.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
                this.itemHeight = textView.getMeasuredHeight();
                str2 = TAG;
                StringBuilder stringBuilder = new StringBuilder("itemHeight: ");
                stringBuilder.append(this.itemHeight);
                Log.d(str2, stringBuilder.toString());
                this.views.setLayoutParams(new LayoutParams(-1, this.itemHeight * this.displayItemCount));
                setLayoutParams(new LinearLayout.LayoutParams(((LinearLayout.LayoutParams) getLayoutParams()).width, this.itemHeight * this.displayItemCount));
            }
            linearLayout.addView(textView);
        }
        refreshItemView(0);
    }

    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        refreshItemView(i2);
        if (i2 > i4) {
            this.scrollDirection = 1;
        } else {
            this.scrollDirection = 0;
        }
    }

    private void refreshItemView(int i) {
        int i2 = (i / this.itemHeight) + this.offset;
        int i3 = i % this.itemHeight;
        i /= this.itemHeight;
        if (i3 == 0) {
            i2 = this.offset + i;
        } else if (i3 > this.itemHeight / 2) {
            i2 = (i + this.offset) + 1;
        }
        i = this.views.getChildCount();
        i3 = 0;
        while (i3 < i) {
            TextView textView = (TextView) this.views.getChildAt(i3);
            if (textView != null) {
                if (i2 == i3) {
                    textView.setTextColor(ContextCompat.getColor(getContext(), C0859R.color.orange));
                } else {
                    textView.setTextColor(Color.parseColor("#bbbbbb"));
                }
                i3++;
            } else {
                return;
            }
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        if (this.paint == null) {
            this.paint = new Paint();
            this.paint.setColor(ContextCompat.getColor(getContext(), C0859R.color.orange));
            this.paint.setStrokeWidth((float) ((int) (this.context.getResources().getDisplayMetrics().density + 0.5f)));
        }
        super.setBackgroundDrawable(new C08532());
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder("w: ");
        stringBuilder.append(i);
        stringBuilder.append(", h: ");
        stringBuilder.append(i2);
        stringBuilder.append(", oldw: ");
        stringBuilder.append(i3);
        stringBuilder.append(", oldh: ");
        stringBuilder.append(i4);
        Log.d(str, stringBuilder.toString());
        this.viewWidth = i;
        setBackgroundDrawable(0);
    }

    public final void setSeletion(final int i) {
        this.selectedIndex = this.offset + i;
        post(new Runnable() {
            public final void run() {
                WheelView.this.smoothScrollTo(0, i * WheelView.this.itemHeight);
            }
        });
    }

    public final String getSeletedItem() {
        return (String) this.items.get(this.selectedIndex);
    }

    public final int getSeletedIndex() {
        return this.selectedIndex - this.offset;
    }

    public void fling(int i) {
        super.fling(i / 3);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.initialY = getScrollY();
            postDelayed(this.scrollerTask, (long) this.newCheck);
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void setOnWheelViewListener(OnWheelViewListener onWheelViewListener) {
        this.onWheelViewListener = onWheelViewListener;
    }

    static /* synthetic */ void access$000(WheelView wheelView) {
        if (wheelView.onWheelViewListener != null) {
            wheelView.onWheelViewListener.onSelected(wheelView.selectedIndex, (String) wheelView.items.get(wheelView.selectedIndex));
        }
    }

    static /* synthetic */ int[] access$100(WheelView wheelView) {
        if (wheelView.selectedAreaBorder == null) {
            wheelView.selectedAreaBorder = new int[2];
            wheelView.selectedAreaBorder[0] = wheelView.itemHeight * wheelView.offset;
            wheelView.selectedAreaBorder[1] = wheelView.itemHeight * (wheelView.offset + 1);
        }
        return wheelView.selectedAreaBorder;
    }
}
