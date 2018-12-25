package ru.rocketbank.r2d2.payment;

import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.app.Dialog;
import android.app.TimePickerDialog;
import android.app.TimePickerDialog.OnTimeSetListener;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.format.DateFormat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.DatePicker;
import android.widget.FrameLayout;
import android.widget.TimePicker;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import ru.rocketbank.core.model.provider.ProviderField;
import ru.rocketbank.core.utils.MonthNames;
import ru.rocketbank.core.widgets.RocketTextView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.payment.IPaymentFieldWidget.OnPaymentFieldChangedListener;
import ru.rocketbank.r2d2.payment.MonthYearPickerDialogFragment.OnMonthYearSelectedListener;

public class RocketDatePaymentWidget extends FrameLayout implements IPaymentFieldWidget {
    private MonthYearPickerDialogFragment _dialog;
    private String _format;
    private FragmentManager _fragmentManager;
    private OnPaymentFieldChangedListener _listener;
    private Calendar calendar;
    private ProviderField providerField;
    private RocketTextView textViewDate;
    private RocketTextView textViewLabel;
    private RocketTextView textViewTime;

    /* renamed from: ru.rocketbank.r2d2.payment.RocketDatePaymentWidget$1 */
    class C16021 implements OnClickListener {
        C16021() {
        }

