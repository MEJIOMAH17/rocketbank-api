package ru.rocketbank.core.widgets;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.GridLayout;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Calendar;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.data.binding.CalendarItemClickListener;
import ru.rocketbank.core.data.binding.CalendarItemData;
import ru.rocketbank.core.data.binding.RocketCalendarViewData;
import ru.rocketbank.core.databinding.ItemCalendarBinding;
import ru.rocketbank.core.databinding.WidgetCalendarViewBinding;
import ru.rocketbank.core.utils.MonthNames;
import ru.rocketbank.r2d2.C0859R;

/* compiled from: RocketCalendarView.kt */
public final class RocketCalendarView extends FrameLayout implements CalendarItemClickListener {
    @Deprecated
    public static final Companion Companion = new Companion();
    private final WidgetCalendarViewBinding binding;
    private final int blackColor;
    private Calendar calendar;
    private final GridLayout calendarView;
    private final RocketCalendarViewData data = new RocketCalendarViewData();
    private DateSelectListener dayListener;
    private final int grayColor;
    private CalendarItemData lastData;
    private final RocketTextView monthView;
    private boolean nextMonthSelected;
    private final Drawable selectedDrawable;
    private final int whiteColor;

    /* compiled from: RocketCalendarView.kt */
    static final class Companion {
        private Companion() {
        }
    }

    /* compiled from: RocketCalendarView.kt */
    public interface DateSelectListener {
        void onDateSelected(int i, int i2, int i3);
    }

    public final void setDayListener(DateSelectListener dateSelectListener) {
        this.dayListener = dateSelectListener;
    }

