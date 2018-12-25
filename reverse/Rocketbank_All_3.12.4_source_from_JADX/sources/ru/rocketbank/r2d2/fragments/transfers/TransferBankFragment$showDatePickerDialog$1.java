package ru.rocketbank.r2d2.fragments.transfers;

import android.app.DatePickerDialog.OnDateSetListener;
import android.widget.DatePicker;
import ru.rocketbank.r2d2.fragments.transfers.BudgetDate.Date;

/* compiled from: TransferBankFragment.kt */
final class TransferBankFragment$showDatePickerDialog$1 implements OnDateSetListener {
    final /* synthetic */ TransferBankFragment this$0;

    TransferBankFragment$showDatePickerDialog$1(TransferBankFragment transferBankFragment) {
        this.this$0 = transferBankFragment;
    }

    public final void onDateSet(DatePicker datePicker, int i, int i2, int i3) {
        datePicker = this.this$0.budgetViewModel;
        Date date = new Date();
        date.setYear(Integer.valueOf(i));
        date.setMonth(Integer.valueOf(i2));
        date.setDay(Integer.valueOf(i3));
        datePicker.setTax_period_date(date);
    }
}
