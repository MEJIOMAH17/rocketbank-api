package ru.rocketbank.r2d2.payment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import ru.rocketbank.core.widgets.MonthYearPickerDialog;

public class MonthYearPickerDialogFragment extends DialogFragment {
    private OnMonthYearSelectedListener _listener;

    public interface OnMonthYearSelectedListener {
        void onMonthYearSelected(int i, int i2, int i3);
    }

    public Dialog onCreateDialog(Bundle bundle) {
        bundle = new MonthYearPickerDialog(getActivity());
        bundle.setTitle("Выбор даты");
        bundle.setButton(-1, "Выбрать", new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                if (MonthYearPickerDialogFragment.this._listener != null) {
                    MonthYearPickerDialogFragment.this._listener.onMonthYearSelected(bundle.getYear(), bundle.getMonth() - 1, 1);
                }
            }
        });
        bundle.setValue(getArguments().getInt("month") + 1, getArguments().getInt("year"));
        return bundle;
    }

    public void setOnMonthYearSelectedListener(OnMonthYearSelectedListener onMonthYearSelectedListener) {
        this._listener = onMonthYearSelectedListener;
    }
}
