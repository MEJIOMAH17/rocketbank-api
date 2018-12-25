package ru.rocketbank.r2d2.fragments.rocketrouble;

import android.content.Context;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.BarChartView.Adapter;
import ru.rocketbank.r2d2.utils.CalendarUtils;

/* compiled from: BarChartAdapter.kt */
public final class BarChartAdapter extends Adapter {
    private final Context context;
    private int currentMonth;
    private double maxValue;
    private double percent;
    private final ArrayList<Float> values = new ArrayList();

    public final long getId(int i) {
        return (long) i;
    }

    public BarChartAdapter(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
    }

    public final Context getContext() {
        return this.context;
    }

    public final void setValues(List<Float> list, int i) {
        Intrinsics.checkParameterIsNotNull(list, "newValues");
        ArrayList arrayList = new ArrayList(list);
        Collections.reverse(arrayList);
        this.currentMonth = i;
        this.values.clear();
        this.values.addAll(arrayList);
        this.maxValue = null;
        list = this.values.size();
        for (i = 0; i < list; i++) {
            double d = this.maxValue;
            Object obj = this.values.get(i);
            Intrinsics.checkExpressionValueIsNotNull(obj, "values[i]");
            if (Double.compare(d, ((Number) obj).doubleValue()) < 0) {
                this.maxValue = (double) ((Number) this.values.get(i)).floatValue();
            }
        }
        this.maxValue = Adapter.getNearMax5(this.maxValue);
        this.percent = this.maxValue / 100.0d;
        notifyDataSetChanged();
    }

    public final float getProportialSize(int i) {
        return (float) ((((double) ((Number) this.values.get(i)).floatValue()) / this.percent) / 100.0d);
    }

    public final int getColor(int i) {
        double proportialSize = (double) getProportialSize(i);
        if (proportialSize >= 0.0d && proportialSize < 0.15d) {
            return -152013;
        }
        if (proportialSize >= 0.15d && proportialSize < 0.25d) {
            return -689369;
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
        instance.add(2, -((getCount() - 1) - i));
        Intrinsics.checkExpressionValueIsNotNull(instance, "dateTime");
        return CalendarUtils.monthNameShort(instance, this.context);
    }

    public final String getValue(int i) {
        return String.valueOf(((Number) this.values.get(i)).floatValue());
    }

    public final int getCount() {
        return this.values.size();
    }

    public final String getHit(int i) {
        i = (int) ((this.maxValue / 5.0d) * ((double) i));
        if (this.maxValue <= 1000.0d) {
            return String.valueOf(i);
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(String.valueOf(i / 1000));
        stringBuilder.append(" K");
        return stringBuilder.toString();
    }
}