        public void onClick(View view) {
            RocketDatePaymentWidget.this.onDateClick(view);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.payment.RocketDatePaymentWidget$2 */
    class C16032 implements OnClickListener {
        C16032() {
        }

        public void onClick(View view) {
            RocketDatePaymentWidget.this.onTimeClick(view);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.payment.RocketDatePaymentWidget$4 */
    class C16044 implements OnDateSetListener {
        C16044() {
        }

        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            RocketDatePaymentWidget.this.setValue(i, i2, i3);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.payment.RocketDatePaymentWidget$5 */
    class C16055 implements OnTimeSetListener {
        C16055() {
        }

        public void onTimeSet(TimePicker timePicker, int i, int i2) {
            RocketDatePaymentWidget.this.setTime(i, i2);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.payment.RocketDatePaymentWidget$3 */
    class C16853 implements OnMonthYearSelectedListener {
        C16853() {
        }

        public void onMonthYearSelected(int i, int i2, int i3) {
            RocketDatePaymentWidget.this.setValue(i, i2, i3);
        }
    }

    public static class DatePickerFragment extends DialogFragment implements OnDateSetListener {
        OnDateSetListener listener;

        public void setListener(OnDateSetListener onDateSetListener) {
            this.listener = onDateSetListener;
        }

        public Dialog onCreateDialog(Bundle bundle) {
            return new DatePickerDialog(getActivity(), this, getArguments().getInt("year"), getArguments().getInt("month"), getArguments().getInt("day"));
        }

        public void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
            if (this.listener != null) {
                this.listener.onDateSet(datePicker, i, i2, i3);
            }
        }
    }

    public static class TimePickerFragment extends DialogFragment implements OnTimeSetListener {
        OnTimeSetListener onTimeSetListener;

        public void setOnTimeSetListener(OnTimeSetListener onTimeSetListener) {
            this.onTimeSetListener = onTimeSetListener;
        }

        public Dialog onCreateDialog(Bundle bundle) {
            return new TimePickerDialog(getActivity(), this, getArguments().getInt("hour"), getArguments().getInt("minute"), DateFormat.is24HourFormat(getActivity()));
        }

        public void onTimeSet(TimePicker timePicker, int i, int i2) {
            if (this.onTimeSetListener != null) {
                this.onTimeSetListener.onTimeSet(timePicker, i, i2);
            }
        }
    }

    public void clearError() {
    }

    public boolean isValid() {
        return true;
    }

    public void setError(String str) {
    }

    public void setValue(String str) {
    }

    public void showKeyboard() {
    }

    public RocketDatePaymentWidget(FragmentActivity fragmentActivity) {
        this(fragmentActivity, null);
        if (!isInEditMode()) {
            this._fragmentManager = fragmentActivity.getSupportFragmentManager();
        }
    }

    private RocketDatePaymentWidget(Context context) {
        this(context, null);
    }

    private RocketDatePaymentWidget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private RocketDatePaymentWidget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.calendar = Calendar.getInstance();
        if (isInEditMode() == null) {
            inflateLayout(context);
            findWidgets();
            setClickable(true);
            this.textViewDate.setOnClickListener(new C16021());
            this.textViewTime.setOnClickListener(new C16032());
            this._dialog = new MonthYearPickerDialogFragment();
        }
    }

    public void setProviderField(ProviderField providerField) {
        this.providerField = providerField;
        this._format = providerField.getDate_format();
        this.textViewLabel.setText(providerField.getLabel());
        int i = 8;
        this.textViewDate.setVisibility(!ProviderField.TIME.equalsIgnoreCase(providerField.getKeyboard_kind()) ? 0 : 8);
        RocketTextView rocketTextView = this.textViewTime;
        if (ProviderField.TIME.equalsIgnoreCase(providerField.getKeyboard_kind()) || ProviderField.DATETIME.equalsIgnoreCase(providerField.getKeyboard_kind()) != null) {
            i = 0;
        }
        rocketTextView.setVisibility(i);
        setValue(this.calendar.get(1), this.calendar.get(2), this.calendar.get(5));
        setTime(this.calendar.get(10), this.calendar.get(12));
    }

    private void inflateLayout(Context context) {
        LayoutInflater.from(context).inflate(C0859R.layout.widget_rocket_textview_spinner, this, true);
    }

    private void findWidgets() {
        this.textViewDate = (RocketTextView) findViewById(C0859R.id.textViewDate);
        this.textViewTime = (RocketTextView) findViewById(C0859R.id.textViewTime);
        this.textViewLabel = (RocketTextView) findViewById(C0859R.id.textViewLabel);
    }

    public void setValue(int i, int i2, int i3) {
        this.calendar.set(2, i2);
        this.calendar.set(1, i);
        this.calendar.set(5, i3);
        if (!ProviderField.DATETIME.equalsIgnoreCase(this.providerField.getKeyboard_kind())) {
            if (!ProviderField.DATE.equalsIgnoreCase(this.providerField.getKeyboard_kind())) {
                this.textViewDate.setText(String.format("%s %04d", new Object[]{MonthNames.INSTANCE.getNAMES()[i2], Integer.valueOf(i)}));
                if (this._listener != 0) {
                    this._listener.onPaymentFieldChanged(this.providerField, this);
                }
            }
        }
        this.textViewDate.setText(String.format("%d %s %04d", new Object[]{Integer.valueOf(i3), MonthNames.INSTANCE.getNAMES()[i2], Integer.valueOf(i)}));
        if (this._listener != 0) {
            this._listener.onPaymentFieldChanged(this.providerField, this);
        }
    }

    private void setTime(int i, int i2) {
        this.textViewTime.setText(String.format("%02d:%02d", new Object[]{Integer.valueOf(i), Integer.valueOf(i2)}));
        if (this._listener != 0) {
            this._listener.onPaymentFieldChanged(this.providerField, this);
        }
    }

    public int getMonth() {
        return this.calendar.get(2);
    }

    public int getYear() {
        return this.calendar.get(1);
    }

    public String getValueAsString() {
        return new SimpleDateFormat(this._format, new Locale("ru", "ru")).format(this.calendar.getTime());
    }

    public void setOnPaymentFieldChangedListener(OnPaymentFieldChangedListener onPaymentFieldChangedListener) {
        this._listener = onPaymentFieldChangedListener;
    }

    public String getParameterValue() {
        return getValueAsString();
    }

    public void onDateClick(View view) {
        DatePickerFragment datePickerFragment;
        view = new Bundle();
        int i = 1;
        view.putInt("year", this.calendar.get(1));
        view.putInt("month", this.calendar.get(2));
        view.putInt("day", this.calendar.get(5));
        String keyboard_kind = this.providerField.getKeyboard_kind();
        int hashCode = keyboard_kind.hashCode();
        if (hashCode != -2027563478) {
            if (hashCode != 3076014) {
                if (hashCode == 1793702779) {
                    if (keyboard_kind.equals(ProviderField.DATETIME)) {
                        switch (i) {
                            case 0:
                                this._dialog.setOnMonthYearSelectedListener(new C16853());
                                this._dialog.setArguments(view);
                                this._dialog.show(this._fragmentManager, null);
                                return;
                            case 1:
                            case 2:
                                datePickerFragment = new DatePickerFragment();
                                datePickerFragment.setArguments(view);
                                datePickerFragment.setListener(new C16044());
                                datePickerFragment.show(this._fragmentManager, "datePicker");
                                break;
                            default:
                                break;
                        }
                    }
                }
            } else if (keyboard_kind.equals(ProviderField.DATE)) {
                i = 2;
                switch (i) {
                    case 0:
                        this._dialog.setOnMonthYearSelectedListener(new C16853());
                        this._dialog.setArguments(view);
                        this._dialog.show(this._fragmentManager, null);
                        return;
                    case 1:
                    case 2:
                        datePickerFragment = new DatePickerFragment();
                        datePickerFragment.setArguments(view);
                        datePickerFragment.setListener(new C16044());
                        datePickerFragment.show(this._fragmentManager, "datePicker");
                        break;
                    default:
                        break;
                }
            }
        } else if (keyboard_kind.equals(ProviderField.SHORTDATE)) {
            i = 0;
            switch (i) {
                case 0:
                    this._dialog.setOnMonthYearSelectedListener(new C16853());
                    this._dialog.setArguments(view);
                    this._dialog.show(this._fragmentManager, null);
                    return;
                case 1:
                case 2:
                    datePickerFragment = new DatePickerFragment();
                    datePickerFragment.setArguments(view);
                    datePickerFragment.setListener(new C16044());
                    datePickerFragment.show(this._fragmentManager, "datePicker");
                    break;
                default:
                    break;
            }
        }
        i = -1;
        switch (i) {
            case 0:
                this._dialog.setOnMonthYearSelectedListener(new C16853());
                this._dialog.setArguments(view);
                this._dialog.show(this._fragmentManager, null);
                return;
            case 1:
            case 2:
                datePickerFragment = new DatePickerFragment();
                datePickerFragment.setArguments(view);
                datePickerFragment.setListener(new C16044());
                datePickerFragment.show(this._fragmentManager, "datePicker");
                break;
            default:
                break;
        }
    }

    public void onTimeClick(View view) {
        view = new Bundle();
        view.putInt("hour", this.calendar.get(10));
        view.putInt("minute", this.calendar.get(12));
        TimePickerFragment timePickerFragment = new TimePickerFragment();
        timePickerFragment.setArguments(view);
        timePickerFragment.setOnTimeSetListener(new C16055());
        timePickerFragment.show(this._fragmentManager, "timePicker");
    }
}
