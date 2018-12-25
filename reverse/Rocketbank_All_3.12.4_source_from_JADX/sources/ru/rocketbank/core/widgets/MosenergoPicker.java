package ru.rocketbank.core.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.NumberPicker;
import ru.rocketbank.core.model.provider.ProviderValues;
import ru.rocketbank.r2d2.C0859R;

public class MosenergoPicker extends FrameLayout {
    private ProviderValues _fields;
    private final NumberPicker _numberPicker = ((NumberPicker) findViewById(C0859R.id.mosenergo));

    public MosenergoPicker(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(C0859R.layout.mosenergo_picker, this, true);
    }

    public final void setFields(ProviderValues providerValues) {
        this._fields = providerValues;
        this._numberPicker.setMinValue(0);
        this._numberPicker.setMaxValue(this._fields.values.size() - 1);
        this._numberPicker.setDisplayedValues((String[]) this._fields.labels.toArray(new String[this._fields.labels.size()]));
        this._numberPicker.setValue(0);
    }

    public final int getIndex() {
        return this._numberPicker.getValue();
    }

    public final void setIndex(int i) {
        this._numberPicker.setValue(i);
    }
}
