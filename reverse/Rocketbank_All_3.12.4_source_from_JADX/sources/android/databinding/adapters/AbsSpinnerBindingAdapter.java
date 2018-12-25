package android.databinding.adapters;

import android.databinding.BindingAdapter;
import android.support.annotation.RestrictTo;
import android.widget.AbsSpinner;
import android.widget.ArrayAdapter;
import android.widget.SpinnerAdapter;
import java.util.List;

@RestrictTo
public class AbsSpinnerBindingAdapter {
    @BindingAdapter({"android:entries"})
    public static <T extends CharSequence> void setEntries(AbsSpinner absSpinner, T[] tArr) {
        if (tArr != null) {
            SpinnerAdapter adapter = absSpinner.getAdapter();
            Object obj = 1;
            if (adapter != null && adapter.getCount() == tArr.length) {
                for (int i = 0; i < tArr.length; i++) {
                    if (!tArr[i].equals(adapter.getItem(i))) {
                        break;
                    }
                }
                obj = null;
            }
            if (obj != null) {
                adapter = new ArrayAdapter(absSpinner.getContext(), 17367048, tArr);
                adapter.setDropDownViewResource(17367049);
                absSpinner.setAdapter(adapter);
            }
            return;
        }
        absSpinner.setAdapter(null);
    }

    @BindingAdapter({"android:entries"})
    public static <T> void setEntries(AbsSpinner absSpinner, List<T> list) {
        if (list != null) {
            SpinnerAdapter adapter = absSpinner.getAdapter();
            if (adapter instanceof ObservableListAdapter) {
                ((ObservableListAdapter) adapter).setList(list);
                return;
            } else {
                absSpinner.setAdapter(new ObservableListAdapter(absSpinner.getContext(), list, 17367048, 17367049, 0));
                return;
            }
        }
        absSpinner.setAdapter(null);
    }
}