    public RocketCalendarView(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        super(context);
        context = getContext();
        Object systemService = context.getSystemService("layout_inflater");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
        }
        WidgetCalendarViewBinding inflate$336d2cb0 = WidgetCalendarViewBinding.inflate$336d2cb0((LayoutInflater) systemService, this);
        Intrinsics.checkExpressionValueIsNotNull(inflate$336d2cb0, "WidgetCalendarViewBindin…ate(inflater, this, true)");
        this.binding = inflate$336d2cb0;
        RocketTextView rocketTextView = this.binding.calendarDateDisplay;
        Intrinsics.checkExpressionValueIsNotNull(rocketTextView, "binding.calendarDateDisplay");
        this.monthView = rocketTextView;
        GridLayout gridLayout = this.binding.calendar;
        Intrinsics.checkExpressionValueIsNotNull(gridLayout, "binding.calendar");
        this.calendarView = gridLayout;
        this.calendarView.setColumnCount(7);
        this.binding.setData(this.data);
        this.grayColor = ContextCompat.getColor(context, C0859R.color.gray);
        this.whiteColor = ContextCompat.getColor(context, C0859R.color.white);
        this.blackColor = ContextCompat.getColor(context, C0859R.color.black_universal);
        context = ContextCompat.getDrawable(context, C0859R.drawable.selected_day);
        if (context == null) {
            Intrinsics.throwNpe();
        }
        this.selectedDrawable = context;
    }

    public RocketCalendarView(Context context, AttributeSet attributeSet) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet);
        context = getContext();
        attributeSet = context.getSystemService("layout_inflater");
        if (attributeSet == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
        }
        attributeSet = WidgetCalendarViewBinding.inflate$336d2cb0((LayoutInflater) attributeSet, this);
        Intrinsics.checkExpressionValueIsNotNull(attributeSet, "WidgetCalendarViewBindin…ate(inflater, this, true)");
        this.binding = attributeSet;
        attributeSet = this.binding.calendarDateDisplay;
        Intrinsics.checkExpressionValueIsNotNull(attributeSet, "binding.calendarDateDisplay");
        this.monthView = attributeSet;
        attributeSet = this.binding.calendar;
        Intrinsics.checkExpressionValueIsNotNull(attributeSet, "binding.calendar");
        this.calendarView = attributeSet;
        this.calendarView.setColumnCount(7);
        this.binding.setData(this.data);
        this.grayColor = ContextCompat.getColor(context, C0859R.color.gray);
        this.whiteColor = ContextCompat.getColor(context, C0859R.color.white);
        this.blackColor = ContextCompat.getColor(context, C0859R.color.black_universal);
        context = ContextCompat.getDrawable(context, C0859R.drawable.selected_day);
        if (context == null) {
            Intrinsics.throwNpe();
        }
        this.selectedDrawable = context;
    }

    public RocketCalendarView(Context context, AttributeSet attributeSet, int i) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i);
        context = getContext();
        attributeSet = context.getSystemService("layout_inflater");
        if (attributeSet == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
        }
        attributeSet = WidgetCalendarViewBinding.inflate$336d2cb0((LayoutInflater) attributeSet, this);
        Intrinsics.checkExpressionValueIsNotNull(attributeSet, "WidgetCalendarViewBindin…ate(inflater, this, true)");
        this.binding = attributeSet;
        attributeSet = this.binding.calendarDateDisplay;
        Intrinsics.checkExpressionValueIsNotNull(attributeSet, "binding.calendarDateDisplay");
        this.monthView = attributeSet;
        attributeSet = this.binding.calendar;
        Intrinsics.checkExpressionValueIsNotNull(attributeSet, "binding.calendar");
        this.calendarView = attributeSet;
        this.calendarView.setColumnCount(7);
        this.binding.setData(this.data);
        this.grayColor = ContextCompat.getColor(context, C0859R.color.gray);
        this.whiteColor = ContextCompat.getColor(context, C0859R.color.white);
        this.blackColor = ContextCompat.getColor(context, C0859R.color.black_universal);
        context = ContextCompat.getDrawable(context, C0859R.drawable.selected_day);
        if (context == null) {
            Intrinsics.throwNpe();
        }
        this.selectedDrawable = context;
    }

    @TargetApi(21)
    public RocketCalendarView(Context context, AttributeSet attributeSet, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(attributeSet, "attrs");
        super(context, attributeSet, i, i2);
        context = getContext();
        attributeSet = context.getSystemService("layout_inflater");
        if (attributeSet == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
        }
        attributeSet = WidgetCalendarViewBinding.inflate$336d2cb0((LayoutInflater) attributeSet, this);
        Intrinsics.checkExpressionValueIsNotNull(attributeSet, "WidgetCalendarViewBindin…ate(inflater, this, true)");
        this.binding = attributeSet;
        attributeSet = this.binding.calendarDateDisplay;
        Intrinsics.checkExpressionValueIsNotNull(attributeSet, "binding.calendarDateDisplay");
        this.monthView = attributeSet;
        attributeSet = this.binding.calendar;
        Intrinsics.checkExpressionValueIsNotNull(attributeSet, "binding.calendar");
        this.calendarView = attributeSet;
        this.calendarView.setColumnCount(7);
        this.binding.setData(this.data);
        this.grayColor = ContextCompat.getColor(context, C0859R.color.gray);
        this.whiteColor = ContextCompat.getColor(context, C0859R.color.white);
        this.blackColor = ContextCompat.getColor(context, C0859R.color.black_universal);
        context = ContextCompat.getDrawable(context, C0859R.drawable.selected_day);
        if (context == null) {
            Intrinsics.throwNpe();
        }
        this.selectedDrawable = context;
    }

    public final void setCalendar(Calendar calendar) {
        Intrinsics.checkParameterIsNotNull(calendar, "calendar");
        this.calendar = calendar;
    }

    public final void updateCalendar$13462e() {
        StringBuilder stringBuilder = new StringBuilder();
        String[] names = MonthNames.INSTANCE.getNAMES();
        Calendar calendar = this.calendar;
        if (calendar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendar");
        }
        stringBuilder.append(names[calendar.get(2)]);
        stringBuilder.append(' ');
        Calendar calendar2 = this.calendar;
        if (calendar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendar");
        }
        stringBuilder.append(calendar2.get(1));
        this.data.getMonthText().set(stringBuilder.toString());
        Object systemService = getContext().getSystemService("layout_inflater");
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
        }
        LayoutInflater layoutInflater = (LayoutInflater) systemService;
        this.calendarView.removeAllViews();
        calendar2 = this.calendar;
        if (calendar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendar");
        }
        int i = calendar2.get(5);
        int fillOrdinaryDays = 14 - fillOrdinaryDays(i, layoutInflater);
        add(layoutInflater, 2, String.valueOf(i), false);
        fillDeliveryDays(i + 1, fillOrdinaryDays - 1, layoutInflater);
    }

    private final int fillOrdinaryDays(int i, LayoutInflater layoutInflater) {
        Calendar calendar = this.calendar;
        if (calendar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendar");
        }
        int i2 = calendar.get(4);
        Calendar calendar2 = this.calendar;
        if (calendar2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendar");
        }
        int i3 = 7;
        int i4 = calendar2.get(7);
        int i5 = 1;
        i4 = i4 == 1 ? 7 : i4 - 1;
        if (i2 == 1) {
            calendar = this.calendar;
            if (calendar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("calendar");
            }
            calendar.set(5, 1);
            calendar = this.calendar;
            if (calendar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("calendar");
            }
            i2 = calendar.get(7);
            if (i2 != 1) {
                i3 = i2 - 1;
            }
            if (i3 > 1) {
                calendar = this.calendar;
                if (calendar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("calendar");
                }
                calendar.add(2, -1);
                calendar = this.calendar;
                if (calendar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("calendar");
                }
                i2 = calendar.getActualMaximum(5);
                Calendar calendar3 = this.calendar;
                if (calendar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("calendar");
                }
                calendar3.add(2, 1);
                calendar3 = this.calendar;
                if (calendar3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("calendar");
                }
                calendar3.set(5, i);
                i4 = (i2 - i3) + 2;
                if (i4 <= i2) {
                    i3 = 0;
                    while (true) {
                        add(layoutInflater, 3, String.valueOf(i4), false);
                        i3++;
                        if (i4 == i2) {
                            break;
                        }
                        i4++;
                    }
                    while (i5 < i) {
                        add(layoutInflater, 3, String.valueOf(i5), false);
                        i3++;
                        i5++;
                    }
                }
            }
            i3 = 0;
            while (i5 < i) {
                add(layoutInflater, 3, String.valueOf(i5), false);
                i3++;
                i5++;
            }
        } else {
            i3 = 0;
            for (i2 = (i - i4) + 1; i2 < i; i2++) {
                add(layoutInflater, 3, String.valueOf(i2), false);
                i3++;
            }
        }
        return i3;
    }

    private final void fillDeliveryDays(int i, int i2, LayoutInflater layoutInflater) {
        boolean z;
        Calendar calendar = this.calendar;
        if (calendar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("calendar");
        }
        int actualMaximum = calendar.getActualMaximum(5);
        int i3 = 0;
        if (i <= actualMaximum) {
            actualMaximum = Math.min(i2 - 1, actualMaximum - i) + i;
            z = false;
        } else {
            actualMaximum = i2;
            i = 1;
            z = i;
        }
        if (i <= actualMaximum) {
            while (true) {
                add(layoutInflater, 1, String.valueOf(i), z);
                i2--;
                if (i == actualMaximum) {
                    break;
                }
                i++;
            }
        }
        while (i3 < i2) {
            i3++;
            add(layoutInflater, 1, String.valueOf(i3), true);
        }
    }

    private final void add(LayoutInflater layoutInflater, int i, String str, boolean z) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.item_calendar, this.calendarView, false);
        ItemCalendarBinding bind = ItemCalendarBinding.bind(layoutInflater);
        CalendarItemData calendarItemData = new CalendarItemData();
        bind.setData(calendarItemData);
        switch (i) {
            case 1:
                calendarItemData.getDayText().set(str);
                calendarItemData.isDelivery().set(true);
                bind.setListener(this);
                calendarItemData.getTextColor().set(this.blackColor);
                calendarItemData.isNextMonth().set(z);
                break;
            case 2:
                this.lastData = calendarItemData;
                Intrinsics.checkExpressionValueIsNotNull(layoutInflater, "view");
                animateView(layoutInflater);
                calendarItemData.getDayText().set(str);
                calendarItemData.getTextColor().set(this.whiteColor);
                calendarItemData.getBackground().set(this.selectedDrawable);
                bind.setListener(this);
                calendarItemData.isDelivery().set(true);
                animateView(layoutInflater);
                break;
            case 3:
                calendarItemData.getTextColor().set(this.grayColor);
                calendarItemData.getDayText().set(str);
                break;
            default:
                break;
        }
        this.calendarView.addView(layoutInflater);
    }

    private static void animateView(View view) {
        view = view.animate().setDuration(0).scaleX(BitmapDescriptorFactory.HUE_RED).scaleY(BitmapDescriptorFactory.HUE_RED);
        view.start();
        view.setDuration(400).scaleX(1.0f).scaleY(1.0f).start();
    }

    public final void onItemClicked(View view, CalendarItemData calendarItemData) {
        Calendar calendar;
        Intrinsics.checkParameterIsNotNull(view, "v");
        Intrinsics.checkParameterIsNotNull(calendarItemData, "calendarItemData");
        CalendarItemData calendarItemData2 = this.lastData;
        if (calendarItemData2 != null) {
            calendarItemData2.getBackground().set(null);
            calendarItemData2.getTextColor().set(this.blackColor);
        }
        this.lastData = calendarItemData;
        calendarItemData.getBackground().set(this.selectedDrawable);
        calendarItemData.getTextColor().set(this.whiteColor);
        animateView(view);
        String[] names;
        Calendar calendar2;
        if (calendarItemData.isNextMonth().get() != null) {
            if (this.nextMonthSelected == null) {
                view = this.calendar;
                if (view == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("calendar");
                }
                view.add(2, 1);
                view = new StringBuilder();
                names = MonthNames.INSTANCE.getNAMES();
                calendar2 = this.calendar;
                if (calendar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("calendar");
                }
                view.append(names[calendar2.get(2)]);
                view.append(' ');
                calendar = this.calendar;
                if (calendar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("calendar");
                }
                view.append(calendar.get(1));
                this.data.getMonthText().set(view.toString());
                this.nextMonthSelected = true;
            }
        } else if (this.nextMonthSelected != null) {
            view = this.calendar;
            if (view == null) {
                Intrinsics.throwUninitializedPropertyAccessException("calendar");
            }
            view.add(2, -1);
            view = new StringBuilder();
            names = MonthNames.INSTANCE.getNAMES();
            calendar2 = this.calendar;
            if (calendar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("calendar");
            }
            view.append(names[calendar2.get(2)]);
            view.append(' ');
            calendar = this.calendar;
            if (calendar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("calendar");
            }
            view.append(calendar.get(1));
            this.data.getMonthText().set(view.toString());
            this.nextMonthSelected = null;
        }
        view = this.dayListener;
        if (view != null) {
            calendarItemData = calendarItemData.getDayText().get();
            if (calendarItemData == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(calendarItemData, "calendarItemData.dayText.get()!!");
            calendarItemData = Integer.parseInt((String) calendarItemData);
            calendar = this.calendar;
            if (calendar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("calendar");
            }
            int i = calendar.get(2);
            Calendar calendar3 = this.calendar;
            if (calendar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("calendar");
            }
            view.onDateSelected(calendarItemData, i, calendar3.get(1));
        }
    }
}
