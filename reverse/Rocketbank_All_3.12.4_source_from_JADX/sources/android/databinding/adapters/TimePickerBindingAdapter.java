package android.databinding.adapters;

import android.databinding.BindingAdapter;
import android.databinding.InverseBindingAdapter;
import android.databinding.InverseBindingListener;
import android.os.Build.VERSION;
import android.support.annotation.RestrictTo;
import android.widget.TimePicker;
import android.widget.TimePicker.OnTimeChangedListener;

@RestrictTo
public class TimePickerBindingAdapter {
    @BindingAdapter({"android:hour"})
    public static void setHour(TimePicker timePicker, int i) {
        if (VERSION.SDK_INT >= 23) {
            if (timePicker.getHour() != i) {
                timePicker.setHour(i);
            }
        } else if (timePicker.getCurrentHour().intValue() != i) {
            timePicker.setCurrentHour(Integer.valueOf(i));
        }
    }

    @BindingAdapter({"android:minute"})
    public static void setMinute(TimePicker timePicker, int i) {
        if (VERSION.SDK_INT >= 23) {
            if (timePicker.getMinute() != i) {
                timePicker.setMinute(i);
            }
        } else if (timePicker.getCurrentMinute().intValue() != i) {
            timePicker.setCurrentHour(Integer.valueOf(i));
        }
    }

    @InverseBindingAdapter(attribute = "android:hour")
    public static int getHour(TimePicker timePicker) {
        if (VERSION.SDK_INT >= 23) {
            return timePicker.getHour();
        }
        timePicker = timePicker.getCurrentHour();
        if (timePicker == null) {
            return null;
        }
        return timePicker.intValue();
    }

    @InverseBindingAdapter(attribute = "android:minute")
    public static int getMinute(TimePicker timePicker) {
        if (VERSION.SDK_INT >= 23) {
            return timePicker.getMinute();
        }
        timePicker = timePicker.getCurrentMinute();
        if (timePicker == null) {
            return null;
        }
        return timePicker.intValue();
    }

    @BindingAdapter(requireAll = false, value = {"android:onTimeChanged", "android:hourAttrChanged", "android:minuteAttrChanged"})
    public static void setListeners(TimePicker timePicker, final OnTimeChangedListener onTimeChangedListener, final InverseBindingListener inverseBindingListener, final InverseBindingListener inverseBindingListener2) {
        if (inverseBindingListener == null && inverseBindingListener2 == null) {
            timePicker.setOnTimeChangedListener(onTimeChangedListener);
        } else {
            timePicker.setOnTimeChangedListener(new OnTimeChangedListener() {
                public final void onTimeChanged(TimePicker timePicker, int i, int i2) {
                    if (onTimeChangedListener != null) {
                        onTimeChangedListener.onTimeChanged(timePicker, i, i2);
                    }
                    if (inverseBindingListener != null) {
                        inverseBindingListener.onChange();
                    }
                    if (inverseBindingListener2 != null) {
                        inverseBindingListener2.onChange();
                    }
                }
            });
        }
    }
}
