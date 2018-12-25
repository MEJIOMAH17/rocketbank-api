package ru.rocketbank.r2d2.root.analytics;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.v4.view.ViewPager;
import android.text.Layout.Alignment;
import android.text.SpannableString;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.style.AbsoluteSizeSpan;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import ru.rocketbank.core.manager.TypefaceManager;
import ru.rocketbank.core.model.dto.analytics.AnalyticsCategory;
import ru.rocketbank.core.model.dto.analytics.AnalyticsGroup;
import ru.rocketbank.core.model.dto.analytics.AnalyticsTagOperation;
import ru.rocketbank.core.utils.CategoryMappingUtil;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;

public class BigChart extends View implements OnGestureListener {
    private List<AnalyticsCategory> _analyticCategories;
    private List<AnalyticsGroup> _analyticGroups;
    private List<AnalyticsTagOperation> _analyticTags;
    private final TextPaint _chartItemAmountTextPaint;
    private final Paint _chartItemBackroundPaint;
    private final TextPaint _chartItemPercentageTextPaint;
    private final List<BigChartItem> _chartItems;
    private final Context _context;
    private final GestureDetector _gestureDetector;
    private boolean _isValuesSet;
    private OnCategorySelectedListener _listenerOnCategory;
    private OnGroupSelectedListener _listenerOnGroup;
    private OnTagSelectedListener _listenerOnTag;
    private MoneyFormatter _moneyFormatter;
    private final float _textSizeAmount;
    private final float _textSizePercentShift;
    private final float _textSizePercentSymbol;
    private final float _textSizePercentage;
    private ViewPager _viewPager;
    private final TextPaint iconPaint;

    /* renamed from: ru.rocketbank.r2d2.root.analytics.BigChart$1 */
    class C16151 implements AnimatorUpdateListener {
        C16151() {
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            BigChart.this.invalidate();
        }
    }

    private class BigChartItem {
        public double amount;
        public Integer color;
        public String icon;
        public double percentage;

        private BigChartItem() {
        }
    }

    private class PercentageEvaluator extends FloatEvaluator {
        private BigChartItem _item;

        public PercentageEvaluator(BigChartItem bigChartItem) {
            this._item = bigChartItem;
        }

