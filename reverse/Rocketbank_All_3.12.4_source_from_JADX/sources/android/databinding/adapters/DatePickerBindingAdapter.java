package android.databinding.adapters;

import android.databinding.BindingAdapter;
import android.databinding.InverseBindingListener;
import android.databinding.InverseBindingMethod;
import android.databinding.InverseBindingMethods;
import android.support.annotation.RestrictTo;
import android.widget.DatePicker;
import android.widget.DatePicker.OnDateChangedListener;
import ru.rocketbank.r2d2.C0859R;

@InverseBindingMethods({@InverseBindingMethod(attribute = "android:year", type = DatePicker.class), @InverseBindingMethod(attribute = "android:month", type = DatePicker.class), @InverseBindingMethod(attribute = "android:day", method = "getDayOfMonth", type = DatePicker.class)})
@RestrictTo
public class DatePickerBindingAdapter {

    private static class DateChangedListener implements OnDateChangedListener {
        InverseBindingListener mDayChanged;
        OnDateChangedListener mListener;
        InverseBindingListener mMonthChanged;
        InverseBindingListener mYearChanged;

        private DateChangedListener() {
        }

        public void setListeners(OnDateChangedListener onDateChangedListener, InverseBindingListener inverseBindingListener, InverseBindingListener inverseBindingListener2, InverseBindingListener inverseBindingListener3) {
            this.mListener = onDateChangedListener;
            this.mYearChanged = inverseBindingListener;
            this.mMonthChanged = inverseBindingListener2;
            this.mDayChanged = inverseBindingListener3;
        }

        public void onDateChanged(DatePicker datePicker, int i, int i2, int i3) {
            if (this.mListener != null) {
                this.mListener.onDateChanged(datePicker, i, i2, i3);
            }
            if (this.mYearChanged != null) {
                this.mYearChanged.onChange();
            }
            if (this.mMonthChanged != null) {
                this.mMonthChanged.onChange();
            }
            if (this.mDayChanged != null) {
                this.mDayChanged.onChange();
            }
        }
    }

    @BindingAdapter(requireAll = false, value = {"android:year", "android:month", "android:day", "android:onDateChanged", "android:yearAttrChanged", "android:monthAttrChanged", "android:dayAttrChanged"})
    public static void setListeners(DatePicker datePicker, int i, int i2, int i3, OnDateChangedListener onDateChangedListener, InverseBindingListener inverseBindingListener, InverseBindingListener inverseBindingListener2, InverseBindingListener inverseBindingListener3) {
        if (i == 0) {
            i = datePicker.getYear();
        }
        if (i3 == 0) {
            i3 = datePicker.getDayOfMonth();
        }
        if (inverseBindingListener == null && inverseBindingListener2 == null && inverseBindingListener3 == null) {
            datePicker.init(i, i2, i3, onDateChangedListener);
            return;
        }
        OnDateChangedListener onDateChangedListener2 = (DateChangedListener) ListenerUtil.getListener(datePicker, C0859R.id.onDateChanged);
        if (onDateChangedListener2 == null) {
            onDateChangedListener2 = new DateChangedListener();
            ListenerUtil.trackListener(datePicker, onDateChangedListener2, C0859R.id.onDateChanged);
        }
        onDateChangedListener2.setListeners(onDateChangedListener, inverseBindingListener, inverseBindingListener2, inverseBindingListener3);
        datePicker.init(i, i2, i3, onDateChangedListener2);
    }
}
