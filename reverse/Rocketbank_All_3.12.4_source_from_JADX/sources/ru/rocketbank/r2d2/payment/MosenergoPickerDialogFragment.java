package ru.rocketbank.r2d2.payment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import ru.rocketbank.core.model.provider.ProviderValues;
import ru.rocketbank.core.widgets.MosenergoPickerDialog;

public class MosenergoPickerDialogFragment extends DialogFragment {
    private ProviderValues _fields;
    private OnMosenergoSelectedListener _listener;

    public interface OnMosenergoSelectedListener {
        void onMosenergoSelected(int i);
    }

    public void setOnMosenergoSelectedListener(OnMosenergoSelectedListener onMosenergoSelectedListener) {
        this._listener = onMosenergoSelectedListener;
    }

    public Dialog onCreateDialog(Bundle bundle) {
        bundle = new MosenergoPickerDialog(getActivity());
        bundle.setTitle("Выбор значения");
        bundle.setFields(this._fields);
        bundle.setIndex(getArguments().getInt("index"));
        bundle.setButton(-1, "Выбрать", new OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int i) {
                if (MosenergoPickerDialogFragment.this._listener != null) {
                    MosenergoPickerDialogFragment.this._listener.onMosenergoSelected(bundle.getIndex());
                }
            }
        });
        return bundle;
    }

    public void setFields(ProviderValues providerValues) {
        this._fields = providerValues;
    }
}