        public Float evaluate(float f, Number number, Number number2) {
            this._item.percentage = (double) super.evaluate(f, number, number2).floatValue();
            BigChart.this.invalidate();
            return Float.valueOf((float) this._item.percentage);
        }
    }

    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    public void onLongPress(MotionEvent motionEvent) {
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    public void onShowPress(MotionEvent motionEvent) {
    }

    public BigChart(Context context) {
        this(context, null);
    }

    public BigChart(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BigChart(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this._chartItems = new ArrayList();
        this._chartItemBackroundPaint = new Paint();
        this._chartItemPercentageTextPaint = new TextPaint();
        this._chartItemAmountTextPaint = new TextPaint();
        this._isValuesSet = null;
        this._context = context;
        attributeSet = RocketApplication.Companion.getInjector();
        i = attributeSet.getCurrencyManager();
        this._moneyFormatter = new MoneyFormatter(this._context, attributeSet.getAuthorization(), i);
        this._gestureDetector = new GestureDetector(context, this);
        this._textSizePercentage = getResources().getDimension(C0859R.dimen.widget_big_chart_percentage_font_size);
        this._textSizePercentSymbol = 1058356446 * this._textSizePercentage;
        this._textSizeAmount = getResources().getDimension(C0859R.dimen.widget_big_chart_amount_font_size);
        this._chartItemPercentageTextPaint.setColor(-1);
        this._chartItemPercentageTextPaint.setTextSize(this._textSizePercentage);
        this._chartItemPercentageTextPaint.setTextAlign(Align.LEFT);
        this._chartItemPercentageTextPaint.setAntiAlias(true);
        this._chartItemAmountTextPaint.setColor(-1);
        this._chartItemAmountTextPaint.setTypeface(TypefaceManager.getInstance().getTypeface(8, context));
        this._chartItemAmountTextPaint.setTextSize(this._textSizeAmount);
        this._chartItemAmountTextPaint.setTextAlign(Align.LEFT);
        this._chartItemAmountTextPaint.setAntiAlias(true);
        this._textSizePercentShift = getPercentShift(context);
        this.iconPaint = new TextPaint();
        this.iconPaint.setColor(-1);
        this.iconPaint.setTypeface(TypefaceManager.getInstance().getTypeface(9, context));
        this.iconPaint.setTextSize(getResources().getDimension(C0859R.dimen.widget_big_chart_icon_size));
        this.iconPaint.setAntiAlias(true);
    }

    private float getPercentShift(Context context) {
        return Math.abs(getPercentageRealHeight() - getPercentRealHeight(context));
    }

    private float getPercentRealHeight(Context context) {
        context = new TextPaint();
        context.setColor(-1);
        context.setTextSize(this._textSizePercentSymbol);
        context.setTextAlign(Align.LEFT);
        Rect rect = new Rect();
        context.getTextBounds("%", 0, 1, rect);
        return (float) Math.abs(rect.bottom - rect.top);
    }

    private float getPercentageRealHeight() {
        Rect rect = new Rect();
        this._chartItemPercentageTextPaint.getTextBounds(AppEventsConstants.EVENT_PARAM_VALUE_YES, 0, 1, rect);
        return (float) Math.abs(rect.bottom - rect.top);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this._viewPager != null) {
            this._viewPager.dispatchTouchEvent(motionEvent);
        }
        return this._gestureDetector.onTouchEvent(motionEvent);
    }

    protected void onDraw(Canvas canvas) {
        Canvas canvas2 = canvas;
        super.onDraw(canvas);
        int size = this._chartItems.size();
        int i = 0;
        int i2 = i;
        while (i < size) {
            BigChartItem bigChartItem = (BigChartItem) r0._chartItems.get(i);
            int width = i2 + (i == size + -1 ? getWidth() - i2 : (int) (((double) getWidth()) * (bigChartItem.percentage / 100.0d)));
            int height = getHeight();
            r0._chartItemBackroundPaint.setColor(bigChartItem.color.intValue());
            canvas2.drawRect((float) i2, BitmapDescriptorFactory.HUE_RED, (float) width, (float) height, r0._chartItemBackroundPaint);
            i2 += 20;
            CharSequence spannableString = new SpannableString(String.format("%d%%", new Object[]{Integer.valueOf((int) r13)}));
            spannableString.setSpan(new AbsoluteSizeSpan((int) r0._textSizePercentSymbol), spannableString.length() - 1, spannableString.length(), 33);
            spannableString.setSpan(new PercentShiftSpan(r0._textSizePercentShift), spannableString.length() - 1, spannableString.length(), 33);
            CharSequence spannableString2 = new SpannableString(r0._moneyFormatter.format(bigChartItem.amount, "RUB", false));
            int ceil = (int) Math.ceil((double) r0._chartItemPercentageTextPaint.measureText(spannableString, 0, spannableString.length()));
            canvas.save();
            float f = (float) i2;
            canvas2.translate(f, BitmapDescriptorFactory.HUE_RED);
            new StaticLayout(spannableString, r0._chartItemPercentageTextPaint, ceil, Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, true).draw(canvas2);
            canvas.restore();
            height = (int) Math.ceil((double) r0._chartItemAmountTextPaint.measureText(spannableString2, 0, spannableString2.length()));
            ceil = (int) (30.0f + r0._chartItemPercentageTextPaint.getTextSize());
            canvas.save();
            canvas2.translate(f, (float) ceil);
            new StaticLayout(spannableString2, r0._chartItemAmountTextPaint, height, Alignment.ALIGN_NORMAL, 1.0f, BitmapDescriptorFactory.HUE_RED, true).draw(canvas2);
            canvas.restore();
            float dimension = getResources().getDimension(C0859R.dimen.widget_big_chart_icon_size);
            float textSize = (float) ((int) (((float) (ceil + 30)) + r0._chartItemAmountTextPaint.getTextSize()));
            RectF rectF = new RectF(f, textSize, f + dimension, dimension + textSize);
            canvas2.drawText(bigChartItem.icon, rectF.left, rectF.bottom, r0.iconPaint);
            i++;
            i2 = width;
        }
    }

    public void setAnalyticsGroups(List<AnalyticsGroup> list) {
        if (list != null) {
            this._analyticGroups = list;
            this._analyticCategories = null;
            int size = list.size() - this._chartItems.size();
            int i = 0;
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    this._chartItems.add(new BigChartItem());
                }
            } else if (size < 0) {
                for (int i3 = 0; i3 < Math.abs(size); i3++) {
                    this._chartItems.remove(this._chartItems.size() - 1);
                }
            }
            List arrayList = new ArrayList();
            while (i < this._chartItems.size()) {
                BigChartItem bigChartItem = (BigChartItem) this._chartItems.get(i);
                AnalyticsGroup analyticsGroup = (AnalyticsGroup) list.get(i);
                bigChartItem.amount = analyticsGroup.getAmount();
                bigChartItem.icon = analyticsGroup.getIcon();
                bigChartItem.color = analyticsGroup.getColor();
                setPercentage(arrayList, bigChartItem, analyticsGroup.getPercentage());
                i++;
            }
            invalidateChart(arrayList);
            this._isValuesSet = true;
        }
    }

    private void setPercentage(List<Animator> list, BigChartItem bigChartItem, double d) {
        if (this._isValuesSet) {
            bigChartItem = ValueAnimator.ofObject(new PercentageEvaluator(bigChartItem), new Object[]{Float.valueOf((float) bigChartItem.percentage), Float.valueOf((float) d)});
            bigChartItem.addUpdateListener(new C16151());
            list.add(bigChartItem);
            return;
        }
        bigChartItem.percentage = d;
    }

    private void invalidateChart(List<Animator> list) {
        if (this._isValuesSet) {
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(list);
            animatorSet.setDuration(300);
            animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
            animatorSet.start();
            return;
        }
        invalidate();
    }

    public void setAnalyticsCategories(List<AnalyticsCategory> list) {
        if (list != null) {
            this._analyticCategories = list;
            this._analyticGroups = null;
            int size = list.size() - this._chartItems.size();
            int i = 0;
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    this._chartItems.add(new BigChartItem());
                }
            } else if (size < 0) {
                for (int i3 = 0; i3 < Math.abs(size); i3++) {
                    this._chartItems.remove(this._chartItems.size() - 1);
                }
            }
            List arrayList = new ArrayList();
            while (i < this._chartItems.size()) {
                BigChartItem bigChartItem = (BigChartItem) this._chartItems.get(i);
                AnalyticsCategory analyticsCategory = (AnalyticsCategory) list.get(i);
                setPercentage(arrayList, bigChartItem, analyticsCategory.getPercentage());
                bigChartItem.amount = analyticsCategory.getAmount();
                Pair category = CategoryMappingUtil.INSTANCE.getCategory(analyticsCategory.getId());
                bigChartItem.icon = ((Character) category.getSecond()).toString();
                bigChartItem.color = (Integer) category.getFirst();
                i++;
            }
            invalidateChart(arrayList);
            this._isValuesSet = true;
        }
    }

    public void setAnalyticsTags(List<AnalyticsTagOperation> list) {
        if (list != null) {
            this._analyticTags = list;
            this._analyticCategories = null;
            this._analyticGroups = null;
            int size = list.size() - this._chartItems.size();
            int i = 0;
            if (size > 0) {
                for (int i2 = 0; i2 < size; i2++) {
                    this._chartItems.add(new BigChartItem());
                }
            } else if (size < 0) {
                for (int i3 = 0; i3 < Math.abs(size); i3++) {
                    this._chartItems.remove(this._chartItems.size() - 1);
                }
            }
            List arrayList = new ArrayList();
            while (i < this._chartItems.size()) {
                BigChartItem bigChartItem = (BigChartItem) this._chartItems.get(i);
                AnalyticsTagOperation analyticsTagOperation = (AnalyticsTagOperation) list.get(i);
                setPercentage(arrayList, bigChartItem, (double) analyticsTagOperation.getPercentage().intValue());
                bigChartItem.amount = analyticsTagOperation.getAmount().doubleValue();
                Pair category = CategoryMappingUtil.INSTANCE.getCategory(i);
                StringBuilder stringBuilder = new StringBuilder("#");
                stringBuilder.append(analyticsTagOperation.getName());
                bigChartItem.icon = stringBuilder.toString();
                bigChartItem.color = (Integer) category.getFirst();
                i++;
            }
            this.iconPaint.setTypeface(TypefaceManager.getInstance().getTypeface(7, this._context));
            this.iconPaint.setTextSize(getResources().getDimension(C0859R.dimen.widget_big_chart_tag_size));
            invalidateChart(arrayList);
            this._isValuesSet = true;
        }
    }

    public void setViewPager(ViewPager viewPager) {
        this._viewPager = viewPager;
    }

    public void setOnCategorySelectedListener(OnCategorySelectedListener onCategorySelectedListener) {
        this._listenerOnCategory = onCategorySelectedListener;
    }

    public void setOnGroupSelectedListener(OnGroupSelectedListener onGroupSelectedListener) {
        this._listenerOnGroup = onGroupSelectedListener;
    }

    public void setOnTagSelectedListener(OnTagSelectedListener onTagSelectedListener) {
        this._listenerOnTag = onTagSelectedListener;
    }

    public boolean onSingleTapUp(MotionEvent motionEvent) {
        int size = this._chartItems.size();
        int i = 0;
        int i2 = i;
        while (i2 < size) {
            int width = (i2 == size + -1 ? getWidth() - i : (int) (((double) getWidth()) * (((BigChartItem) this._chartItems.get(i2)).percentage / 100.0d))) + i;
            if (new Rect(i, 0, width, getHeight()).contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                if (this._analyticCategories != null) {
                    AnalyticsCategory analyticsCategory = (AnalyticsCategory) this._analyticCategories.get(i2);
                    this._listenerOnCategory.onCategorySelected(analyticsCategory.getId(), i2, analyticsCategory.getName(), String.valueOf(analyticsCategory.getId()));
                } else if (this._analyticGroups != null) {
                    AnalyticsGroup analyticsGroup = (AnalyticsGroup) this._analyticGroups.get(i2);
                    this._listenerOnGroup.onGroupSelected(analyticsGroup.getId(), i2, analyticsGroup.getName(), String.valueOf(analyticsGroup.getIcon()), analyticsGroup.getColor());
                } else if (this._analyticTags != null) {
                    this._listenerOnTag.onTagSelected((AnalyticsTagOperation) this._analyticTags.get(i2));
                }
                return true;
            }
            i2++;
            i = width;
        }
        return false;
    }
}
