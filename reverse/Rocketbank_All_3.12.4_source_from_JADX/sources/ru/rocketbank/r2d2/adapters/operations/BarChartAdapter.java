package ru.rocketbank.r2d2.adapters.operations;

import android.content.Context;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.widgets.BarChartView.Adapter;
import ru.rocketbank.r2d2.utils.CalendarUtils;

/* compiled from: BarChartAdapter.kt */
public class BarChartAdapter extends Adapter {
    private final Context context;
    private double maxValue;
    private double percent;
    private final ArrayList<Float> values = new ArrayList();

    public long getId(int i) {
        return (long) i;
    }

    public BarChartAdapter(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.context = context;
    }

    public final void setValues(List<Float> list) {
        Intrinsics.checkParameterIsNotNull(list, "newValues");
        ArrayList arrayList = new ArrayList(list);
        Collections.reverse(arrayList);
        this.values.clear();
        this.values.addAll(arrayList);
        this.maxValue = 0.0d;
        list = this.values.size();
        for (int i = 0; i < list; i++) {
            Float f = (Float) this.values.get(i);
            if (Float.compare(f.floatValue(), BitmapDescriptorFactory.HUE_RED) < 0) {
                f = Float.valueOf(-f.floatValue());
            }
            double d = this.maxValue;
            Intrinsics.checkExpressionValueIsNotNull(f, "value");
            if (Double.compare(d, (double) f.floatValue()) < 0) {
                this.maxValue = (double) f.floatValue();
            }
        }
        this.maxValue = Adapter.getNearMax5(this.maxValue);
        this.percent = this.maxValue / 100.0d;
        notifyDataSetChanged();
    }

    public float getProportialSize(int i) {
        double floatValue = (double) ((Number) this.values.get(i)).floatValue();
        if (floatValue < 0.0d) {
            floatValue = -floatValue;
        }
        return (float) ((floatValue / this.percent) / 100.0d);
    }

    public int getColor(int i) {
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

    public String getLabelName(int i) {
        Calendar instance = Calendar.getInstance();
        instance.add(2, -((getCount() - 1) - i));
        Intrinsics.checkExpressionValueIsNotNull(instance, "calendar");
        return CalendarUtils.monthNameShort(instance, this.context);
    }

    public String getValue(int i) {
        return String.valueOf(((Number) this.values.get(i)).floatValue());
    }

    public int getCount() {
        return this.values.size();
    }

    public String getHit(int i) {
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
