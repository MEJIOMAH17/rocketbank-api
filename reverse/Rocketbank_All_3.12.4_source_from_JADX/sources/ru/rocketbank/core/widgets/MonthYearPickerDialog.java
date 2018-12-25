package ru.rocketbank.core.widgets;

import android.app.AlertDialog;
import android.content.Context;
import android.view.LayoutInflater;
import ru.rocketbank.r2d2.C0859R;

public final class MonthYearPickerDialog extends AlertDialog {
    private final MonthYearPicker _picker;

    public MonthYearPickerDialog(Context context) {
        super(context);
        context = LayoutInflater.from(context).inflate(C0859R.layout.month_year_picker_dialog, null);
        setView(context);
        this._picker = (MonthYearPicker) context.findViewById(C0859R.id.month_year_picker);
    }

    public final int getYear() {
        return this._picker.getYear();
    }

    public final int getMonth() {
        return this._picker.getMonth();
    }

    public final void setValue(int i, int i2) {
        this._picker.setValue(i, i2);
    }
}
