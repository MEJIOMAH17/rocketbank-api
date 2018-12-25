package ru.rocketbank.core.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.NumberPicker;
import android.widget.NumberPicker.OnValueChangeListener;
import java.util.Calendar;
import ru.rocketbank.core.utils.MonthNames;
import ru.rocketbank.r2d2.C0859R;

public class MonthYearPicker extends FrameLayout implements OnValueChangeListener {
    private int _month;
    private final NumberPicker _pickerMonth = ((NumberPicker) findViewById(C0859R.id.month));
    private final NumberPicker _pickerYear;
    private int _year;

    public MonthYearPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(C0859R.layout.month_year_picker, this, true);
        context = Calendar.getInstance();
        this._month = context.get(2);
        this._pickerMonth.setDisplayedValues(MonthNames.INSTANCE.getNAMES());
        this._pickerMonth.setMinValue(1);
        this._pickerMonth.setMaxValue(12);
        this._pickerMonth.setValue(this._month);
        this._pickerMonth.setOnValueChangedListener(this);
        this._year = context.get(1);
        context = this._year - 100;
        attributeSet = this._year + 100;
        this._pickerYear = (NumberPicker) findViewById(C0859R.id.year);
        this._pickerYear.setMinValue(context);
        this._pickerYear.setMaxValue(attributeSet);
        this._pickerYear.setValue(this._year);
        this._pickerYear.setOnValueChangedListener(this);
    }

    public final int getYear() {
        return this._year;
    }

    public final int getMonth() {
        return this._month;
    }

    public final void setValue(int i, int i2) {
        this._month = i;
        this._year = i2;
        this._pickerYear.setValue(this._year);
        this._pickerMonth.setValue(this._month);
    }

    public void onValueChange(NumberPicker numberPicker, int i, int i2) {
        if (numberPicker == this._pickerMonth) {
            this._month = i2;
            return;
        }
        if (numberPicker == this._pickerYear) {
            this._year = i2;
        }
    }
}
